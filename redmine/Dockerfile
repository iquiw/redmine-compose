FROM redmine

RUN apt-get update && apt-get install -y --no-install-recommends ruby-dev gcc make

COPY run-redmine.sh /
RUN chmod +x /run-redmine.sh

ENTRYPOINT ["/run-redmine.sh"]
