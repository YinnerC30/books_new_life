# Generated by Django 4.1.1 on 2022-10-06 20:15

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('feedback', '0003_alter_comentario_correo_alter_comentario_mensaje'),
    ]

    operations = [
        migrations.AlterField(
            model_name='comentario',
            name='correo',
            field=models.EmailField(max_length=150),
        ),
    ]