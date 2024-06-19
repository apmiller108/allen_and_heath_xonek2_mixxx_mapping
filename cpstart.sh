#!/usr/bin/env bash

# Copies the mapping files to Mixxx's user controller directory and starts Mixxx
# with controller debugging.
cp allen_and_heath_xone_k2* ~/.mixxx/controllers && mixxx --controllerDebug
