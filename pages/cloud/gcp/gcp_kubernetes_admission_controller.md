# How to process *Google Cloud Kubernetes Admission Controller* rule
This rule Identifies when an admission controller is executed in GCP Kubernetes. A Kubernetes Admission controller intercepts, and possibly modifies, requests to the Kubernetes API server. The behavior of this admission controller is determined by an admission webhook (MutatingAdmissionWebhook or ValidatingAdmissionWebhook) that the user deploys in the cluster. An adversary can use such webhooks as the MutatingAdmissionWebhook for obtaining persistence in the cluster. For example, attackers can intercept and modify the pod creation operations in the cluster and add their malicious container to every created pod. An adversary can use the webhook ValidatingAdmissionWebhook, which could be used to obtain access credentials. An adversary could use the webhook to intercept the requests to the API server, record secrets, and other sensitive information.

# 1. Identify
TODO

# 2. Contextualize
TODO

# 3. Decide
TODO

# Known False Negatives
None yet.
