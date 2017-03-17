mkdir home/box/web/public
mkdir home/box/web/public/img
mkdir home/box/web/public/css
mkdir home/box/web/public/js
mkdir home/box/web/uploads
mkdir home/box/web/etc
cp home/box/web/src/nginx.conf home/box/web/etc/nginx.conf 
sudo ln -s home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
