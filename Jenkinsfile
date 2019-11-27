pipeline {
  agent none
      stages {
        stage('install Shellcheck') {
          agent {
            label 'slave'
          }
          steps {
            sh 'sudo install_shellcheck.sh'
          }
        }
        stage('Shellcheck install_node.sh') {
          agent {
            label 'slave'
          }
          steps {
            sh 'sudo shellcheck install_node.sh'
          }
        }
        stage('Deploy nodeJS') {
          agent {
            label 'slave'
          }
          steps {
            sh 'sudo install_node.sh'
            sh 'sudo firewall-cmd --add-port=6453/tcp --permanent'
            sh 'sudo firewall-cmd --reload'
          }
        }
      }
}
