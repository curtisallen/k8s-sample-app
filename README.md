# k8s-sample-app

Example app that uses k8s for deployment

## Deployment
A kubernetes deployment descriptor is provided, if needed modify the `VERSION` property `Makefile` then run the following

    make
    kubectl create -f k8s-sample-app.yml


