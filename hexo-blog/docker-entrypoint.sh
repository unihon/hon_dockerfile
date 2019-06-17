#!/bin/sh
set -e

BLOG_MODULE_PATH="/root/blog/node_modules"

if [ ! -d $BLOG_MODULE_PATH ]; then
	npm update
fi

exec hexo s
