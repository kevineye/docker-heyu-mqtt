#!/bin/sh

if [ ! -f /etc/heyu/x10.conf ]; then
  cp /etc/heyu.default/* /etc/heyu
  echo "x10config.sample and x10.sched.sample have been copied to your config directory."  1>&2
  echo "Please use them to create x10.conf and x10.sched and re-run." 1>&2
  exit;
fi

heyu engine 1>&2
heyu upload 1>&2
heyu setclock 1>&2

if [ -z "$URL_KEY" ]; then
    export prefix="/"
else
    export prefix="/$URL_KEY/"
fi

exec heyu-mqtt
