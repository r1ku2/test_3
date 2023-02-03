#FROM python:3.8-slim-buster
FROM python:3.8

# Keeps Python from generating .pyc files in the container
ENV PYTHONDONTWRITEBYTECODE=1

# Turns off buffering for easier container logging
ENV PYTHONUNBUFFERED=1

# for python:fullpackage
RUN apt-get update && apt-get upgrade -y

WORKDIR /app

# Install requirements
COPY requirements.txt .
#RUN pip install -r requirements.txt
RUN python -m pip install -r requirements.txt

# Copy necessary files
COPY . /app


# Launch app when container is run
CMD ["python", "python_test_hoge.py"]
