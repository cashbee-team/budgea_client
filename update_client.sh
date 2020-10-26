#!/bin/sh

openapi_path=budgea_openapi.json

echo "[INFO] Generate client"
swagger-codegen generate -i $openapi_path -l ruby -o . -c config.json
