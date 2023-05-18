FROM python
RUN apt-get update
RUN apt-get -y install python3-pip
RUN pip install flask
COPY index.html /home/app/templates/
COPY conect.py /home/app/
EXPOSE 8080
CMD python3 /home/app/conect.py
