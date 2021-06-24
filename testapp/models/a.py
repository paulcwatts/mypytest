from django.db import models


class A(models.Model):
    def typetest(self) -> int:
        return self.b_set.get().id
