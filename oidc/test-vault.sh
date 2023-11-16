#!/bin/bash
set -e

export VAULT_TOKEN=$(echo $VAULT_TOKEN | xargs)
echo "Vault token value $VAULT_TOKEN and more text"
echo "Putting vault key value"
./vault kv put -mount=secrets-for-env0 creds passcode=my-long-passcode
echo "Getting vault key value"
./vault kv get -mount=secrets-for-env0 -field=passcode creds