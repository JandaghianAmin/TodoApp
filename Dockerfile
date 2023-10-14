FROM python:3
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
RUN mkdir /app
COPY . /app/
WORKDIR /app
# COPY requirements.txt /app/
RUN pip3 install -r requirements.txt
RUN python3 manage.py migrate
# CMD ["python3","manage.py","runserver","0.0.0.0:8000"]
# COPY manage.py /app/
