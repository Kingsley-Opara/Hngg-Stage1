FROM python:3.9.0-slim

COPY . /web

WORKDIR /web

RUN python -m venv /opt/venv

EXPOSE 8000

RUN /opt/venv/bin/pip install pip --upgrade && \ 
    /opt/venv/bin/pip install -r requirements.txt && \
    chmod +x entrypoint.sh

# RUN chmod +x entrypoint.sh &&

CMD ["/web/entrypoint.sh"]