pipelineWrapper(
    buildContainers: [node:"node:16"]
) {

    stageWrapper(stageName: 'npm setup', containerName: 'node') {
      sh "npm install --no-optional"
    }

    stageWrapper(stageName: 'build dev', containerName: 'node',  branchSelector: '.*develop$') {
      sh "npm run build:dev"
    }
    cdWrapper(env: 'dev', branchSelector: '.*develop$')

    stageWrapper(stageName: 'build tst', containerName: 'node',  branchSelector: '^release.*') {
      sh "npm run build:tst"
    }
    cdWrapper(env: 'test', branchSelector: '^release.*')

   stageWrapper(stageName: 'build prd', containerName: 'node',  branchSelector: 'main') {
       sh "npm run build:prd"
     }
   cdWrapper(env: 'prod', branchSelector: 'main')
}
