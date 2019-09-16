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
                sh 'echo "Installing Dependencies."'
                sh 'sudo -H pip install -r requirements.txt'
            }
        }
        stage('build'){
            steps {
                sh 'echo "Run Model"'
                sh 'python air_final.py'
            }

        }
    }
}