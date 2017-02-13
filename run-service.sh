#!/usr/bin/env bash

source env.current
python application.py db upgrade
python service.py