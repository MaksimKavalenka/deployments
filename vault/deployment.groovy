def namespace = params.NAMESPACE
def releaseName = params.RELEASE_NAME

def helmChartName = 'vault'

pipeline {
    agent any

    stages {
        stage('Deploy') {
            steps {
                sh "helm install $releaseName https://charts.bitnami.com/bitnami/$helmChartName --create-namespace -n $namespace"
            }
        }
    }
}
