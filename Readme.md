Proyecto de Terraform con Terragrunt

<img width="321" alt="image" src="https://github.com/rm102030/terraform_eks_cluster/assets/64334369/c6d7fdf3-ebae-4111-8aa3-c24044845189">

Este proyecto trae integrado la creacion del backend de terraform a traves de terragrunt, tambien ejecuta dos ambientes: dev y prod  por separado y tiene un modulo de EC2 

Uso

1. Configure el terragrunt de cada ambiente (dev y prod) con los valores correpondientes
2. Ajuste el terragrunt para que genere el bucket y la tabla DynamoDB 

Ejecute terragrunt init
        terragrunt plan
        terragrunt apply
        terragrunt destroy

Los comandos se deben ejecutar en la "raiz del ambiente" donde esta el archivo terragrunt.hcl

Nota : Importante tener instalado terraform y terragrunt el provider de AWS esta configurado para usar un profile cargue ese profile localmente y lo cambia 
       la ruta es: ~/.aws/credentials


