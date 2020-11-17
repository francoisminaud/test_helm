#!/bin/sh
set -e;

# Very basic testing. This would require to at least test custom values for each chart.

for chart in $(ls -d */); do (
    echo "Checking $chart...";
    cd $chart;
    helm lint;
    helm template --validate . > /dev/null;
) done
