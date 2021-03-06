#!/usr/bin/env bash
#
# Copyright (c) 2019, Digital Asset (Switzerland) GmbH and/or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#

export _JAVA_OPTIONS="-Xms8m -Xmx128m"

source $(dirname "$0")/lib/startTriggers_common.sh

sleep 2
pids=$(jobs -p)
echo Waiting for $pids
wait $pids
