pipeline{
  agent any
  environment {
  PATH = "${PATH}:${getTerraformPath()}"
}
  stages{
    stage('terraform init'){
      steps{
        sh "terraform init"
      }
    }
    stage('terraform apply'){
      steps{
        sh returnStatus: true, script: 'terraform apply -auto-approve -var-file vars/test/terraform.tfvars'
      }
    }
  }
}
def getTerraformPath(){
  def tfVpc = tool name: 'Terraform', type: 'terraform'
  return tfVpc
}
