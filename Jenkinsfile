node('master') {
    // Get me branch name
    def git_branch = env.BRANCH_NAME
    println "branch: ${git_branch}: branch"
    if (git_branch != 'master') {
	println "special case for non-master branch"
    }
}
