#!/bin/sh

# Note: These variable values can include a path (absolute or relative)
ruby=ruby
compiler=inform6
nailbin=../../bin
naillib=../../lib
dictionary=generated_dictionary.h
source1=game.inf
source2="$naillib/parser.h"
source3=grammar.inf
outfile=game.z3
debug_outfile=game_debug.z3

# Build dictionary
$ruby "$nailbin/build_dictionary.rb" "$dictionary" "$source1" "$source2" "$source3"
if [ $? -ne 0 ]; then
    exit $?
fi

# Transform code
$ruby "$nailbin/transform_code.rb" "$dictionary" "$source1" "$source2" "$source3"
if [ $? -ne 0 ]; then
    exit $?
fi

# Compile debug version
$compiler '$OMIT_SYMBOL_TABLE=0' -Cu -v3eD +"$naillib" '$#RUNTIME_ERRORS=2' "$@" "generated_$source1" "$debug_outfile"
if [ $? -ne 0 ]; then
    exit $?
fi

# Compile release version
$compiler '$OMIT_SYMBOL_TABLE=1' -Cu -v3es +"$naillib" '$#RUNTIME_ERRORS=0' "$@" "generated_$source1" "$outfile"
