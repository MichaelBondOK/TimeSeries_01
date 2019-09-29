pipeline {
    agent {
     docker {
      image 'python:3.5.1'
      args '-u root --privileged'
      }
     }
    stages {
        stage('prep') {
            steps {
                sh 'python --version'
                sh 'pip install --upgrade pip'
                sh 'pip --version'
                sh 'echo "Installing Dependencies."'
                sh 'pip install -r requirements.txt'
            }
        }
        stage('build'){
            steps {
                sh 'echo "Run Model"'
                sh 'python air_final.py'
            }
        }
        stage('report')
            steps{
            splunkins.archive("**/*.log", null, false, "10MB")
               }
    }
}