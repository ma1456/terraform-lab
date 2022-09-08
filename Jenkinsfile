pipeline{

    agent any 
    
    stages{
        
        stage('git checkout'){
            steps{
                git branch: 'main', url: 'https://github.com/ma1456/terraform-lab.git'
            }
        }
        stage('terraform init'){
            steps{
                sh 'terraform init'
            }
        }
         stage('terraform plan'){
            steps{
                sh "terraform plan"
            }
        }
         stage('terraform apply'){
            steps{
                 sh "terraform apply"
            }
        }
        stage('terraform destroy'){
            steps{
              sh "terraform destroy"
            }
        }
    }
}            
  