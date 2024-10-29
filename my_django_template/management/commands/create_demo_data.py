from django.core.management.base import BaseCommand
from django.db import transaction

# from my_django_template.models import MyTable


class Command(BaseCommand):
    help = "Create example data"

    def handle(self, *args, **options):
        data = [
            ("cookies", ),
            ("are", ),
            ("great", ),
        ]

        with transaction.atomic():
            for x in data:
                i = MyTable()
                i.name = x[0]
                i.save()
