#!/bin/bash
PARENTDIR=~
mkdir ${PARENTDIR}/web/public
mkdir ${PARENTDIR}/web/public/img
mkdir ${PARENTDIR}/web/public/css
mkdir ${PARENTDIR}/web/public/js
mkdir ${PARENTDIR}/web/uploads
mkdir ${PARENTDIR}/web/etc
cp ${PARENTDIR}/web/src/nginx.conf ${PARENTDIR}/web/etc/nginx.conf 
sudo ln -s ${PARENTDIR}/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
cp ${PARENTDIR}/web/src/hello.py ${PARENTDIR}/web/etc/hello.py
sudo ln -s ${PARENTDIR}/web/etc/hello.py /etc/gunicorn.d/hello.py
