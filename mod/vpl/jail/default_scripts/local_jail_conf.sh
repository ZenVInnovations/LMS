#!/bin/bash

# Python 3 configuration
export PYTHON3=/opt/homebrew/bin/python3
export PYTHON3_VERSION="3.13.3"

# C/C++ configuration (using Apple Clang)
export GCC=/usr/bin/gcc
export GPP=/usr/bin/g++
export GCC_VERSION="Apple clang 17.0.0"
export GPP_VERSION="Apple clang 17.0.0"

# Java configuration
export JAVA=/usr/bin/java
export JAVAC=/usr/bin/javac
export JAVA_VERSION="19.0.1"

# Node.js configuration
export NODE="/Users/beemagarivenkatesh/Library/Application Support/Herd/config/nvm/versions/node/v22.16.0/bin/node"
export NODE_VERSION="22.16.0"

# PHP configuration
export PHP="/Users/beemagarivenkatesh/Library/Application Support/Herd/bin/php"
export PHP_VERSION="8.3.13"

# Ruby configuration
export RUBY=/usr/bin/ruby
export RUBY_VERSION="2.6.10"

# Perl configuration
export PERL=/usr/bin/perl
export PERL_VERSION="5.34.1"

# Set default maximum execution time (in seconds)
export VPL_MAXTIME=120

# Set default maximum memory usage (in KB)
export VPL_MAXMEMORY=1024000

# Set default maximum processes
export VPL_MAXPROCESSES=400

# Set default maximum filesize (in KB)
export VPL_MAXFILESIZE=64000

# Enable debugging for supported languages
export VPL_DEBUGGER=1 