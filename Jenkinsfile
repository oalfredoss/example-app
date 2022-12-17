node {
	def app
	
	stage ('Clone repository'){
		checkout scm
	}
	stage('Build image'){
		app = docker.build('oalfredoss/example-app');
	}
	stage('Push image'){
		docker.withRegistry('https://registry.hub.docker.com','docker-hub-credentials'){
			app.push('latest')
		}
	}
}
