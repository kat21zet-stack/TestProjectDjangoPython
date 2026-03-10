$(function () {

  /* ============================================================
     Navbar — add scrolled class
  ============================================================ */
  $(window).on('scroll', function () {
    if ($(this).scrollTop() > 40) {
      $('#mainNav').addClass('scrolled');
    } else {
      $('#mainNav').removeClass('scrolled');
    }
  });

  /* ============================================================
     Slick Slider — Slider Syncing
     http://kenwheeler.github.io/slick/ → Slider Syncing
  ============================================================ */
  if ($('.slider-for').length) {

    /* Main (big) slider */
    $('.slider-for').slick({
      slidesToShow: 1,
      slidesToScroll: 1,
      arrows: false,
      fade: true,
      speed: 400,
      asNavFor: '.slider-nav',
      lazyLoad: 'ondemand',
      adaptiveHeight: false,
    });

    /* Thumbnail navigation slider */
    $('.slider-nav').slick({
      slidesToShow: 4,
      slidesToScroll: 2,
      asNavFor: '.slider-for',
      dots: false,
      arrows: true,
      focusOnSelect: true,
      centerMode: false,
      responsive: [
        { breakpoint: 992, settings: { slidesToShow: 4 } },
        { breakpoint: 768, settings: { slidesToShow: 3 } },
        { breakpoint: 480, settings: { slidesToShow: 2 } },
      ],
    });
  }

  /* ============================================================
     Lightbox — fullscreen gallery on main slide click
  ============================================================ */
  var lightboxImages = [];  // [{src, title}, ...]
  var lightboxIndex  = 0;

  /* Collect all slide data */
  function buildLightboxData() {
    lightboxImages = [];
    $('.slide-main-item').each(function () {
      var $img = $(this).find('img');
      lightboxImages.push({
        src:   $img.data('fullsrc') || $img.attr('src'),
        title: $img.data('title')   || $img.attr('alt') || '',
      });
    });
  }

  function openLightbox(index) {
    if (!lightboxImages.length) buildLightboxData();
    lightboxIndex = ((index % lightboxImages.length) + lightboxImages.length) % lightboxImages.length;
    renderLightbox();
    $('#lightbox').addClass('active');
    $('body').css('overflow', 'hidden');
  }

  function closeLightbox() {
    $('#lightbox').removeClass('active');
    $('body').css('overflow', '');
  }

  function renderLightbox() {
    var item = lightboxImages[lightboxIndex];
    $('#lightboxImg').attr({ src: item.src, alt: item.title });
    $('#lightboxCaption').text(item.title);
  }

  /* Open on main slide image click */
  $(document).on('click', '.slide-main-img', function () {
    buildLightboxData();
    var currentSlide = $('.slider-for').slick('slickCurrentSlide');
    openLightbox(currentSlide);
  });

  /* Navigation */
  $('#lightboxClose').on('click', closeLightbox);

  $('#lightboxPrev').on('click', function () {
    lightboxIndex--;
    if (lightboxIndex < 0) lightboxIndex = lightboxImages.length - 1;
    renderLightbox();
  });

  $('#lightboxNext').on('click', function () {
    lightboxIndex++;
    if (lightboxIndex >= lightboxImages.length) lightboxIndex = 0;
    renderLightbox();
  });

  /* Close on overlay click */
  $('#lightbox').on('click', function (e) {
    if ($(e.target).is('#lightbox')) closeLightbox();
  });

  /* Keyboard navigation */
  $(document).on('keydown', function (e) {
    if (!$('#lightbox').hasClass('active')) return;
    switch (e.key) {
      case 'Escape':    closeLightbox(); break;
      case 'ArrowLeft': $('#lightboxPrev').trigger('click'); break;
      case 'ArrowRight': $('#lightboxNext').trigger('click'); break;
    }
  });

  /* Touch swipe in lightbox */
  var touchStartX = 0;

  $('#lightbox').on('touchstart', function (e) {
    touchStartX = e.originalEvent.changedTouches[0].screenX;
  });

  $('#lightbox').on('touchend', function (e) {
    var delta = e.originalEvent.changedTouches[0].screenX - touchStartX;
    if (Math.abs(delta) > 50) {
      if (delta < 0) { $('#lightboxNext').trigger('click'); }
      else           { $('#lightboxPrev').trigger('click'); }
    }
  });

});
