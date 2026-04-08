pipeline {
    agent any

        environment {
        ECR_REPO = 'my-devops-app'
        BRANCH_NAME = "icounter-prod-code" // change as needed
        }

    stages {

                stage('Checkout Code') {
                    steps {
                    git branch: "${BRANCH_NAME}",
                    credentialsId: 'github-app',
                    url: 'https://github.com/Aniket-Blazeclan/python-code-counter.git'
                    }
                }
                stage('Image Build Docker') {
                    steps {
                    sh 'docker build -t python-code:v1 .'    
                    }
                }


        }
}
