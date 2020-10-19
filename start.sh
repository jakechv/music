#!/usr/bin/env bash
set -euo pipefail

ghci <<< ':script BootTidal.hs'
# echo ':script BootTidal.hs' | ghci
