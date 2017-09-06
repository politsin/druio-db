#!/bin/bash

tar czf druio-db.tar.gz /db
aws s3 rm s3://druio/druio-db.tar.gz
aws s3 cp druio-db.tar.gz s3://druio/druio-db.tar.gz
aws s3api put-object-acl --acl public-read --bucket druio --key druio-db.tar.gz
