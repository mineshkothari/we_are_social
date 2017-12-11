from base import *
import os
import dj_database_url
import settings


DEBUG = False

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': os.path.join(BASE_DIR, 'db.sqlite3'),
    }
}

# Stripe environment variables
STRIPE_PUBLISHABLE = os.getenv('STRIPE_PUBLISHABLE', 'pk_test_y7y3IwLVYDflbMu6pwSupNcZ')
STRIPE_SECRET = os.getenv('STRIPE_SECRET', 'sk_test_knqfSBZnYj97XjSodWc6fxot')


# PayPal Settings
PAYPAL_NOTIFY_URL = 'http://3d634082.ngrok.io/a-very-hard-to-guess-url/'
PAYPAL_RECEIVER_EMAIL = 'minesh_mk@hotmail.co.uk'


SITE_URL = 'mk-social-staging.herokuapp.com'
ALLOWED_HOSTS.append('mk-social-staging.herokuapp.com')


# Log DEBUG information to the console
LOGGING = {
    'version': 1,
    'disable_existing_loggers': False,
    'handlers': {
        'console': {
            'class': 'logging.StreamHandler',
        },
    },
    'loggers': {
        'django': {
            'handlers': ['console'],
            'level': os.getenv('DJANGO_LOG_LEVEL', 'DEBUG'),
        },
    },
}

