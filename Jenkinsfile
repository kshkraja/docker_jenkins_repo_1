   
pipeline {
  agent any
  stages {
    stage('Cloning Git') {
      steps {
        checkout scm
      }
    }
    stage('Building image') {
      steps {
        bat '''
          echo "started building"
          docker build -t newImage .
          echo "completed building"
        '''
      }
    }
    
  }
}
