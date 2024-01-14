import os
import django
from io import StringIO
from django.core.management import call_command
from django.test import TestCase, SimpleTestCase


os.environ.setdefault('DJANGO_SETTINGS_MODULE',
                      'test_django_project.mysite.settings')
django.setup()


class DDLCommandSqliteTest(SimpleTestCase):
    databases = {'default'}

    def test_command_output(self):
        with open('test_django_project/tests/ddl_sqlite.sql', 'r') as f:
            expected_ddl = f.read()
        out = StringIO()
        call_command('ddl', stdout=out)
        result = out.getvalue()
        self.assertEqual(expected_ddl, result)


class DDLCommandPostgresTest(SimpleTestCase):
    databases = {'postgres'}

    def test_command_output(self):
        with open('test_django_project/tests/ddl_postgres.sql', 'r') as f:
            expected_ddl = f.read()
        out = StringIO()
        call_command('ddl', stdout=out, db_alias='postgres')
        result = out.getvalue()
        self.assertEqual(expected_ddl, result)


class DDLCommandMysqlTest(SimpleTestCase):
    databases = {'mysql'}

    def test_command_output(self):
        with open('test_django_project/tests/ddl_mysql.sql', 'r') as f:
            expected_ddl = f.read()
        out = StringIO()
        call_command('ddl', stdout=out, db_alias='mysql')
        result = out.getvalue()
        self.assertEqual(expected_ddl, result)
