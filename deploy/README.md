# Deployer

We tend to use CI and CD as developers, but we need users to have an easy way to deploy our software easily.

The deployment infrastructure they target varies also from a Desktop, to a multi-cluster kubernettes.

SO we need an anstraction layer that can handle everything via a shell to each.

github.com/jerson/deployer
- a simple TUI
- very configurable with waiting as each part deploys
- light and run anywhere.
- we can configure for our topolgies since its so light and simple.

## Roadmap

SO basic testing with examle goalng server hooked up to PROM and Grafana for asseting that its working.

- local desktops in your local network.

- hertzer server with just SSH keys

- docker with scaffold or k8 ? We want them to have flexibility
