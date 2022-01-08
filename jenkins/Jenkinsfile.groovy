node {
	server4.withServer('172.27.11.20') {
	  stage('Build') {
              sh 'ls -l'
	  }
	  stage('Test') {
            sh 'ip a'
 	  }
          stage('Save') {
          } 
        }
          stage('Deploy') {
          }
}
