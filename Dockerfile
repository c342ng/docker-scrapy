FROM python:2.7.12
RUN pip install scrapy mysql-connector redis
RUN mkdir -p /data/python && echo '#!/bin/sh\n pip list --format=columns' > /data/python/start.sh && chmod +x /data/python/start.sh
CMD ["sh","/data/python/start.sh"]
