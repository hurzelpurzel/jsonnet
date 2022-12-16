local template = import 'template.libsonnet';
template.spec.template.spec.containers[0] +{env: [{ name: "n", value:"val"}]}
