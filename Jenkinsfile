pipeline {
    agent any
    /// 2. The CLI Tools library has the sam executable installed and python 3.8 runtime
    options {
        buildDiscarder(logRotator(numToKeepStr: '5'))
    }
    parameters {
        choice(name: 'account', choices:"NON-PROD\nPROD", description: "Choose right AWS account for deploy" )
    }
    stages {
        stage('Checkout') {
            steps {
                script {
                    sh "rm -r ./poher"
                    sh "git clone https://github.com/vadimchodakowski/poher.git"
                }
            }
        }    
        stage('Build and Deploy') {
            steps {
                script {    
                            sh "chmod 777 poher/file.sh"
                            sh "bash poher/file.sh ${params.account}"
                                    }
                                }
                            }
    }
}