# 1) Installed Terraform and provision EC2 on cloud

## setting up terraform 
#### steps:
- download extensions of aws and terraform in vscode or codespace
- provide necessary credentials that has access for provisioning resources : access and secret key using "aws configuration" command (I used like this as this is an assessment)

## used the tarraform config file provided

## used below commands to provision resources using terraform
` terrafor init
 terraform plan
 terraform apply
`

# 2) Run the below commands to install Java and Jenkins

## Install Java

`sudo apt update
sudo apt install openjdk-11-jre`

## Verify Java is Installed

`java -version`

## Now, you can proceed with installing Jenkins

`curl -fsSL https://pkg.jenkins.io/debian/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins`


# 3) installed ansible on same ec2 and using ansible configure mongodb in localhost 
## steps
### Install Ansible: using our package manager to install Ansible. 

`sudo apt update
sudo apt install ansible
`
### installing mongodb using ansible
- use the playbook provided in repo

# 4) Creating an User:
## steps:
#### Connect to MongoDB: 
`mongo`
#### Switch to the admin Database:
` use admin`
#### Create an Administrative User:
`
db.createUser(
  {
    user: "exampleabc",
    pwd: "examplexyz",
    roles: [ { role: "userAdminAnyDatabase", db: "admin" } ]
  }
)`


# 5) created EKS from the same ec2 instance

## i) prerequisites

kubectl – A command line tool for working with Kubernetes clusters. For more information, see Installing or updating kubectl. [https://docs.aws.amazon.com/eks/latest/userguide/install-kubectl.html](url)

eksctl – A command line tool for working with EKS clusters that automates many individual tasks. For more information, see Installing or updating. [https://docs.aws.amazon.com/eks/latest/userguide/eksctl.html](url)

AWS CLI – A command line tool for working with AWS services, including Amazon EKS. For more information, see Installing, updating, and uninstalling the AWS CLI [https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-install.html](url) in the AWS Command Line Interface User Guide.

## ii) commands to install EKS

#### EKS Clusters Creation
`eksctl create cluster --name hub-cluster --region us-east-1
`
#### EKS Clusters Deletion
`eksctl delete cluster --name hub-cluster --region us-east-1`


# 6) ARGOCD
## Install Argo CD
`kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml`


# 7) manifest files and CI/CD script
## used manifest files provided in repo for service and deployment (under manifest folder)
## used configmap and confisecret provided in repo only for cluster.
## used provided jenkinsfile







#### Note: 
I have defined this readme in such a way that anyone wants to follow and setup and perform these actions

 


