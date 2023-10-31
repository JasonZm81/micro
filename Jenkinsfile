pipeline {
    agent none

    stages {
        stage('node') {
            agent any
            steps {
                script {
                    def nodeImage = docker.image("node")
                    nodeImage.inside {
                        sh 'node --version'
                    }
                }
            }
        }

        stage('python') {
            agent any
            steps {
                script {
                    def pythonImage = docker.image("python")
                    pythonImage.inside {
                        sh 'python3 --version'
                    }
                }
            }
        }
    }
}
