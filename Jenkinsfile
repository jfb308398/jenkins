//git凭证
def git_auth="2267aadf-bd32-4896-bde5-587e4fb42e14"
//git 地址
def git_url="https://gitee.com/jfb308398254/jenkins-test.git"

node{
    stage('拉取代码'){
        checkout([$class: 'GitSCM', branches: [[name: "*/${branch}"]], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: "${git_auth}", url: "${git_url}"]]])
    }
	stage('编译打包'){
        sh """
		source /etc/profile
		mvn clean install
		"""
    }
}