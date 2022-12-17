node {
	def app
	
	stage ('Clone repository'){
		checkout scm
	}
	stage('Build image'){
		app = docker.build('513135192262.dkr.ecr.us-east-1.amazonaws.com/oalfredoss/example-app');
	}
	stage('Test'){
		app.inside {
			sh 'node -v'
		}
	}
	stage('Push image'){
		docker.withRegistry('https://513135192262.dkr.ecr.us-east-1.amazonaws.com','ecr:us-east-1:aws-credentials'){
			app.push("${env.BRANCH_NAME}-${env.BUILD_NUMBER}")
		}
	}
}
