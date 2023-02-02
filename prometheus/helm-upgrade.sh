#!/bin/bash
helm upgrade prometheus prometheus-community/prometheus --namespace prometheus -f ./values.yaml
