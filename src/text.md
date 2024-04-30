# PDK Configurations Installation Guide


| Product/Service Name               | Product/Service Version  | Proudct URL   | 
------------------------------------|---------------------------|----------------
| CPP CONFIGURATON  | ##PRODUCT_VERSION         | N/A(AWS LAMBDA does not have an URL because is a serverless service)          |



| Environment    | Deployed By   |Status deployment  | Date      | 
-----------------|---------------|-------------------|-----------
| ##ENVIRONMENT | ##DEPLOYED_BY  | ##DEPLOYEMT_STATUS | ##DATE   |


|Git|Commit|
|---|------|
|https://github.com/mdsol/cpp-configurations.git | ##COMMIT_HASH |

## Summary

PDK Configurations is a cloud-native serverless solution which relies on the following AWS services to publish the configurations at the time of deployment and at runtime:

- S3
- IAM
- Lambda


The deployment is done via GoCD and uses Ansible to deploy CloudFormation Stacks. Deployment logic is in the [/deploy/scripts/build_gocd.sh](/deploy/scripts/build_gocd.sh) file.

## Contents 

- [One-time environment setup](#one-time-environment-setup)
    - [1. Creation and registration of MAUTH credentials](#1-creation-and-registration-of-mauth-credentials)
    - [2. GoCD Pipeline](#2-gocd-pipeline)
        - [Materials](#materials)
        - [Environment Variables](#environment-variables)
- [Deployment](#deployment)
- [Post deployment](#post-deployment)
    - [Verify Resources Were Created](#verify-resources-were-created)

## One-time environment setup

The steps listed in this section should only be executed manually once per a given environment (e.g. `sandbox`, `distro`, `validation`, `innovate`, `production`, etc.) the first time it is initialized.

The execution of these setup steps is performed via Ansible scripts, and they are meant to be executed in a terminal console from the root directory of the project.

---

### 1. Creation and registration of MAUTH credentials
- MAUTH-APP-UUID : Generate a version 4 UUID (https://www.uuidgenerator.net/version4)
- MAUTH-PUBLIC-KEY, MAUTH-PRIVATE-KEY : Generate RSA public and private key pair. (key length = 2048 , link : https://cryptotools.net/rsagen).
- Register the credentials to MAuth service :
- Redirect to https://medistrano.imedidata.net/projects/52 (mauth project in medistrano)
- Select the relevant environment (sandbox , e2e etc..)
- Open ECS configuration page.
- Run admin task with below command :
```
bundle exec rake mauth:new_security_token[pdk-configs-<environment>,'<MAUTH-PUBLIC-KEY>',<APP-UUID>]
```
- When the task succeeds the credentials are successfully registered to the mauth service.

---

### 2. GoCD Pipeline

Create GoCD pipelines named `cpp_configuration_deploy_{ENVIRONMENT}` with the following configuration:

#### Materials

- Repository URL: `https://github.com/mdsol/cpp-configurations.git`
- Repository Branch (Advanced Settings): `develop`

As an example, here is a GoCD Pipeline of the `sandbox` - `cpp_configuration_deploy_sandbox`

#### Environment Variables

Plain Text Variables:

| Variable Name     | Value           |
|-------------------|----------------------------------------------------------|
| DEPLOY_SUFFIX     | `default`              |
| ENVIRONMENT       | Lowercase environment name: `sandbox`, `distro` etc.    |
| GIT_RELEASE_TAG   | `CPPCONFIGS.2023.1.0-rc3` for validation/innovate/production and empty for other environments.  |
| MAUTH_APP_ID      | \<APP-UUID\> generated in step 1     |
| GATEWAY_S3_BUCKET | cppapigateway-cpp\<environment\>-\<environment\>-bucket   |
| V3_API_URL        | https://intelegridapp.com for production <br/> https://imagingv4-<environment\>.imedidata.net/com for all other environments     |
| DATA_API_URL      | https://cppdataapi-data-api.imedidata.com for production <br/> https://cppdataapi-<environment\>-data-api.imedidata.net/com for all other environments |
| UI_URL            | https://intelegridapp.com for production <br/> https://imagingv4-<environment\>.imedidata.net/com for all other environments      |
| V3_CLIENT_ID      | cpp-data-admin      |
| CODE_VERSION      | 0.1-SNAPSHOT for sandbox/distro and 2023.1.0-rc1 for all other environments     |

Secure Variables:

| Variable Name     | Value              |
|-------------------|-----------------------------------------------------------|
| MAUTH_PRIVATE_KEY | Base 64 encoding of \<MAUTH-PRIVATE-KEY\> generated in step 1. Use https://www.base64encode.org/ to encode the private key. |

---

## Deployment

### Whitelist the <MAUTH-APP-UUID> generated in step 1 with the cpp-api service.
Navigate to project `cppdataapi` in medistrano. Switch to the environment (Note that all environments start with 'cpp'). 
From ECS:

Add the app uuid generated in step 1 to the end of MAUTH_APP_WHITELIST in the ECS Config and publish the new changes.

Build, release and deploy the GIT Tag.

### From GoCD Pipeline:

Run the pipeline to deploy the service. The pipeline deploys the version of the application specified in the `GITREF_OVERRIDE` environment variable or from the branch of the material if no GITREF_OVERRIDE variable is set.

---

## Post deployment

### Verify Resources Were Created

Upon successful deployment the following are created:

- S3 bucket named `pdk-configs-<environment>-s3`
- A CloudFormation Stack named `pdk-configs-<environment>-s3-bucket` with status CREATE_COMPLETE.
- IAM role with prefix `pdk-config-deploy-<environment>-role`  (e.g. `pdk-config-deploy-sandbox-role`, `pdk-config-deploy-distro-role` etc.).
- A CloudFormation Stack named `pdk-config-deploy-<environment>-role` with status CREATE_COMPLETE.
- Lambdas named `pdk-config-deploy-<environment>` and `pdk-brand-config-deploy-<environment>`
- A CloudFormation Stack named `pdk-config-deploy-<environment>-lambda` with status CREATE_COMPLETE.
