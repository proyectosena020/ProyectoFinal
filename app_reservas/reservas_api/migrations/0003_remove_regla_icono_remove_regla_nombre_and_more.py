# Generated by Django 4.2.1 on 2023-10-26 14:50

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('reservas_api', '0002_alter_sitio_continente'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='regla',
            name='icono',
        ),
        migrations.RemoveField(
            model_name='regla',
            name='nombre',
        ),
        migrations.RemoveField(
            model_name='seguridad',
            name='icono',
        ),
        migrations.RemoveField(
            model_name='seguridad',
            name='nombre',
        ),
        migrations.AddField(
            model_name='seguridad',
            name='descripcion',
            field=models.TextField(blank=True, null=True),
        ),
    ]
