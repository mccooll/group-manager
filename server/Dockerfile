FROM python:3
WORKDIR /app
RUN pip install flask
RUN pip install flask-mysql
RUN pip install cryptography
RUN pip install flask-cors
COPY . .
CMD ["flask", "run", "--host=0.0.0.0"]