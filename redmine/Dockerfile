FROM iquiw/redmica:2.0.0-passenger

RUN apt-get update && apt-get install -y --no-install-recommends gcc make

COPY run-redmine.sh /
RUN chmod +x /run-redmine.sh

ENTRYPOINT ["/run-redmine.sh"]
