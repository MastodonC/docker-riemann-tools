#!/bin/bash

HOST=${HOST:=10.101.0.99}

echo "HOST is ${HOST}"

/usr/local/bin/riemann-health --host ${HOST}
