### Template terraform para automatizar infra em nuvem

##

**Instalando o terraform**:

https://www.terraform.io/downloads

##

**Validando instalação**:

```
$ terraform -v
```

##

**Inicializando terraform**:

```
$ terraform init
```

##

**Validando configuração criada**:

```
$ terraform plan
```

##

**Criando ambiente em nuvem**: `Antes de rodar esse comando é recomendado executar o terraform plan`

```
$ terraform apply
```

##

**Refresh da configuração atual**:

```
$ terraform refresh
```

##

**Visualizando screenshot da configuração atual**:

```
$ terraform show
```

##


**Desfazendo toda a infraestrutura criada**:

*Cuidado: Esse comando remove todas as configurações criadas* 

```
$ terraform destroy
```

##

**Links de referência**:

* https://www.terraform.io/downloads

* https://registry.terraform.io/

* https://docs.aws.amazon.com/pt_br/cli/latest/userguide/getting-started-install.html
