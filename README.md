# k8s-sample-app

Example app that uses k8s for deployment

## Deployment
A kubernetes deployment descriptor is provided, if needed modify the `VERSION` property `Makefile` then run the following

    make
    kubectl create -f k8s-sample-app.yml

## watch

    watch -n 0.2 -d http http://`minikube service k8s-sample-app --url`/foo
## kubectl commands

Update deployment

    kubectl replace -f k8s-sample-app.yml

View deployment status

    kubectl rollout stuats deployments k8s-sample-app

Rollback deployment

    kubectl rollout undo deployment/k8s-sample-app

Scale deployment

    kubectl scale deployment k8s-sample-app --replicas 10

Auto scale deployment

    kubectl autoscale deployment k8s-sample-app --min=1 --max=10 --cpu-precent=80
