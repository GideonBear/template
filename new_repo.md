- Python:
  - cookiecutter gh:GideonBear/cookiecutter-{pyapp,pylib,pypch}
    - Private: {true,false}
  - https://pypi.org/manage/account/publishing/
    - PyPI Project Name: {name}
    - Owner: GideonBear
    - Repository name: {name}
    - Workflow name: release.yml
    - Environment name: pypi
- Rust:
  - https://crates.io/crates/falconf/settings > Trusted Publishing > Add
    - Workflow filename: release-plz.yml
    - Environment name: crates_io
  - TODO: eerste release moet handmatig. Gewoon een hello world 0.1.0 publishen?
    - TODO: daarover gesproken crates_io tokens voor machines moeten in setuplinux denk ik
  - TODO: dit ook als cookiecutter-rustapp en cookiecutter-rustlib
  - TODO: Rust pre-commit
  - TODO: `cargo init --bin/--lib`
  - TODO: dependabot; `mkdir .github -p && cp {../falconf/,}.github/dependabot.yml`
  - TODO: zie alles van falconf (release.yml, ci.yml, meer)

- https://github.com/GideonBear/{name}/settings/security_analysis
  - Enable "Dependabot alerts"
  - Enable "Dependabot security updates"
- https://github.com/settings/installations/70874322
  - Add repo
- Public repo:
  - https://github.com/settings/installations/35697662
    - Add repo
- Private repo OF Rust repo:
  - Settings > Actions
    - Workflow permissions > Allow GitHub Actions to create and approve pull requests

New GitHub repo
- Set name
- Set description
Watch repo
gh api --method PATCH repos/GideonBear/REPO -f allow_merge_commit=false
Do initial commit
Push initial commit
