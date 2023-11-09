## Домашняя работа № 6.

testapp_IP = 158.160.122.236
testapp_port = 9292

### Самостоятельное задание 1
*Подготовить набор скриптов для подготовки ВМ, установки `MongoDB` и запуска приложения*

Подготовлены скрипты
- `install_ruby.sh`
- `install_mongodb.sh`
- `deploy.sh`

### Дополнительное задание 1.1
*В качестве доп. задания используя созданные ранее скрипты создать `startup
script` , который будет запускаться при создании инстанса и настраивать ВМ*

Подготовлен конфигурационный файл `yc-script.yml`. В нем описано:
- создание пользователя `yc-user` с корректно конфигурацией
- обновление пакетной базы
- установка пакетов
- настройка и запуск приложения.

Для создания ВМ в Яндекс облаке использователась команда
```bash
yc compute instance create \
  --name reddit-app \
  --hostname reddit-app \
  --memory=4 \
  --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1604-lts,size=10GB \
  --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4,nat-address=158.160.122.236 \
  --zone ru-central1-a \
  --metadata serial-port-enable=1 \
  --metadata-from-file user-data=yc-script.yml
```
