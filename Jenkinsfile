pipeline {
    agent none
    stages {
        stage('Build with Maven') {
            agent {
                docker {
                    image 'maven:3.5.0'
                }
            }
            steps {
                sh 'mvn clean install'
            }
        }
        stage('Build Docker Image') {
            agent any
            steps {
                script {
                    docker.build('sebastiangarciahena0/spring-petclinic')
                }
            }
        }
    }
}
