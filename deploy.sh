docker build -t tangolf/multi-client:latest -t tangolf88/multi-client:$SHA -f ./client/Dockerfile ./client
docker build -t tangolf/multi-server:latest -t tangolf88/multi-server:$SHA -f ./server/Dockerfile ./server
docker build -t tangolf/multi-worker:latest -t tangolf88/multi-worker:$SHA -f ./worker/Dockerfile ./worker

docker push tangolf88/multi-client:latest
docker push tangolf88/multi-client:latest
docker push tangolf88/multi-server:latest

docker push tangolf88/multi-server:$SHA
docker push tangolf88/multi-worker:$SHA
docker push tangolf88/multi-worker:$SHA

kubectl apply -f k8s
kubectl set image deployments/server-deployment server=tangolf88/multi-server:$SHA
kubectl set image deployments/client-deployment client=tangolf88/multi-client:$SHA
kubectl set image deployments/worker-deployment worker=tangolf88/multi-worker:$SHA
