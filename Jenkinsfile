pipeline 
{
  agent any
  stages {
          stage('delete old repo') 
               {
                 steps {
                        sh 'ssh sirisha@34.28.163.80 rm -rf siri'
                        sh 'ssh sirisha@34.28.163.80 ls -la'
                        }
               }
    
           stage('clone')
               {
                steps {
                      sh 'ssh sirisha@34.28.163.80 git clone https://github.com/bathinasirisha/siri.git'
                      sh 'ssh sirisha@34.28.163.80 ls -la'
                      }
               }
            stage('application deploy to nginx') {
                  steps {
                        sh 'ssh sirisha@34.28.163.80 sudo cp siri/index.html /var/www/html/'
                        }
               }
            stage('restart service') {
                  steps {
                        sh 'ssh sirisha@34.28.163.80 sudo systemctl restart httpd'
               }
           }
  }
}
