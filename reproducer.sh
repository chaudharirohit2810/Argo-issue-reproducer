kubectl apply -f wftemplate.yaml -n argo 
kubectl apply -f configmap.yaml -n argo 
for i in {1..700}; do argo submit wf.yaml -n argo; done
