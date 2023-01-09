## Netflix

ALTER ROLE posrgres SET client_encoding TO 'utf8';
ALTER ROLE posrgres SET default_transaction_isolation TO 'read committed';
ALTER ROLE posrgres SET timezone TO 'UTC';
GRANT ALL PRIVILEGES ON DATABASE netflix TO posrgres;


# nginx
sudo ln -s /etc/nginx/sites-available/netflix_nginx /etc/nginx/sites-enabled


# for static
cp -r ./static /var/www && cd /var/www && chmod 755 ./static


