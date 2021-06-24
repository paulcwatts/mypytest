from django.db import models


class B(models.Model):
    a = models.ForeignKey("testapp.A", on_delete=models.CASCADE)

    explicit: int = 5
