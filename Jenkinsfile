pipeline {
    agent any

    stages {
        stage('Git') {
            steps {
                git url: 'https://github.com/srinivasulu0514/jenkinsDemo.git', branch: 'main'
            }
        }

        stage('Maven Build') {
            steps {
                sh 'mvn clean' 
                sh 'mvn install'
            }
        }

        stage('Unit Testing') {
            steps {
                // Run Maven tests (e.g., JUnit)
                sh 'mvn test'
            }
            post {
                // Publish test results to Jenkins
                always {
                    junit '**/target/surefire-reports/*.xml'
                }
            }
        }
        stage('Functional Tests') {
           steps {
               
               echo "Running Functional Tests"
               sh 'mvn verify'
           }
       }
       stage('Performance Tests') {
           steps {
               echo "Running Performance Tests"
               sh 'mvn verify'
           }
       }

        
        stage('Docker Build') {
            steps {
                sh 'docker build -t java:latest .'
            }
        }

        stage('Push the Docker Image to DockerHub'){
            withCredentials([string(credentialsId: 'docker_hub', variable: 'docker_hub')]) {
                sh 'docker login -u vasyvasf@gmail.com -p ${docker_hub}'
                sh 'docker push srinivasulu0514/dockervasu'
            }
            
        }
        
    }
}
