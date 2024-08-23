FROM python:latest
ENV PYTHONUNBUFFERED 1
ENV PIP_ROOT_USER_ACTION=ignore
WORKDIR /config
COPY requirements.txt /config/requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
COPY . /config