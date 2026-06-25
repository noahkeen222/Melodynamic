# Melodynamic

## Summary

My project to ingest survey results and music listening history to determine trends and make
suggestions. Will work with Azure serverless, Supabase, IOS Shortcuts for survey data, and GCP
free compute for frontend.

## OMM

- Song from album sometimes gets read as single which causes issue with album data api call.
- Song data shows album as "{artist} - {album}", probably just fix this when pulling data
- URL is being blocked by last fm firewall? Saw this was a common issue and cant even go in through internet

## TODO

### Near Term

[] - Add in image ingestion
[] - Make frontend to display data
[] - Make / connect supabase
[] - Make serverless with Azure

### Long Term

[] - Make deployable frontend container for GCP