# oksidant1_infra
oksidant1 Infra repository

## Домашняя работа № 5.

### Самостоятельное задание
*Исследовать способ подключения к someinternalhost в одну команду из вашего
рабочего устройства*

Для этого необходимо использовать ключ `-J` команды `ssh`

```bash
ssh -J appuser@158.160.44.56 appuser@10.128.0.9
```

### Дополнительное задание
*Предложить вариант решения для подключения из консоли при помощи команды
вида ssh someinternalhost из локальной консоли рабочего устройства, чтобы
подключение выполнялось по алиасу someinternalhost.*

Необходимо создать в домашней директории пользователя файл `.ssh/config`
В файл внести информацию, о пользователи и хосте.
```bash
Host 10.128.0.9
        User appuser
        ProxyJump appuser@158.160.44.56
```

После этого возможно подключение командой
```
ssh 10.128.0.9
```

Чтобы подключение выполнялось по алиасу someinternalhost необходимо создать файл (если файл существует добавить в конец) и добавить следующую строку
```
alias someinternalhost='ssh 10.128.0.9'
```

После этого будет возможно подключение по алиасу `someinternalhost`
```
oks@Egupov-PC:~$ someinternalhost
Welcome to Ubuntu 20.04.6 LTS (GNU/Linux 5.4.0-165-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage
Failed to connect to https://changelogs.ubuntu.com/meta-release-lts. Check your Internet connection or proxy settings

Last login: Mon Oct 30 13:19:12 2023 from 10.128.0.23
appuser@someinternalhost:~$ logout
```
