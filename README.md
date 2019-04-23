# PugMe

## Introduction
PugMe is a technical demonstration of the following iOS development concepts:

- Separation of Concerns
- Dependency Injection
- Mocking using [Cuckoo](https://github.com/Brightify/Cuckoo)

The main goal is to show you how to setup a clean codebase with these concepts and how they combine to make an app that is easily testable.

## Requirements
To build and run this application you need:

- Xcode 10.1+
- Cocoapods

## Running the app
- Open "Install cocoapods.command" from finder to install all required libraries.
- Open PugMe.xcworkspace in Xcode
- Run on any simulator or device

## Executing tests
All unit tests should be run on an iPhone SE Simulator. This matters because Snapshot tests are used that rely on a certain screensize and platform.

