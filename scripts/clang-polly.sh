#! /bin/sh
# SPDX-License-Identifier: GPL-2.0
# Copyright (c) 2021, Diab Neiroukh <lazerl0rd@thezest.dev>

# Get the LLVM library directory from the configuration tool.
pollyLib="$($(dirname $(which $@))/llvm-config --libdir)/LLVMPolly.so"

if [ -f "$pollyLib" ]; then
	exit 0
else
	exit 1
fi
