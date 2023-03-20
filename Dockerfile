FROM python:3.8-slim-buster


WORKDIR /app

COPY requirements.txt /app


RUN pip3 install -r requirements.txt

COPY . /app

EXPOSE 3500

ENTRYPOINT ["python3"]
CMD ["app.py"]

# FROM builder as dev-envs

# RUN <<EOF
# apk update
# apk add git
# EOF

# RUN <<EOF
# addgroup -S docker
# adduser -S --shell /bin/bash --ingroup docker vscode
# EOF
# # install Docker tools (cli, buildx, compose)
# COPY --from=gloursdocker/docker / /
