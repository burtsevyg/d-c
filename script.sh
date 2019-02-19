echo "===================================================" >> /var/log/cron.log 2>&1
echo "$(date): executed script" >> /var/log/cron.log 2>&1
docker system prune --all -f >> /var/log/cron.log 2>&1
echo "" >> /var/log/cron.log 2>&1
echo "" >> /var/log/cron.log 2>&1
echo "" >> /var/log/cron.log 2>&1