FROM alpine
MAINTAINER iaroki
RUN adduser -D iaroki
RUN apk --update --no-cache add git python3
RUN cd /home/iaroki && git clone https://github.com/iaroki/psyanimal.git && cd psyanimal && pip3 install -r requirements.txt
RUN chown -R iaroki:iaroki /home/iaroki/psyanimal
USER iaroki
EXPOSE 9999
WORKDIR /home/iaroki/psyanimal
CMD ["python3", "psyanimal.py"]
