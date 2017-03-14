mkdir /home/box/web
mkdir /home/box/web/public
mkdir /home/box/web/public/img
mkdir /home/box/web/public/css
mkdir /home/box/web/public/js
mkdir /home/box/web/uploads
mkdir /home/box/web/etc
cp /home/box/web/nginx.conf /home/box/web/etc/nginx.conf 
ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enables/test.conf
