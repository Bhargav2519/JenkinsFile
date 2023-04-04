pipeline {
    agent any
    parameters {
        string(name: 'input', description: 'Enter the Github URL:')
        string(name: 'branchInput', description: 'Enter the branch name'
        choice(choices:'java\npython\ndotnet\nnodejs\nreacjs\nangularjs', name: 'lang')
    }
    tools {
        maven 'Maven3.9.1'
    }
    stages {
        stage('git checkout') {
            steps {
                echo "${params.lang}"
                script {
                    if (params.lang == 'java') {
                    echo "${params.lang}"
                    echo "${params.input}"
                        git branch: "{params.branchInput}", credentialsId: 'gitcred', url: "${params.input}"
                    }
                    else if (params.lang == 'python') {
                      echo "${params.lang}"
                      echo "${params.input}"
                      echo "${params.branchInput}"
                    }
                    else if (params.lang == 'dotnet') {
                      echo "${params.lang}"
                    }
                     else if (params.lang == 'nodejs') {
                      echo "${params.lang}"
                    }
                     else if (params.lang == 'reactjs') {
                      echo "${params.lang}"
                    }
                     else if (params.lang == 'angularjs') {
                      echo "${params.lang}"
                    }
                }
            }
        }
        stage('build') {
            steps {
                script {
                    if (params.lang == 'java') 
                    {
                        sh "${tool 'Maven3.9.1'}/bin/mvn clean install package"
                        sh "${tool 'Maven3.9.1'}/bin/mvn test"
                        echo "Java Build successful"
                    } 
                    else if (params.lang == 'python') 
                    {
                        echo "${params.lang}"
                        echo "${params.lang} Build successful"
                    }
                     else if (params.lang == 'dotnet') 
                    {
                        echo "${params.lang}"
                        echo "${params.lang} Build successful"
                    }
                     else if (params.lang == 'nodejs') 
                    {
                        echo "${params.lang}"
                        echo "${params.lang} Build successful"
                    }
                     else if (params.lang == 'reactjs') 
                    {
                        echo "${params.lang}"
                        echo "${params.lang} Build successful"
                    }
                     else if (params.lang == 'angularjs') 
                    {
                        echo "${params.lang}"
                        echo "${params.lang} Build successful"
                    }
               }
            }
        }
        stage('SonarQube Report') {
            environment {
                scannerHome = tool 'SonarQube 4.8.0'\
            }
            steps {
                withSonarQubeEnv('SonarQube') {
                    sh "${scannerHome}/bin/sonar-scanner \
                        -D sonar.login=admin \
                        -D sonar.password=admin123 \
                        -D sonar.projectKey=Sonar \
                        -D sonar.exclusions=vender/**,resources/**,**/*.java \
                        -D sonar.host.url=http://localhost:9000/"
                }
            }
        }  
    }
}
