#!/bin/bash

print() {
echo "$1" >> README.md
}

run() {
echo "\`\`\`" >> README.md
echo "-> $1" >> README.md
$1 >> README.md
echo "\`\`\`" >> README.md
echo "" >> README.md
}

cat <<EOT > README.md
# sfdx-mobilesdk-plugin 

A plugin for the Salesforce CLI to create mobile applications to interface with the [Salesforce Platform](http://www.salesforce.com/platform/overview/), leveraging the [Salesforce Mobile SDK for iOS](https://github.com/forcedotcom/SalesforceMobileSDK-iOS) and the [Salesforce Mobile SDK for Android](https://github.com/forcedotcom/SalesforceMobileSDK-Android) repos.

## Setup

### Install from source

1. Install the SDFX CLI (https://developer.salesforce.com/tools/sfdxcli).

2. Clone the repository: \`git clone git@github.com:forcedotcom/SalesforceMobileSDK-Package\`

3. Install npm modules: \`npm install\`

4. Link the plugin: \`sfdx plugins:link sfdx\`

### Install as plugin

1. Install plugin: \`sfdx plugins:install sfdx-mobilesdk-plugin\`

EOT

print "## Help"
run 'sfdx mobilesdk --help'
print "## Create a native iOS application "
print "### Help for iOS"
run 'sfdx mobilesdk:ios --help'
print "### Create Objective-C (native) or Swift (native_swift) application"
run 'sfdx mobilesdk:ios:create --help'
print "### Create iOS application from template"
run 'sfdx mobilesdk:ios:createWithTemplate --help'

print "## Create a native Android application "
print "### Help for Android"
run 'sfdx mobilesdk:android --help'
print "### Create Java (native) or Kotlin (native_kotlin) application"
run 'sfdx mobilesdk:android:create --help'
print "### Create Android application from template"
run 'sfdx mobilesdk:android:createWithTemplate --help'

print "## Create an hybrid application "
print "### Help for hybrid"
run 'sfdx mobilesdk:hybrid --help'
print "### Create hybrid application"
run 'sfdx mobilesdk:hybrid:create --help'
print "### Create hybrid application from template"
run 'sfdx mobilesdk:hybrid:createWithTemplate --help'

print "## Create a React Native application"
print "### Help for React Native"
run 'sfdx mobilesdk:reactnative --help'
print "### Create React Native application"
run 'sfdx mobilesdk:reactnative:create --help'
print "### Create React Native application from template"
run 'sfdx mobilesdk:reactnative:createWithTemplate --help'

