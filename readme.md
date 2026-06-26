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

- [x] Add in image ingestion
- [x] Make frontend to display data
- [x] Make containers
- [x] Create IOS Shortcut

- [ ] Make serverless with Azure
- [ ] Make / connect supabase
- [ ] Finish refactoring/linking backend

- [ ] deploy frontend GCP free compute
