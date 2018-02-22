## build the time app container image

```
./build.sh
```

## create the time pod

```
kubectl apply -f time.yaml
```

## view the log

```
kubetail time
```

## delete the time pod

```
kubectl delete pod time
```

## create the time deployment

```
kubectl apply -f time-deployment.yaml
```

## view the logs

```
kubetail time
```

## delete the deployment

```
kubectl delete deploy time
```

