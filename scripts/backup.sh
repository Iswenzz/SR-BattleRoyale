#!/bin/bash
source "$(dirname "$0")/.cod4env"

set -o pipefail
mkdir -p ~/backups
mysqldump -u root -p --single-transaction battleroyale | gzip > ~/backups/battleroyale_$(date +%Y%m%d_%H%M%S).sql.gz
