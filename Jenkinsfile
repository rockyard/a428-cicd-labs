pipeline {
    agent any
        tools {
            nodejs 'NodeJs'
        }
        parameters {
        choice(name:'VERSION', choices:['1.0', '1.1', '1.2'], description:'Choose the version of the project')

        booleanParam(name :'executeTests', description:'Execute the tests', defaultValue:false)
        }
    triggers {
        pollSCM('*/2 * * * *')
    }
    
    stages {
        stage('Build') { 
            steps {
                sh 'npm install' 
            }
        }

    stage('Test') {
            steps {
                //sh './jenkins/scripts/test.sh'
                echo "Test"
            }
        }
    stage('Manual') {
        steps {
            input message: 'Lanjutkan ke tahap Deploy?'
        }
    }   
    stage('Deploy') { 
            steps {
                sh './jenkins/scripts/deliver.sh' 
                input message: 'Sudah selesai menggunakan React App? (Klik "Proceed" untuk mengakhiri)' 
                sleep(60)
                sh './jenkins/scripts/kill.sh' 
            }
        }
    }
}