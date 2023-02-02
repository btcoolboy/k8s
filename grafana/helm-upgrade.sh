#!/bin/bash
helm upgrade grafana grafana/grafana --namespace grafana -f ./values.yaml
