FROM mongo:latest
RUN mkdir /config
WORKDIR /config
COPY wait-for-it.sh .
COPY mongo-setup.js .
COPY mongo-setup.sh .
RUN chmod +x /config/wait-for-it.sh
RUN chmod +x /config/mongo-setup.sh
CMD [ "bash", "-c", "/config/wait-for-it.sh --timeout 30 mongodb1:27017 -- /config/mongo-setup.sh"]