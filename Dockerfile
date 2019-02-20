FROM ubuntu:18.04

RUN apt-get update -qq
RUN apt-get -y -qq install cron libltdl7

# Add crontab file in the cron directory
ADD crontab /etc/cron.d/clean-cron
ADD script.sh /script.sh

RUN chmod +x /script.sh

# Give execution rights on the cron job
RUN chmod 0644 /etc/cron.d/clean-cron

# Create the log file to be able to run tail
RUN mkfifo --mode 0666 /var/log/cron.log

# Run the command on container startup
CMD ["/bin/bash", "-c", "cron && tail -f /var/log/cron.log"]
