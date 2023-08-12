FROM python:3.9
RUN mkdir project
WORKDIR /project
COPY . /project
RUN pip install django==3.2
EXPOSE 8001
RUN python3 manage.py migrate
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8001"]

