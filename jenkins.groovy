node {
    dir('github.dxc.com') {
        stage ('Checkout source') {
            git credentialsId: 'jenkins-github', url: 'git@github.dxc.com:scandihealth/lpr3.git'
        }
        dir('modules/cda/cda-schematron') {
            stage ('Build') {
                withMaven(jdk: 'JDK 8 u152', maven: 'Maven_3.5.4') {
                    sh 'mvn package'
                }
            }
        }
    }
    sshagent(['scandihealth-git_lpr3-jenkins-master_github.com']) {
        dir('github.com') {
            stage('Checkout destination') {
                sh 'rm -rf lpr3-cda'
                sh 'git clone git@github.com:scandihealth/lpr3-cda.git'
                dir('lpr3-cda') {
                    sh 'git checkout unstable'
                    sh 'git pull'
                }
            }
            dir('lpr3-cda') {
                stage('Collect build results') {
                    sh 'cp -r ../../github.dxc.com/modules/cda/cda-schematron/target/cda-schematron*.zip schematron.unstable.zip' 
                    sh 'cp -r ../../github.dxc.com/modules/cda/cda-schematron/target/cda-schematron*.tar.gz schematron.unstable.tar.gz'
                }
                stage('Publish') {
                    sh 'git add *'
                    sh 'git commit -m "Latest unstable SchemaTron"'
                    sh 'git push'
                }
            }
        }
    }
}
