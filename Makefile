.PHONY: build
build:
	kustomize build overlay/kind > deploy/fluent-bit.yaml

apply:
	kubectl apply -f deploy/ && kubectl rollout restart ds fluent-bit -n kube-system