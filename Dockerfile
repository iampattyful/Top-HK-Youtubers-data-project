FROM python:3.10

WORKDIR /youtubedataapi

COPY requirements.txt ./
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install --upgrade google-api-python-client google-auth-httplib2 google-auth-oauthlib

COPY . .

# CMD [ "python", "main.py" ] 