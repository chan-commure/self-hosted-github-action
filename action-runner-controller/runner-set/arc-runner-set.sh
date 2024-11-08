INSTALLATION_NAME="arc-runner-set"
NAMESPACE="arc-runners"
helm install "${INSTALLATION_NAME}" \
    --namespace "${NAMESPACE}" \
    --create-namespace \
    --set controllerServiceAccount.name="${INSTALLATION_NAME}" \
    --set controllerServiceAccount.namespace="${INSTALLATION_NAME}" \
    --set containerMode.type=dind \
    --set githubConfigUrl="${GITHUB_CONFIG_URL}" \
    --set githubConfigSecret.github_token="${GITHUB_PAT}" \
    oci://ghcr.io/actions/actions-runner-controller-charts/gha-runner-scale-set --dry-run
