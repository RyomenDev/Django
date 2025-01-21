# Cors
**CORS (Cross-Origin Resource Sharing)** errors occur when a frontend application running on one domain tries to access resources from a backend running on another domain, and the backend doesn't allow such requests.

To fix CORS errors in a Django project, you can use the Django CORS Headers package. Here's how to set it up:

### 1. Install the Django CORS Headers package
Run the following command to install the required package:

```
pip install django-cors-headers
```

### 2. Add corsheaders to your Installed Apps
In your Django settings.py file, add corsheaders to the INSTALLED_APPS list:

```
INSTALLED_APPS = [
    ...
    'corsheaders',
    ...
]
```

### 3. Add the middleware
Add the CorsMiddleware to the top of the MIDDLEWARE list in settings.py, just after the CommonMiddleware:


```
MIDDLEWARE = [
    ...
    'corsheaders.middleware.CorsMiddleware',
    'django.middleware.common.CommonMiddleware',
    ...
]
```

### 4. Configure CORS settings
In settings.py, configure the CORS policies depending on your requirements:

Allow All Origins (Not Recommended for Production)

**To allow all origins:**
```
CORS_ALLOW_ALL_ORIGINS = True
```

**Allow Specific Origins**

To allow specific origins, use CORS_ALLOWED_ORIGINS:

```
CORS_ALLOWED_ORIGINS = [
    "http://localhost:3000",  # React app running locally
    "https://your-frontend-domain.com",
]
```
**For older Django CORS Headers versions, use CORS_ORIGIN_WHITELIST instead of CORS_ALLOWED_ORIGINS.**

Allow Specific HTTP Methods (Optional)
You can configure which HTTP methods are allowed (GET, POST, etc.):

```
CORS_ALLOW_METHODS = [
    "GET",
    "POST",
    "PUT",
    "PATCH",
    "DELETE",
    "OPTIONS",
]
```
Allow Specific Headers (Optional)
If your frontend sends custom headers, specify them using CORS_ALLOW_HEADERS:

```
CORS_ALLOW_HEADERS = [
    "content-type",
    "authorization",
    ...
]
```

Allow Cookies (Optional)
If your frontend needs to send cookies with cross-origin requests, enable the following:

```
CORS_ALLOW_CREDENTIALS = True
```

### 5. Restart the Django server
Restart your Django development server for the changes to take effect:
```
python manage.py runserver
```
