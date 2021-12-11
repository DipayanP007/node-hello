pipeline {
    agent any
    environment{
        
        final_image=''
        image='dipayanp007/node-demo:$BUILD_NUMBER-${GIT_COMMIT}'
        image2='dipayanp007/node-demo:latest'
        
    }

    stages {
        
        stage("Build image")
        {
            
            steps{
                //script{
                  //  final_image=docker.build image
                    //final_image2=docker.build image2
                //}
                sh 'echo Hello'
                
            }
        }
        stage("Push")
        {
            steps{
               // script{
                 //   docker.withRegistry('', 'DockerHub') {
                   // final_image.push()
                    //final_image.push('latest')
//}
                sh 'echo Hello'
                }
}
                
            
        }
        }
        post{
            always{
                when{
                    branch 'master'
                }
                sh 'echo hello'
                sh 'docker logout'
            }
        }
    
}
