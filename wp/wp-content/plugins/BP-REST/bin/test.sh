#!/bin/bash

set -ex

# Run the unit tests, if they exist
if [ -f "phpunit.xml" ] || [ -f "phpunit.xml.dist" ]
then
	vendor/bin/phpunit
fi
