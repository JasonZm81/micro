pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                // You can use the 'checkout' step to fetch your source code.
                checkout scm
            }
        }
        
        stage('Install and Use Docker') {
            steps {
                script {
                    // Install and use Docker within a Docker agent.
                    docker.image('docker').inside {
                        // Your Docker-related commands go here.
                        sh 'docker --version'
                        // Run your Docker container or other Docker-related tasks.
                    }
                }
            }
        }

        stage('Install and Use Maven') {
            steps {
                // Install and use Maven.
                tool name: 'Maven', type: 'hudson.tasks.Maven$MavenInstallation'
                sh 'mvn --version'
                // Run your Maven build commands.
            }
        }

        stage('Install and Use Python') {
            steps {
                // Install and use Python.
                sh 'python --version'
                // Run your Python scripts or commands.
            }
        }
    }
}
