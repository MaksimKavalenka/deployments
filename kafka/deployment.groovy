def namespace = params.NAMESPACE
def releaseName = params.RELEASE_NAME

pipeline {
    agent any

    stages {
        stage('Deploy') {
            steps {
                sh "helm install $releaseName https://charts.bitnami.com/bitnami/kafka --create-namespace -n $namespace"
            }
        }
    }
}
