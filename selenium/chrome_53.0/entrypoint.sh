#!/bin/bash

NODE_PORT=${NODE_PORT:-4444}
CHROMEDRIVER_PATH="/usr/lib/selenium/chromedriver "
CHROMEDRIVER_ARGS="--port=$NODE_PORT --whitelisted-ips=""  --url-base=wd/hub --verbose"

echo "Starting Chromedriver on port $NODE_PORT..."
xvfb-run -a -s '-screen 0 1280x1600x24 -noreset' $CHROMEDRIVER_PATH $CHROMEDRIVER_ARGS
