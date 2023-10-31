pipeline {
  agent { docker "maven" }

  stages {
    stage('maven') {
      steps {
        sh "mvn -version"
        sh "java -version"
      }
    }
  }
}
