from django.db import migrations, models
import django.db.models.deletion
import filer.fields.image


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('filer', '__first__'),
    ]

    operations = [
        migrations.CreateModel(
            name='Slide',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=200, verbose_name='Название')),
                ('order', models.PositiveIntegerField(db_index=True, default=0, verbose_name='Порядок')),
                ('is_active', models.BooleanField(default=True, verbose_name='Активен')),
                ('created_at', models.DateTimeField(auto_now_add=True, verbose_name='Дата создания')),
                ('image', filer.fields.image.FilerImageField(
                    null=True,
                    on_delete=django.db.models.deletion.SET_NULL,
                    related_name='slides',
                    verbose_name='Изображение',
                    to='filer.image',
                )),
            ],
            options={
                'verbose_name': 'Слайд',
                'verbose_name_plural': 'Слайды',
                'ordering': ['order'],
            },
        ),
    ]
