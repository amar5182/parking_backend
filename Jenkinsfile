		pipeline {
	agent any
		stages {
			/**Insurance-Backend Pipeline Job Build and Test stages **/
			stage('SCM Checkout') {
				steps {
					git url:'https://github.com/amar5182/parking_backend.git'
						}
								}
			stage('Build') {
				steps {
                        sh"mvn clean install -Dmaven.test.skip=true"
							}
					}
			stage('Release') {
				steps {
                        sh"export JENKINS_NODE_COOKIE=dontKillMe; nohup java -jar $WORKSPACE/target/*.jar &"
							}
					}
				}
		}
