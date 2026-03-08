- TODO: First release has to be manual. Just publish a hello world v0.1.0? Should be automated in the script. Try it out
  the first time.
  - crates.io token might need to be included in setuplinux
- https://crates.io/crates/{{ cookiecutter.dash_name }}/settings > Trusted Publishing > Add
  - Workflow filename: release-plz.yml
  - Environment name: crates_io
  - Enable "Require trusted publishing for all new versions"
