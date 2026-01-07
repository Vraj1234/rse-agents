# RSE Agents

Custom AI agents and skills for Research Software Engineering (RSE) and Scientific Computing tasks, designed for use with **Claude Code** and **OpenCode** — two powerful AI coding assistants that support local and cloud-based plugin and skill integrations.

---

## Purpose

This repository provides a unified collection of **agents** and **skills** that specialize in the scientific software development ecosystem. These components are designed to assist with:

- Modern Scientific Python development using community best practices
- Reproducible environment management with **pixi**
- Packaging and distribution with **pyproject.toml**
- Comprehensive testing strategies using **pytest**
- Numerical and scientific computing workflows
- Research software engineering principles and maintainability
- High-performance computing (HPC) and performance optimization
- Integration with the **Scientific Python** ecosystem (NumPy, Pandas, SciPy, Matplotlib, Xarray, etc.)

The repository is structured to support **cross-compatibility** between Claude Code and OpenCode, providing a single source of truth for both ecosystems.

---

## Installation

### **For Claude Code**

To install and use these agents and skills in Claude Code, add this repository to your Claude plugin marketplace:

```bash
/plugin marketplace add uw-ssec/rse-agents
```

Once installed, the agents and skills will appear in the Claude Code plugin list and can be invoked directly within the editor environment.

### **For OpenCode**

To use the same skills and agents in OpenCode, simply ensure this repository is cloned locally with a valid `opencode.json` in place. OpenCode will automatically detect and load agents and skills without requiring any manual attach or linking steps:

```bash
If you add new skills or modify existing ones, sync the links using the provided script (see below).
```

---

## Available Plugins

This repository provides two primary plugin domains:

### 🧩 **Python Development Plugin**

Expert agents and reusable skills for scientific and modern Python development.

**Location:** `plugins/python-development/`

**Agents:**

- **Scientific Python Expert** — comprehensive agent following [Scientific Python Development Guide](https://learn.scientific-python.org/development/) standards.

**Skills:**

- `pixi-package-manager` — reproducible scientific Python environments
- `python-packaging` — modern packaging and project structure
- `python-testing` — robust testing with `pytest`
- `code-quality-tools` — integrated tools for linting and type checking (ruff, mypy, pre-commit)

### 🧠 **Scientific Computing Plugin**

Agents and skills for computational science, numerical methods, and high-performance computing.

**Location:** `plugins/scientific-computing/`

**Agents:**

- **Astronomy & Astrophysics Expert** — provides domain expertise in astronomy, astrophysics, and scientific computing workflows, integrating astropy and xarray-based analysis.

**Skills:**

- `xarray-for-multidimensional-data` — skill for managing and analyzing multi-dimensional scientific data using Xarray and related tools.

**Planned Focus Areas:** HPC workflows, simulations, performance optimization, numerical methods, and domain-specific scientific data handling.

---

## Repository Structure

```
rse-agents/
├── .claude-plugin/
│   └── marketplace.json         # Claude Code marketplace manifest
├── .opencode/
│   └── skills/                  # Symlinked skill definitions for OpenCode
├── plugins/
│   ├── agents/                  # Shared agent definitions
│   └── skills/                  # Shared skill definitions (single source of truth)
├── scripts/
│   └── sync_opencode_skills.sh  # Script to refresh OpenCode skill symlinks
├── shared/
│   └── plugin-manifest.shared.json  # Shared metadata for both Claude and OpenCode
├── LICENSE
├── CONTRIBUTING.md
├── opencode.json                # Configuration for Opencode
├── pixi.toml
└── README.md                    # This file
```

---

## Sync Script

The repository includes a helper script to keep **Claude Code** and **OpenCode** in sync whenever new skills are added.

Run this script from the repository root:

```bash
./scripts/sync_opencode_skills.sh
```

This automatically updates `.opencode/skills/` to match `plugins/skills/` by creating or refreshing symbolic links.

### When to Run:

- After adding a new skill under `plugins/skills/`
- After restructuring or renaming a skill directory

---

## Adding a New Skill

### Step 1 — Create the Skill Folder

Add a new folder inside `plugins/skills/`:

```
plugins/skills/my-new-skill/
```

Inside it, create a file named `SKILL.md` containing your skill definition and description.

### Step 2 — Sync Skills for OpenCode

Run the following command:

```bash
./scripts/sync_opencode_skills.sh
```

This ensures OpenCode can discover the new skill under `.opencode/skills/`.


---

## Activation

### **Activate in Claude Code**

Once installed, agents can be invoked directly:

```bash
@scientific-python-expert please explain your capabilities
```

Claude Code automatically loads all related skills declared in the plugin manifest.

### **Activate in OpenCode**

Once linked, agents are automatically available when OpenCode is launched in the repository. Use `/agents` command or simply tab over to one of the custom agents

---

## Design Philosophy

These agents and skills follow th[e ](https://learn.scientific-python.org/development/)[Scientific Python Development Guide](https://learn.scientific-python.org/development/) and the RSE community principles:

1. **Collaborate** — Use community-standard tooling and conventions.
2. **Refactor Fearlessly** — Maintain high test coverage for confident iteration.
3. **Prefer Wide Over Deep** — Build reusable, extensible components.

---

## Contributing

Contributions are welcome! Please review [CONTRIBUTING.md](CONTRIBUTING.md) for:

- Creating new agents and skills
- Repository structure guidelines
- Testing and best practices
- Submitting pull requests

---

## Related Resources

### Scientific Python

- [Scientific Python Development Guide](https://learn.scientific-python.org/development/)
- [NumPy](https://numpy.org/)[, ](https://scipy.org/)[SciPy](https://scipy.org/)[, ](https://matplotlib.org/)[Matplotlib](https://matplotlib.org/)

### Research Software Engineering

- [UW-SSEC](https://escience.washington.edu/software-engineering/)
- [Best Practices for Scientific Computing](https://journals.plos.org/plosbiology/article?id=10.1371/journal.pbio.1001745)

### Tools

- [Claude Code](https://www.anthropic.com/claude/code)
- [OpenCode](https://opencode.ai)

---

## License

This project is licensed under the **BSD 3-Clause License**. See the [LICENSE](LICENSE) file for details.

---

## Acknowledgments

Developed and maintained by the **University of Washington Scientific Software Engineering Center (UW-SSEC)**.

For support or issues, please open a ticket o[n ](https://github.com/uw-ssec/rse-agents/issues)[GitHub Issues](https://github.com/uw-ssec/rse-agents/issues).