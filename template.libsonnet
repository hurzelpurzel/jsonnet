{
    "kind": "Deployment",
    "apiVersion": "apps/v1",
    "metadata": {
        "name": "hello",
        "namespace": "default",
        "creationTimestamp": null,
        "labels": {
            "app": "hello"
        }
    },
    "spec": {
        "replicas": 1,
        "selector": {
            "matchLabels": {
                "app": "hello"
            }
        },
        "template": {
            "metadata": {
                "creationTimestamp": null,
                "labels": {
                    "app": "hello"
                }
            },
            "spec": {
                "containers": [
                    {
                        "name": "hello-world",
                        "image": "hello-world",
                        "resources": {}
                    }
                ]
            }
        },
        "strategy": {}
    },
    "status": {}
}
