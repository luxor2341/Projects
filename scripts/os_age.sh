#!/bin/bash

echo $((($(date +%s) - $(stat -c %W /)) / 86400)) days