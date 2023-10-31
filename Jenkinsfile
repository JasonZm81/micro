pipeline {
    agent none
    stages {
        stage('Build with Maven') {
            agent {
                docker {
                    image 'maven:3.8.4' // Use the desired Maven Docker image
                }
            }
            steps {
                sh 'mvn --version' // Execute Maven commands here
            }
        }
        
        stage('Test with Python') {
            agent {
                docker {
                    image 'python:3.9' // Use the desired Python Docker image
                }
            }
            steps {
                sh 'python --version' // Execute Python commands here
            }
        }
    }
}

