We use [GitHub Actions](https://docs.github.com/en/free-pro-team@latest/actions) as our primary tool for source code automation. 

Every push to the repository and requests for pulls into the main branch result in a series of Github actions.    

!!! Note inline "Deployment to AWS ECS uses Circle CI"
    Deployment to AWS ECS [development environment](https://spoke.level10hq.com) only occurs after successful test execution for commits to the main branch.     

