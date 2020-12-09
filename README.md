---Чтобы не вводить каждый раз passphrase:

```bash
$ ssh-agent bash
$ ssh-add ~/.ssh/id_rsa
```
-------------------------------------------
Запустить плейбук для всех хостов из инвентори hosts-all:
```bash
ansible-playbook site.yml --ask-pass --ask-become-pass -i hosts-all
```
-------------------------------------------
Запустить плейбук для хостов группы aws_instances из инвентори hosts-all:
```bash
ansible-playbook site.yml --ask-pass --ask-become-pass -i hosts-all -l aws_instances
```
-------------------------------------------
Команда для "одноразового" запуска тестового приложения на хосте с докером:
```bash
git clone https://github.com/OlegAnanyev/flask-nginx-docker/ && cd flask-nginx-docker && docker-compose up --build && cd .. && rm -rf flask-nginx-docker/
```
-------------------------------------------
