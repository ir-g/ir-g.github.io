#!/bin/sh
echo "Starting Netlify Deploy"
netlify deploy -s moonsquads -p _site -t $NETLIFY_TOKEN
