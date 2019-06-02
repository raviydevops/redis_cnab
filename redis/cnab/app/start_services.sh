#!/bin/bash
# service docker start
# service docker restart
# sleep 10
# service docker status 
# docker rm `docker ps --no-trunc -aq`
# k3d create --name k3s_custom
# sleep 15
# echo "k3d get-kubeconfig: $(k3d get-kubeconfig --name k3s_custom)"
# export KUBECONFIG="$(k3d get-kubeconfig --name k3s_custom)"
for script in /etc/profile.d/*.sh ; do
    if [ -r $script ] ; then
            . $script
    fi
done
kubectl get pods --all-namespaces

kubectl create -f /cnab/app/rbac-config.yaml
helm init --service-account tiller
