#!/bin/sh
echo "Starting Netlify Deploy"
netlify deploy -s irg-uk -p _site -t $NETLIFY_TOKEN
