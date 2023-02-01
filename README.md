## Prova tecnica

# Descrizione

<p>In questo repo ci sono delle istruzioni per creare una nuova applicazione che andrà live il
mese prossimo!
In questo repo c'è il codigo per configurare wordpress utilizzando l'infrastruttura AWS. Utilizziamo terraform per il provisioning dell'infrastruttura. Il codice utilizza e crea i seguenti servizi AWS.</p>

- EC2 instance\
- Autoscaling group\
- VPC - Subnets
.............

# Requisiti
Conto AWS\
AWS Cli\
Terminal\
Terraform installato

# Iniziare
cd /to/your/project/root/parent/directory \
git clone https://github.com/EnriqueDegiorgis/wordpresswithTerraform.git \
cd wordpresswithTerraform\
Modificare le variabili nel file root vars.tf in base alle proprie esigenze. Ad esempio: variabile di regione\
terraform init

# Execute
terraform plan\
terraform apply

# Terminate
Quando hai finito, rimuovi tutte le risorse create usando\
terraform destroy

## Authors
Enrique Degiorgis (enrique.degiorgis@gmail.com)

## Acknowledgments
- Installing NGINX Open Source\
https://docs.nginx.com/nginx/admin-guide/installing-nginx/installing-nginx-open-source/
- How Amazon VPC works\
https://docs.aws.amazon.com/vpc/latest/userguide/how-it-works.html
- Resource: aws_autoscaling_group\
https://docs.aws.amazon.com/autoscaling/ec2/userguide/auto-scaling-groups.html
https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_group
- Resource: aws_launch_configuration\
https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/launch_configuration
