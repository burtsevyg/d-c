FROM ubuntu:18.04

RUN apt-get update -qq
RUN apt-get -y -qq install cron libltdl7

# Add crontab file in the cron directory
COPY crontab /etc/cron.d/clean-cron
COPY script.sh /script.sh

RUN chmod +x /script.sh

# Give execution rights on the cron job
RUN chmod 0644 /etc/cron.d/clean-cron

RUN ln -sf /proc/1/fd/1 /var/log/cron.log

# Run the command on container startup
CMD ["/bin/bash", "-c", "cron -f"]
