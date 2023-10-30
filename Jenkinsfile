pipeline {
    agent none
    
    stages {
        stage('Parallel Stage') {
            parallel {
                stage('Task 1') {
                    steps {
                        echo 'Running Task 1'
                    }
                }
                stage('Task 2') {
                    steps {
                        echo 'Running Task 2'
                    }
                }
            }
        }
        stage('Another Parallel Stage') {
            parallel {
                stage('Task 3') {
                    steps {
                        echo 'Running Task 3'
                    }
                }
                stage('Task 4') {
                    steps {
                        echo 'Running Task 4'
                    }
                }
            }
        }
        stage('Final Stage') {
            steps {
                echo 'All parallel tasks are complete, moving to the final stage.'
            }
        }
        stage('node') {
            agent { docker "node"}
            steps {
                sh 'node --version'
            }
        }
        stage('python') {
            agent { docker "python"}
            steps {
                sh 'python3 --version'
            }
        }
    }
    
    post {
        always {
            echo 'Post action started'
        }
    }
}

