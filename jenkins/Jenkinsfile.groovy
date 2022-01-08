node {
	docker.withServer('172.27.11.20') {
	  stage('Build') {
	  }
	  stage('Test') {
 	  }
          stage('Save') {
          } 
        }
          stage('Deploy') {
          }
}
