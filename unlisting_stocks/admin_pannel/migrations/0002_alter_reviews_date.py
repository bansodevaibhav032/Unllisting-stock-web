# Generated by Django 4.0.1 on 2022-01-30 09:10

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('admin_pannel', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='reviews',
            name='date',
            field=models.CharField(default=datetime.datetime(2022, 1, 30, 14, 40, 2, 596000), max_length=23),
        ),
    ]
