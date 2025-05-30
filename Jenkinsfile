pipeline {
    
    agent none

  
    stages {
      
        stage('Build with Maven') {
            
            agent {
                docker { image 'maven:3.5.0' }
            }
   
            steps {
              
                sh 'mvn clean install'
            }
        }

       
        stage('Build Docker Image') {
         
            agent any
         
            steps {
                script {
                 
                    docker.build('sebastiangarciahena0/spring-petclinic', '.')
                }
            }
        }

       
        stage('Push Docker Image to Docker Hub') {
        
            agent any
            
            steps {
                script {
                 
                    docker.withRegistry('https://registry.hub.docker.com', 'dockerhub-credentials-id') {
                        
                        docker.image('sebastiangarciahena0/spring-petclinic').push()
                    }
                }
            }
        }
    }
}