#!/bin/sh
echo "Starting Netlify Deploy"
netlify deploy -s ir-g-uk -p _site -t $NETLIFY_TOKEN
