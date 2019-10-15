import pytest
from django.urls import resolve

from .secnet.views import home


def test_root_url_resolves_to_home_page_view(self):
    found = resolve('/')
    self.assertEqual(found.func, home)

