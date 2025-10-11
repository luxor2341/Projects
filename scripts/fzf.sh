#!/bin/bash

nvim $(fzf --preview='bat --color=always {}')