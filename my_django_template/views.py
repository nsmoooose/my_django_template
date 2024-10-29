from django.http import HttpResponse
from django.template import loader
from .models import MyTable


def index(request):
    rows = MyTable.objects.all()

    template = loader.get_template("my_django_template/index.html")
    context = {
        "table": rows,
    }
    return HttpResponse(template.render(context, request))
