pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        sh 'ls'
      }
    }
    stage('finish') {
      steps {
        input 'Finished using the web site?'
      }
    }
  }
  environment {
    DISABLE_AUTH = 'true'
    DB_ENGINE = 'sqlite'
  }
}