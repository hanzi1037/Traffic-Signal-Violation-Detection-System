# Use an official Python runtime as a parent image
FROM python:3

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Run Project-GUI.py when the container launches
CMD ["python", "Project-GUI.py"]
