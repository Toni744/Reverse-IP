# Use the official python base image
From python:3.9-slim

# set working directory in the container
WORKDIR /app

# copy the requirements file into the container
COPY requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the app code into the container
 COPY . . 

# Expose the port that the app will run on
EXPOSE 5000

# Define command to run the application
CMD ["python", "app.py"]
