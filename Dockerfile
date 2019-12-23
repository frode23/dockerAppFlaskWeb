FROM python:3.5
RUN pip install Flask==0.11.1
RUN apt-get update && apt-get install -y vim
RUN useradd -ms /bin/bash admin
USER admin
WORKDIR /app
COPY app /app
CMD ["python", "app.py"]