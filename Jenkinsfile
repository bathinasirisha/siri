pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'ssh sirisha@35.225.178.77 git clone https://github.com/bathinasirisha/siri.git'
         sh 'ssh sirisha@35.225.178.77 ls -la'
      }
    }
    stage('Test') {
      steps {
        parallel(
          "Test": {
            echo 'Testing..'
          },
          "Integration Test": {
            echo 'Integration Test...'
            
          }
        )
      }
    }
    stage('Deploy') {
      steps {
        echo 'Deploying....'
      }
    }
  }
}
