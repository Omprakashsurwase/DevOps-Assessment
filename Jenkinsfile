pipeline {
    agent any
    
    environment {
        PATH = "/root/apache-maven-3.8.6/bin:$PATH"
    }
        stages {
            stage ('clone code') {
                steps {
                    git branch: 'main', url: 'https://github.com/Omprakashsurwase/DevOps-Assessment.git'
                }
            }
            stage ('Build Code') {
                steps {
                    sh "mvn clean package"
                }
            }
            stage('Build-Image'){
            steps {
                sh "docker build -t omprakashsurwase/mytomcat ."
            }
        }
        stage('login to dockerhub') {
            steps{
                sh 'docker login'
            }
        }
        stage('push image') {
            steps{
                sh 'docker push omprakashsurwase/mytomcat'
            }
        }
        stage('Deploy Application on Helm Chart') {
            steps{
                sh 'helm install relies18 helmchart'
            }
        }
    }
}
