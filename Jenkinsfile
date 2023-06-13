pipeline 
{
  agent any
  stages {
          stage('delete old repo') 
               {
                 steps {
                        sh 'ssh sirisha@35.225.232.132 rm -rf siri'
                        sh 'ssh sirisha@35.225.232.132 ls -la'
                        }
               }
    
           stage('clone')
               {
                steps {
                      sh 'ssh sirisha@35.225.232.132 git clone https://github.com/bathinasirisha/siri.git'
                      sh 'ssh sirisha@35.225.232.132 cp siri/* ./'
                      sh 'ssh sirisha@35.225.232.132 ls -la'
                      }
               }
            stage('to create docker image') {
                  steps {
                        sh 'ssh sirisha@35.225.232.132 sudo docker build -t apache_image .'
                        sh 'ssh sirisha@35.225.232.132 sudo docker images'
                        }
               }
            stage('to create container') {
                  steps {
                        sh 'ssh sirisha@35.225.232.132 sudo docker run docker run -d --name httpd-docker-01 -p 80:80 apache_image'
                        sh  'ssh sirisha@35.225.232.132 sudo docker ps'
               }
           }
  }
}
