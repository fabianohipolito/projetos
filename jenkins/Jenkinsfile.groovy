node {
         docker.withserver('172.16.11.20'){	
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
