from django.test import TestCase
from django.shortcuts import render_to_response
from .models import Subject


class SubjectPageTest(TestCase):
    def test_check_content_is_correct(self):
        subject_page = self.client.get('/forum/')
        self.assertTemplateUsed(subject_page, "forum.html")
        subject_page_template_output = render_to_response("forum.html",
                                                          {'subjects': Subject.objects.all()}).content
        self.assertEqual(subject_page.content, subject_page_template_output)
