{
  project+: {
    fullName: "ee4j.rest",
    displayName: "Jakarta RESTful Web Services",
  },
  jenkins+: {
    plugins+: [
      "copyartifact",
    ],
  },
  seLinuxLevel: "s0:c58,c27",
}
