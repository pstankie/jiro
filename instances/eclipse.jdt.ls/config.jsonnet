{
  project+: {
    fullName: "eclipse.jdt.ls",
    displayName: "Eclipse JDT Language Server",
    resourcePacks: 3,
  },
  jenkins+: {
    plugins+: [
      "build-timestamp",
      "copyartifact",
      "envinject",
      "issue-link",
      "mattermost",
    ],
  },
  seLinuxLevel: "s0:c46,c45",
}
