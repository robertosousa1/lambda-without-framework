<h3 align="center">
  This is a simple example of how to make a lambda function available on AWS.
</h3>
<p align="center">
  <img alt="GitHub top language" src="https://img.shields.io/github/languages/top/robertosousa1/lambda-without-framework.svg">
  
  <img alt="GitHub language count" src="https://img.shields.io/github/languages/count/robertosousa1/lambda-without-framework.svg">
  
  <a href="https://www.codacy.com/app/robertosousa1/lambda-without-framework?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=robertosousa1/lambda-without-framework&amp;utm_campaign=Badge_Grade">
    <img alt="Codacy grade" src="https://img.shields.io/codacy/grade/70c8e79c83b442278f6c276ebf117ae4.svg">
  </a>

  
  <img alt="Repository size" src="https://img.shields.io/github/repo-size/robertosousa1/lambda-without-framework.svg">
  <a href="https://github.com/robertosousa1/lambda-without-framework/commits/master">
    <img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/robertosousa1/lambda-without-framework.svg">
  </a>
  
  <a href="https://github.com/robertosousa1/lambda-without-framework/issues">
    <img alt="Repository issues" src="https://img.shields.io/github/issues/robertosousa1/lambda-without-framework.svg">
  </a>
  
  <img alt="GitHub" src="https://img.shields.io/github/license/robertosousa1/lambda-without-framework.svg">   
</p>

<p align="center">
  <a href="#up-getting-started">Getting started</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#pencil2-how-to-contribute">How to contribute</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#memo-license">License</a>
</p>

## [](#getting-started):up: Getting started

-   Clone this repo
-   `make create-policy`  to create a security role in aws

- access ***logs/role.log*** and copied the policy arn generated in the ***arn*** variable in the **Makefile** file.

-   `make upload-function` to compress and upload the handler function in index.js for lambda aws <br/>
**Obs.**: note that a record of the command return will be generated in *logs/lambda-create.log*.

-   `make invoke-lambda` to make a call to the lambda function <br/>
**Obs.**: note that a record of the command return will be generated in *logs/lambda-exec.log*.

-   `make update-function` after making any changes, to compress and update the handler function in lambda aws <br/>
**Obs.**: note that a record of the command return will be generated in *logs/lambda-update.log*.

-   `make remove-lambda`  to remove the created lambda function

-   `make remove-policy`  to remove the created policy

-   `make clean`  to remove the logs and zipped function

 **General observations.:**
 
 1. The lambda function created by default will use the name "test-cli", if you want to change, go to **Makefile** and change the name of the variable ***function_name***.
 
 2. Make sure that you have installed the **AWS CLI** and configured your credentials for accessing your Amazon account.
  If you are unsure of how to do it, access the links below: <br />
  <a href="https://aws.amazon.com/pt/cli/">Download AWS CLI</a> <br />
  <a href="https://docs.aws.amazon.com/pt_br/rekognition/latest/dg/setup-awscli-sdk.html">How to configure AWS CLI</a>
  
 3. The command used to zip the function in `make upload-function` and `make update-function` is a unix command, that is, it will only work on MacOS and Linux distributions, if using Windows it will need a small change.

## [](#how-to-contribute):pencil2: How to contribute

-   Make a fork;
-   Create a branck with your feature:  `git checkout -b my-feature`;
-   Commit changes:  `git commit -m 'feat: My new feature'`;
-   Make a push to your branch:  `git push origin my-feature`.

After merging your receipt request to done, you can delete a branch from yours.

## [](#license):memo: License
This project is under the MIT license. See the [LICENSE]([[https://github.com/robertosousa1/lambda-without-framework/blob/master/LICENSE](https://github.com/robertosousa1/lambda-without-framework/blob/master/LICENSE)]) for more information.

----------

Made with by Roberto Sousa  👋  [Get in touch!](https://www.linkedin.com/in/robertosousa01/)
