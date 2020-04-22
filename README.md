# LingoQA

LingoQA is a portal to simplify localization quality assurance by comparing UI images in multiple languages.

How it works?:

1. Take a screenshot of your Project UI in multiple languages.
2. Upload a screenshot to the portal.
3. Send Portal link to linguists/Translation reviewers for verifying quality. 
4. Linguists can simply compare images and pass/fail images based on issues.
5. Report will be generated.
6. Send reports to your stakeholders. 


## Table of Contents

- [Background](#background)
- [Install](#install)
- [Usage](#usage)
- [Maintainers](#maintainers)
- [Contributing](#contributing)
- [License](#license)

## Background

Many translators are still using the live product environment for doing translation review. Its has multiple drawbacks:

1. Need to set up and deploy a customized environment for translators for review.
2. Translators need to learn product usage. i.e. How to traverse through all UI.
3. Testing in a live environment is very time consuming.

We have tools like Selenium, Cucumber. These tools help to generate screenshots of project UI. One can simply upload these screenshots in LingoQA portal and share links with Translations reviewers (Linguist).

After QA metrics will be generated for translation quality and the same will be delivered to stakeholders.

The goals for this Projects are:

1. Provide a portal for uploading screenshots of product UI.
2. Easy UI for comparing and reporting Translations issues.
3. Preparing metrics post translations.

## Install

Ruby Version: 2.6.3p62
Rails Version: 6.0.1
Database Design: https://github.com/lingostack/lingoqa/blob/master/database_structure.png

Steps:

1. $git clone https://github.com/lingostack/lingoqa.git
2. $cd lingoqa
3. $bundle install
4. $rake db:create
5. $rake db:migrate
6. $rails s

## Usage

1. Generate screenshots of Product UI in multiple languages. 
2. Upload screenshots in Amazon S3 Bucket
3. Configure LingoQA for your project.

## Contributors
(Alphabetical)

* [@aaditi-jain](https://github.com/aaditi-jain)
* [@pravins](https://github.com/pravins)
* [@rahulbajaj0509](https://github.com/rahulbajaj0509)
* [@sshedmake](https://github.com/sshedmake)
* [@sourabh-upadhyay](https://github.com/sourabh-upadhyay)
* [@tpardeshi](https://github.com/tpardeshi)

## Contributing

Feel free to dive in! [Open an issue](https://github.com/lingostack/lingoqa/issues/new) or submit PRs.

## License
GNU General Public License, version 3 (GPLv3)
