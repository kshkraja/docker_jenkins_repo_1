   
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
          docker build -t newimagesecond .
          echo "completed building"
        '''
      }
    }
    stage('Running image') {
      steps {
        bat '''
          echo "started Running"
          docker run newimagesecond
          echo "completed Running"
        '''
      }
    }

    
  }
}
