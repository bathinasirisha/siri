pipeline {
  agent any
  stages {
    stage('delete old repo') {
      steps {
        sh 'ssh sirisha@35.225.178.77 rm -rf siri'
         sh 'ssh sirisha@35.225.178.77 ls -la'
      }
    }
    
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
