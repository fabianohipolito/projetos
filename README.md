## Devops

O objetivo deste repositorio é criação de uma infraestrutura com praticas Devops.


| Máquina             | Endereço      | Papéis                             |
|---------------------|---------------|------------------------------------|
| server1.zer0.com    | 172.16.10.10  | Em desenvolvimento                 |
| graylog.zer0.com    | 172.16.10.20  | Monitorar os logs da infraestrutura|
|                     |               |                                    |

## Pré-requisitos

Instalar o [Vagrant](https://www.vagrantup.com/) e o [VirtualBox](https://www.virtualbox.org/).

Instalação
----------
Acessar o diretorio iac e execute
```bash
vagrant up 
```
## Para acessar o servidor graylog
```bash
vagrant ssh log
```
## Acessando o servidor graylog via navegador
```
http://172.16.10.20:9000
```

```bash
Login: admin
Senha: admin
```

