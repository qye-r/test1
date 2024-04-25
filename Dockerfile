FROM python:3

RUN apt update && apt upgrade -y
WORKDIR /usr/src/app

COPY start.py .
RUN pwd
RUN ls -l
RUN pip install lingua-language-detector

CMD [ "python", "./start.py" ]

