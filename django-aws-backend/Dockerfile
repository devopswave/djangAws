FROM python:slim-bullseye

# Open http port
EXPOSE 8000

# ENV PYTHONUNBUFFERED 1
# ENV PYTHONDONTWRITEBYTECODE 1
# ENV DEBIAN_FRONTEND noninteractive

# Moving application files
WORKDIR /app
COPY . /app

# Install pip and gunicorn web server
RUN pip install --no-cache-dir --upgrade pip
RUN pip install gunicorn==20.1.0

# Install requirements.txt
COPY requirements.txt /
RUN pip install --no-cache-dir -r /requirements.txt

# Collect static files
RUN python manage.py makemigrations
RUN python manage.py migrate

RUN python manage.py collectstatic --noinput

# Command to run the application
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
