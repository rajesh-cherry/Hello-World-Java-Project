pipeline {
    agent any
    environment{
        PATH = "/opt/apache-maven-3.8.5/bin:$PATH"
    }
    stages {
        stage('git clone') {
            steps {
                git 'https://github.com/rajesh-cherry/Hello-World-Java-Project.git'
            }
        }
        stage('build') {
            steps {
                sh "mvn clean install"
            }
        }
        stage('deploy_tomcat') {
            steps {
                sshagent(['deploy_user']) {
                    sh "scp -o StrictHostKeyChecking=no webapp/target/webapp.war ec2-user@65.2.130.102:/opt/apache-tomcat-8.5.76/webapps"
                }
            }
        }
        
    }
}
