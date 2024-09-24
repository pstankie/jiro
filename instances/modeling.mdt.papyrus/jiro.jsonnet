local jiro = import '../../templates/jiro.libsonnet';

jiro+ {
  "config.json"+: import "config.jsonnet",
  "k8s/statefulset.json"+: {
    spec+: {
      template+: {
        spec+: {
          containers: [
            container + {
              env: [
                if (env.name == "JAVA_OPTS") then
                  env + {
                    value: env.value + " -XX:-HeapDumpOnOutOfMemoryError -XX:-CreateCoredumpOnCrash"
                  } else
                  env
                for env in super.env
              ]
            } for container in super.containers
          ],
        },
      },
    },
  },
}

