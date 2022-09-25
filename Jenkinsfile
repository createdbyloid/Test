pipeline {
  agent any
  stages {
    stage('Checkout Code') {
      steps {
        git(url: 'https://github.com/createdbyloid/Test', branch: 'main')
      }
    }

    stage('Test') {
      steps {
        echo 'This should be test'
      }
    }

    stage('Build') {
      steps {
        sh 'ls -a'
      }
    }

  }
}