pipeline {
  agent none
      stages {
        stage('Shellcheck install') {
          agent {
            label 'slave'
          }
          steps {
            sh 'sudo bash install_shellcheck.sh'
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
            sh 'sudo bash install_node.sh'
            sh 'sudo firewall-cmd --add-port=6543/tcp --permanent'
            sh 'sudo firewall-cmd --reload'
          }
        }
        stage('Test if nodeJS is running fine') {
          agent {
            label 'slave'
          }
          steps {
            sh 'sudo bash test_node.sh'
          }
        }
      }
}
