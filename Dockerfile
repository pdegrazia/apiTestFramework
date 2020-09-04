FROM python:3-alpine

WORKDIR /usr/src/tests

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

ENV PYTHONPATH "${PYTHONPATH}:/usr/src/tests/libraries/"

COPY . .

CMD ["python", "--version"]
CMD ["pip", "list"]
CMD ["robot", "./apitests/*"]
#CMD ["echo", "$PYTHONPATH"]
