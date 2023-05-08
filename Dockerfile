# Use a base image with Python
FROM python:3.9

# Set the working directory
WORKDIR /app

# Copy project files
COPY . /app

# Install dependencies
RUN  pip install --upgrade pip
RUN apt-get update
RUN pip install --no-cache-dir -r requirements.txt

CMD [ "python", "main.py" ]