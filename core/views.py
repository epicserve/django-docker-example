from django.views import generic
from django.core.cache import cache


class IndexView(generic.TemplateView):
    template_name = 'index.html'

    def get_context_data(self, **kwargs):
        context = super(IndexView, self).get_context_data(**kwargs)
        context['count'] = cache.get('count', 1)
        cache.set('count', context['count'] + 1)
        return context
