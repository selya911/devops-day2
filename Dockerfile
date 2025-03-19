FROM python:3.11

# Set the working directory
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application files
COPY . /app/

# Expose the application port
EXPOSE 5000

# Define the command to run the app
CMD ["python", "app.py"]

