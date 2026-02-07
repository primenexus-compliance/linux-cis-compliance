#!/bin/bash

PROFILE="xccdf_org.ssgproject.content_profile_cis"
CONTENT="/usr/share/xml/scap/ssg/content/ssg-ol8-ds.xml"
OUTPUT_DIR="./reports"

mkdir -p $OUTPUT_DIR

oscap xccdf eval \
  --profile $PROFILE \
  --results $OUTPUT_DIR/results.xml \
  --report $OUTPUT_DIR/cis-report.html \
  $CONTENT
