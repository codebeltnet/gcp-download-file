FROM gcr.io/google.com/cloudsdktool/google-cloud-cli:alpine

VOLUME /secrets

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["sh", "/entrypoint.sh"]
