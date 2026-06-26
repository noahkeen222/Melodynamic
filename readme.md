# Melodynamic

## Summary

My project to ingest survey results and music listening history to determine trends and make
suggestions. Will work with Azure serverless, Supabase, IOS Shortcuts for survey data, and GCP
free compute for frontend.

## OMM

- Song from album sometimes gets read as single which causes issue with album data api call.
- Song data shows album as "{artist} - {album}", probably just fix this when pulling data
- URL is being blocked by last fm firewall? Saw this was a common issue and cant even go in through browser

## TODO

### Near Term

- [x] Add in image ingestion
- [x] Make frontend to display data
- [ ] Make serverless with Azure
- [ ] Make / connect supabase
- [ ] Create IOS Shortcut  
- [ ] Make deployable frontend container for GCP
