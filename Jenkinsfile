pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Building......'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing...!!**'
                sh 'echo "Running tests..."'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying...'
            }
        }
    }
}