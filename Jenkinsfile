pipeline {
    agent any
    environment{
        
        final_image=''
        
    }

    stages {
        
        stage("Build image")
        {
            environment{
                image='dipayanp007/node-demo:$BUILD_NUMBER-${GIT_COMMIT}'
        image2='dipayanp007/node-demo:latest'
            }
            steps{
                script{
                    final_image=docker.build 'dipayanp007/node-demo:$BUILD_NUMBER-$GIT_COMMIT'
                    //final_image2=docker.build image2
                }
                
                
            }
        }
        stage("Push")
        {
            steps{
                script{
                    docker.withRegistry('', 'DockerHub') {
                    final_image.push()
                    final_image.push('latest')
}
                }
}
                
            
        }
        }
        post{
            always{
                sh 'docker logout'
            }
        }
    
}
