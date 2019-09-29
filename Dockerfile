# Use the Python Docker Hub Image
FROM python:3 AS AirFinal
MAINTAINER Ryan Bond

# Copy the source to the target working directory
COPY . /var/tmp/
WORKDIR /var/tmp/

# Setup project dependenceies
RUN apt-get update
RUN pip install --no-cache-dir --ignore-installed -r requirements.txt

# Run AirFinal
CMD ["python", "./air_final.py"]

