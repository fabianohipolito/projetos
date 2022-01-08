node {
	server4.withServer('172.27.11.20') {
	  stage('Build') {
              sh 'ls -l'
	  }
	  stage('Test') {
            sh 'echo Sucesso!'
 	  }
          stage('Save') {
          } 
        }
          stage('Deploy') {
          }
}
