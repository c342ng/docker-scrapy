FROM python:2.7.12
RUN pip install scrapy mysql-connector redis
RUN mkdir /data/python && echo '#!/bin/sh\n pip list --format=columns' > /data/python/start.sh && chmod +x /data/python/start.sh
CMD ["/data/python/start.sh"]
