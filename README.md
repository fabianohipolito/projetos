## Devops

O objetivo deste repositorio é criação de uma infraestrutura com praticas Devops.


| Máquina             | Endereço      | Papéis                               |
|---------------------|---------------|--------------------------------------|
| log.zer0.com        | 172.16.10.10  | Centralizar os logs da infraesrutura |
|                     |               |                                      |
|                     |               |                                      |

## Pré-requisitos

Instalar o [Vagrant](https://www.vagrantup.com/) e o [VirtualBox](https://www.virtualbox.org/).

Instalação
----------
Acessar o diretorio clonado  e executar o camando
```bash
 vagrant up
```
Acessar a VM
```bash
vagrant ssh log
```
## Provisionar o  graylog
Acessar pasta iac e executar o comando

```bash
ansible-playbook -i inventory plabook.yml
```


## Acessando o servidor graylog via navegador
```bash
http://172.16.10.10:9000'
```

```bash
|Login:|admin|
|Senha:|admin|
```

