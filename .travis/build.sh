#!/bin/bash

if [[ $TRAVIS_BRANCH == 'master' ]]
then
  mvn --settings .maven.xml clean install -B -U
else
  mvn --settings .maven.xml clean deploy -Prelease -B -U
fi