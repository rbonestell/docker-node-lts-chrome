# Node LTS + Chrome Docker Image

A low maintenance Docker image combining Node.js LTS with Google Chrome, intended for CI/CD pipelines and automated testing workflows.

## Overview

This image extends the official `node:lts` base image and adds a stable version of Google Chrome, providing a reliable environment for:

- Running headless browser tests
- Executing automated UI tests
- Generating PDFs or screenshots
- Any pipeline tasks requiring both Node.js and Chrome

## Key Features

- Built on `node:lts` for long-term maintainability
- Includes the latest stable version of Google Chrome
- Comes with Xvfb for virtual framebuffer support
- Includes process management utilities via procps
