# latest version of your script
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
  }
}
def getTerraformPath(){
  def tfVpc = tool name: 'Terraform', type: 'terraform'
  return tfVpc
}
