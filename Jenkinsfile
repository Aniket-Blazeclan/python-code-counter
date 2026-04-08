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
                    url: 'https://github.com/Aniket-Blazeclan/python-code-counter.git'
                    }
                }


        }
}
