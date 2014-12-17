# -*- coding: utf-8 -*-

import os



DIRNAME = os.path.dirname(os.path.abspath(__file__))

# Change this to False if you run it in development
DEBUG = True
TEMPLATE_DEBUG = DEBUG

# See https://docs.djangoproject.com/en/1.6/ref/settings/#databases for reference
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': '/data/dndtools.sqlite',
        }
}


# Make this unique, and don't share it with anybody.
SECRET_KEY = 'TODO FILL'

MEDIA_ROOT = os.path.join(DIRNAME, 'static/')

SITE_ID = 1

INTERNAL_IPS = ('0.0.0.0', )

TEMPLATE_DIRS = (
    os.path.join(DIRNAME, 'templates/'),
)
RECAPTCHA_PUBLIC = 'TODO FILL'
RECAPTCHA_PRIVATE = 'TODO FILL'
