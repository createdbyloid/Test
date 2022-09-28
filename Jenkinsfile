pipeline {
  agent any
  stages {
    stage('Checkout Code') {
      steps {
        git(url: 'https://github.com/createdbyloid/Test.git', branch: 'main')
      }
    }

    stage('Test') {
      steps {
        echo 'This should be test'
      }
    }

    stage('Build') {
      steps {
        sh 'docker build -t createdbyloid/staticpage .'
      }
    }

    stage('Dockerhub Login') {
      steps {
        sh 'docker login -u $DOCKERHUB_USER -p $DOCKERHUB_PASS'
      }
    }

    stage('Docker Push') {
      steps {
        sh 'docker push createdbyloid/staticpage:latest'
      }
    }

  }
  environment {
    DOCKERHUB_USER = 'createdbyloid'
    DOCKERHUB_PASS = 'DockerHub48'
  }
}