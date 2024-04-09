<div style="text-align: center;"> <img src="deployment.lab.png" alt="Deployment Lab Logo" /> </div>

--- 

[![Create Release](https://github.com/islam-kamel/deployment-lab/actions/workflows/create.release.yml/badge.svg)](https://github.com/islam-kamel/deployment-lab/actions/workflows/create.release.yml)
[![Create Release](https://github.com/islam-kamel/deployment-lab/actions/workflows/create.release.yml/badge.svg)](https://github.com/islam-kamel/deployment-lab/actions/workflows/create.release.yml)
## **Introduction**

**Deployment Lab** is a project that automates the build and push image process using GitHub Actions and Docker. It's
designed
for
developers who want to streamline their deployment workflows.

## **Installation**

To install Deployment Lab, you'll need to Clone the repository and set up the required environment variables on your
repository.
create your application's Dockerfile and push it.

> Don't push your files on the Deployment Lab repository. Clone it and push it on your own repository.

## **Usage**

To use Deployment Lab, follow these steps:

1. Set your environment variables in the repository's secrets.
2. Push a new tag to trigger the `create.release.yml` workflow.
3. The `deployment.lab.yml` workflow will be triggered when a new release is created.

## **Contact**

If you have any questions or feedback, please reach out to us
at [contact@deploymentlab.com](mailto:dev.islam.kamel@gmail.com).

---

## 🚀 **Requirements to Run Workflows Correctly**

Before you can run the workflows correctly, make sure you have the following requirements set up:

---

1. **🔧 GitHub Actions**:

   Ensure that GitHub Actions is enabled for your repository. The workflows are defined in the `.github/workflows`
   directory of your repository.

---

2. **🐳 Dockerfile**:

   The Dockerfile is used to build a Docker image of your application. It should be located in the root directory of
   your repository.

---

3. **🔑 Environment Variables**:

   The workflows require certain environment variables to be set. These are:

    - `DOCKER_USERNAME`: Your Docker Hub username.
    - `DOCKER_PASSWORD`: Your Docker Hub password.
    - `DOCKER_REGISTRY_NAME`: The name of your Docker registry.
    - `ACCESS_TOKEN`: The access token for your GitHub account **Note** Make sure this token has permission to create
      release.
    - `SLACK_BOT_TOKEN`: The token for your Slack bot.
    - `SLACK_CHANNEL_IDS`: The channel id by providing a comma-delimited list of channel IDs of the Slack channel where the bot will post messages.
   These should be set in the repository's secrets.

---

4. **📁 Workflow Files**:

   There are two workflow files that need to be present in the `.github/workflows` directory:

    - `deployment.lab.yml`: This workflow is triggered when a new release is created. It builds a Docker image from the
      Dockerfile and pushes it to Docker Hub.

    - `create.release.yml`: This workflow is triggered when a new tag is pushed. It checks for tag changes and creates a
      new release if a new tag is detected.

---

5. **🏷️ Tagging**:

   The `create.release.yml` workflow is triggered by pushing a new tag. So, to create a new release and trigger
   the `deployment.lab.yml` workflow, you need to push a new tag.

---

6. **🐳 Docker Hub**:

   You need to have a Docker Hub account where the Docker image will be pushed. The `DOCKER_USERNAME`
   and `DOCKER_PASSWORD` should correspond to this account.

Please ensure all these requirements are met for the workflows to run correctly.