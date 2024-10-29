from django.db import models

class MyTable(models.Model):
    name = models.CharField(
        "Name",
        max_length=255, unique=True,
        help_text="Some help")

    def __str__(self):
        # This makes this individual to be displayed by name instead of
        # using "Individual object (3)" in Django administration.
        return self.name
