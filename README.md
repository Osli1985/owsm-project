kub/
https://blog.wescale.fr/introduction-a-helm



Nœuds :
Machines qui exécutent les tâches qui leur sont assignées par le plan de contrôle.
Pod :
Un ou plusieurs conteneurs déployés sur un seul nœud. Le pod est l'objet Kubernetes le plus petit et le plus simple.
Service :
Méthode qui permet d'exposer une application exécutée sur un ensemble de pods en tant que service réseau. Le service dissocie la définition des tâches des pods.
kubectl :
Interface en ligne de commande dans laquelle vous pouvez gérer votre cluster Kubernetes. En savoir plus sur les commandes de base kubectl et Helm pour débutants
kubelet :
Minuscule application située au sein de chaque nœud qui communique avec le plan de contrôle. Le kubelet s'assure que les conteneurs sont exécutés dans un pod.


minkube


HELM:
	• Helm est le package manager soutenu et recommandé par Kubernetes
	• permet donc de déployer des applications / stacks complètes en utilisant un système de templating et de dépendances afin d’éviter la duplication et avoir ainsi une arborescence cohérente pour nos fichiers de configurations.
	• il propose également la possibilité de gérer vos Charts avec la possibilité de les compresser et de les mettre dans un répertoire distant (Cdn, Git, disque local ou partagé…).
	Il intègre aussi un système facilitant les Updates et Rollbacks de vos applications.
	
	Fonctionnement
	
	Quelques concepts sont importants avant d’aborder la suite :
	
	• Un package Kubernetes est appelé Charts dans Helm.
	• Un Chart contient un lot d’informations nécessaires pour créer une instance d’application Kubernetes.
	• La Config contient les informations dynamiques concernant la configuration d’un Chart
	• Une Release est une instance existante sur le cluster, combinée avec une Config spécifique.
	
	
	
	
	• Lors de l’initialisation de Helm, le client installe Tiller sur un pod du cluster.
	• Tiller est le serveur qui communique avec le client Helm et l’API de Kubernetes pour gérer vos déploiements
	
	Quelques commandes utiles
	
	helm install my-chart
	Permet d’installer le chart : my-chart avec comme nom de release aléatoire dans votre cluster kubernetes
	
	helm upgrade my-release my-chart
	Permet d’upgrade notre release avec une nouvelle version.
	
	helm ls
	Permet de lister les Charts installés sur votre Cluster
	
	helm delete my-release
	Permet de désinstaller la release my-release de kubernetes
	
	
	
	
	

Certified Kubernetes Application Developer: https://www.cncf.io/certification/ckad/
Candidate Handbook: https://www.cncf.io/certification/candidate-handbook
Exam Tips: https://docs.linuxfoundation.org/tc-docs/certification/tips-cka-and-ckad
 
Keep the code - DEVOPS15 - handy while registering for the CKA or CKAD exams at Linux Foundation to get a 15% discount.

Youtube : https://www.youtube.com/watch?v=X48VuDVv0do




ARCHI KUB


Master

Api Server

Scheduler

Controller Manager

etcd







Minikube

Minikube start --vm-driver=hyperkit


Kubectl:

Kubectl get nodes

Kubectl get pod

Kubectl get services

Kubectl create -h  exp : kubectl create deployment nginx-depl --image=nginx

Kubectl get deployment

Kubectl get replicaset

Kubectl logs <pod-name>

Kubectl exec -it <pod_name> -- bin/bash

Kubectl delete deployment <pod_name>

Kubectl apply -f <file_config>
