node {
	
	  stage('Build') {
              sh 'ls -l'
	  }
	  stage('Test') {
            sh 'echo Sucesso!'
 	  }
          stage('Save') {
          } 
        
          stage('Deploy') {
          }
}
