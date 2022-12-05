#!/bin/bash
helm upgrade awx-operator awx-operator/awx-operator --namespace awx -f ./values.yaml
