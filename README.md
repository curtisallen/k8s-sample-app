# k8s-sample-app

Example app that uses k8s for deployment

## Deployment
A kubernetes deployment descriptor is provided, if needed modify the `VERSION` property `Makefile` then run the following

    make
    kubectl create -f k8s-sample-app.yml

## watch

    watch -n 0.2 -d http --timeout 1 `minikube service k8s-sample-app --url`/foo

## Deployment kubectl commands

Create deployment	

    kubectl create -f k8s-sample-app.yml

Update deployment after making a change to k8s-sample-app.yml

    kubectl replace -f k8s-sample-app.yml

View deployment status

    kubectl rollout stuats deployments k8s-sample-app

Rollback deployment

    kubectl rollout undo deployment/k8s-sample-app

Scale deployment

    kubectl scale deployment k8s-sample-app --replicas 10

Auto scale deployment

    kubectl autoscale deployment k8s-sample-app --min=1 --max=10 --cpu-percent=80

SSH access container

    kubectl exec -it <pod id> -- /bin/ash

## Service Discovery

Kubernetes will automatically allow services to be addressable via their service name.

    kubectl create -f k8s-sample-app2.yml

Get logs for app2

    kubectl logs <pod id>

## ConfigMaps

Kubernetes can manage application configuration using ConfigMaps

    kubectl create -f k8s-sample-configmap.yml

Interact with the container 

    watch -n 0.2 http --timeout 1 `minikube service k8s-sample-configmap --url`/bar

Change the ConfigMap value

    kubectl edit configmap sample-configmap

Restart the pod to pick up the changes

    kubectl delete pod <pod id>
