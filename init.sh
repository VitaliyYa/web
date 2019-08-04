sudo rm -rf /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart
sudo ln -sf /home/box/web/etc/hello.py /etc/gunicorn.d/hello.py
sudo /etc/init.d/gunicorn restart
gunicorn -с /etc/gunicorn.d/hello.py hello
#sudo ln -sf /home/box/web/etc/gunicorn-django.conf /etc/gunicorn.d/test-django
