from django.db import models
from filer.fields.image import FilerImageField


class Slide(models.Model):
    """Слайд для фотогалереи на главной странице."""

    title = models.CharField(
        verbose_name='Название',
        max_length=200,
    )
    image = FilerImageField(
        verbose_name='Изображение',
        on_delete=models.SET_NULL,
        null=True,
        blank=False,
        related_name='slides',
    )
    order = models.PositiveIntegerField(
        verbose_name='Порядок',
        default=0,
        db_index=True,
    )
    is_active = models.BooleanField(
        verbose_name='Активен',
        default=True,
    )
    created_at = models.DateTimeField(
        verbose_name='Дата создания',
        auto_now_add=True,
    )

    class Meta:
        verbose_name = 'Слайд'
        verbose_name_plural = 'Слайды'
        ordering = ['order']

    def __str__(self):
        return self.title
