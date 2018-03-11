#!/bin/bash
FN=$1
cat header-partial-template
cat $FN
cat footer-partial-template

