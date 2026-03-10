from django.contrib import admin
from django.utils.html import format_html
from adminsortable2.admin import SortableAdminMixin
from easy_thumbnails.files import get_thumbnailer

from .models import Slide


@admin.register(Slide)
class SlideAdmin(SortableAdminMixin, admin.ModelAdmin):
    """Администрирование слайдов с drag & drop сортировкой."""

    list_display = ('order', 'preview_image', 'title', 'is_active', 'created_at')
    list_display_links = ('title',)
    list_editable = ('is_active',)
    list_per_page = 20
    search_fields = ('title',)
    list_filter = ('is_active',)

    fieldsets = (
        ('Основная информация', {
            'fields': ('title', 'image', 'is_active'),
        }),
    )

    def preview_image(self, obj):
        """Отображает миниатюру изображения в списке."""
        if obj.image:
            try:
                thumbnailer = get_thumbnailer(obj.image)
                thumb = thumbnailer.get_thumbnail({'size': (80, 60), 'crop': True})
                return format_html(
                    '<img src="{}" width="80" height="60" '
                    'style="object-fit:cover; border-radius:4px; '
                    'border:1px solid #ddd;" />',
                    thumb.url,
                )
            except Exception:
                return format_html(
                    '<span style="color:#999;">Ошибка превью</span>'
                )
        return format_html('<span style="color:#999;">—</span>')

    preview_image.short_description = 'Превью'
    preview_image.allow_tags = True


# Настройка заголовков сайта администрирования
admin.site.site_header = 'Космическое агентство — Администрирование'
admin.site.site_title = 'NASA Admin'
admin.site.index_title = 'Управление сайтом'
