local utils = import 'utils.libsonnet';

local PodSpec = {
  containersObj:: {
    foo: {
      envObj:: {
        var1: 'somevalue',
        var2: 'somevalue',
      },
      env: utils.pairList(self.envObj),
    },
    bar: {
      envObj:: {
        var2: 'somevalue',
        var3: 'somevalue',
      },
      env: utils.pairList(self.envObj),
    },
  },
  containers:
    utils.namedObjectList(self.containersObj),
};

PodSpec {
  containersObj+: {
    bar+: { envObj+: { var3: 'othervalue' } }
  }
}