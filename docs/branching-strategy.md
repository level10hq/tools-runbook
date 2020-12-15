We use [Trunk Based Development](https://trunkbaseddevelopment.com/) as our branching strategy.  This encourages short lived branches, yet allows experimentation through the use of [feature flags](https://launchdarkly.com/).   


## How it works, a practical walkthrough 

Our **trunk** is a branch in a single repository that developers on a team focus on for development.  
In our repositories this is known as the **main** branch.

You're starting a new feature.

1. Create a feature branch  ```git checkout -b <branchname> ```
2. When you are ready to commit, push to origin ```git push origin <branchname>```
3. When you are ready to commit to the main (deployment) branch the create a pull request (PR) through [GitHub directly](https://github.com/level10hq/tools)
4. Get the PR reviewed 
5. Once approved and necessary checks pass the you as the PR owner can merge to the main branch which will trigger a deployment to https://productteam.level10hq.com 






