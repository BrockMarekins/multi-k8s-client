IMAGE=brockmarekins/multi-k8s-client

docker build -t "$IMAGE":latest -t "$IMAGE":"$SHA" .
docker push "$IMAGE":latest
docker push "$IMAGE":"$SHA"

kubectl set image deployments/client-deployment client="$IMAGE":"$SHA"
