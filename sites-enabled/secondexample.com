server {
    listen 80;
    listen [::]:80;

    root /var/www/secondexample.com/html;
    index index.html index.htm;

    server_name secondexample.com www.secondexample.com;

    location / {
        try_files $uri $uri/ =404;
    }
}
