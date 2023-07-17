    node {
        docker.image('node:16-buster-slim').inside('-p 3000:3000') {
        stage('Build') {
                checkout scm
                sh 'npm install'
            }
        }
        stage('Test'){
                sh './jenkins/script/test.sh'
        }
    }