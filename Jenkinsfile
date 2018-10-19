pipeline {
    agent any
    environment {
        DISABLE_AUTH = 'true'
        DB_ENGINE    = 'sqlite'
    }
    stages {
        stage('build') {
            steps {
                sh 'ls'
            }
        }
        stage('finish') {
                steps {
                    input "Finished using the web site?"
                }
            }
        }
}
