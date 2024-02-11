pipeline {
    agent any

    stages {
        stage('Clean Workspace') {
            steps {
                // Clean the workspace
                deleteDir()
            }
        }
        stage('Clone') {
            steps {
                // Clone from your GitHub repository, using the correct branch name
                git branch: "${env.BRANCH_NAME}", url: 'https://github.com/hemasrihitha/HTML.git'
            }
        }


        stage('Build') {
            steps {
                // Print build started
                echo 'Build started'
            }
        }

        stage('Test') {
            steps {
                // Print test started
                echo 'Test started'
            }
        }

        stage('Deploy') {
            steps {
                // SCP files
                sh 'scp -rp index.html cloud_user@f120574411474f3dbf996693ff893a103c.mylabserver.com:/var/www/html/'
            }
        }
    }
}
