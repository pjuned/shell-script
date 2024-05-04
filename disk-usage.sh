#!/bin/bash

disk-usage=$(df -hT | grep -vE 'tmp|File')