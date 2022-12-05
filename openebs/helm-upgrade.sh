#!/bin/bash
helm upgrade openebs-jiva openebs-jiva/jiva --namespace openebs -f ./values.yaml
