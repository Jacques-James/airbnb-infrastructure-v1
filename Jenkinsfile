pipeline {
    agent any
    tools {

        // maven "MAVEN3"
        //jdk "OracleJDK8"
        terraform 'Terraform'
    }

    stages {
        stage('fetch code') {
            steps {
                echo 'cloning the IAC branch ....'
                git branch : 'main', url:'https://github.com/Jacques-James/airbnb-infrastructure-v1.git'
            }
        }
         stage('formating the code') {
            steps {
                echo 'formating ...'
                sh 'terraform fmt'
            }
        }
        stage('backend Initialisation') {
            steps {
                echo ' initialising backend'
                sh 'terraform init'
            }
        }
        stage('Terraform apply') {
            steps {
                echo ' creating the ressource'
                sh 'terraform apply --auto-approve'
            }
        }
        stage('Terraform destroy') {
            steps {
                echo ' destroying the ressource'
                sh 'terraform destroy --auto-approve'
            }
        }
        
    }
}
