!#/bin/sh
// should publish site to s3 bucket
s3cmd sync --delete-removed ./_site/ s3://michaelchelen.net/
