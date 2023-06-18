# DocServerUI
Графический интерфейс Сервера Документации

docker build -t gui .

docker run -p 8000:80 gui

docker run -p 8000:80 -v /var/docker/share:/usr/share/share/ gui



http://"IP-server":8000/share/