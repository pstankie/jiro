{
  project+: {
    fullName: "ecd.che",
    displayName: "Eclipse Che"
  },
  jenkins+: {
    plugins+: [
      "job-dsl",
      "purge-build-queue-plugin",
    ],
  },
  seLinuxLevel: "s0:c32,c14",
}
