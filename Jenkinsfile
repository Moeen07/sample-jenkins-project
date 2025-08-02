pipeline {
    agent any

    environment {
        REMOTE_HOST = "34.70.242.91"
        REMOTE_USER = "cloudops"
        REMOTE_DIR  = "/home/cloudops/moonis/sample-jenkins-project"
    }

    triggers {
        githubPush()
    }

    stages {
        stage('Deploy to GCP') {
            steps {
                sshagent(credentials: ['gcp-ssh']) {
                    sh """
                    ssh -o StrictHostKeyChecking=no $REMOTE_USER@$REMOTE_HOST '
                        cd $REMOTE_DIR &&
                        chmod +x deploy.sh &&
                        ./deploy.sh
                    '
                    """
                }
            }
        }
    }
}
