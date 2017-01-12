# vault-sample-app

Example app that uses vault init container to get secrets

## Deployment
A kubernetes deployment descriptor is provided, if needed modify the `VERSION` property `Makefile` then run the following

    make
    kubectl create -f sample-app.yml


