# GitHub

1. [Initial Setup](#initial-setup)
1. [GitHub Actions](#github-actions)
    1. [Key Features](#key-features)

## Initial Setup

If you're setting up a code repository for the first time, there are a few items to consider to ensure you set yourself up for success.

1. Repository Structure and Naming
    - Name the Repository Clearly: Use a descriptive name that reflects the project's purpose.
        - Example: `terraform-aws-infra`
    - Organize the Directory: Use a clear directory structure (e.g., src/, tests/, docs/) for maintainability.
2. Repository Type
    - Public vs Private:
        - Choose Public if you want the project to be open-source or shared with the community.
        - Choose Private for confidential or work-in-progress code.
3. Initial Files
    - `README.md`: Include a `README.md` file with an overview of the project, installation instructions, usage examples, and contribution guidelines.
    - LICENSE: Add a license file (e.g., MIT, Apache 2.0) to define how others can use your code. GitHub provides a built-in tool for selecting a license.
    - `.gitignore`: Use a .gitignore file to exclude sensitive or unnecessary files from version control. Example for Terraform:
        ```
        .terraform/
        *.tfstate
        *.tfstate.backup
        .terraform.lock.hcl
        ```
    - `CHANGELOG.md`: Optional but useful for tracking major changes between releases.
4. Branching Strategy
    - Default Branch: Set the default branch to main (or master, depending on your preference).
5. Version Control and Tagging
    - Use semantic versioning (v1.0.0, v2.0.0) for releases. Add Git tags for milestones or stable releases.
6. Collaboration
    - Write a `CONTRIBUTING.md`: Provide guidelines for contributing, reporting issues, or suggesting features.
    - Set Up Pull Request Templates: Create a .github/pull_request_template.md file to standardize pull request descriptions.
7. Automation
    - GitHub Actions: Automate testing, linting, and deployment using GitHub Actions workflows.
    - Dependabot: Enable Dependabot for automated dependency updates.
8. Security
    - Protect Sensitive Data: Never commit sensitive information (e.g., API keys, credentials). Use tools like dotenv or secrets management.
    - Enable Branch Protection Rules: Prevent direct pushes to the main branch. Require PR reviews and status checks (e.g., CI tests) before merging.
    - Enable Secret Scanning: Use GitHub's secret scanning to detect leaked secrets in your repository.
9. Example repo structure:
    ```
    my-awesome-project/
    │
    ├── src/               # Source code
    ├── tests/             # Test files
    ├── docs/              # Documentation
    ├── README.md          # Project overview
    ├── .gitignore         # Ignored files
    ├── LICENSE            # License information
    └── .github/           # GitHub-specific files (e.g., PR templates, workflows)
    ```

## GitHub Actions

GitHub Actions is designed to:

- Automate workflows: Streamline repetitive tasks like testing, building, and deploying code.
- Enhance CI/CD pipelines: Enable continuous integration (CI) and continuous delivery/deployment (CD) directly within GitHub.
- Integrate with tools and services: Easily connect with third-party tools or APIs to extend functionality.
- Empower collaboration: Facilitate team workflows by triggering actions based on repository events.

### Key Features

- Event-driven workflows: Trigger workflows on GitHub events like push, pull_request, issue, or custom events.
- Customizable YAML configuration: Define workflows using .yml files stored in the .github/workflows/ directory.
- Reusable actions: Leverage prebuilt actions from the GitHub Marketplace or create custom actions.
- Cross-platform support: Run jobs on Linux, macOS, or Windows environments.
- Integration with secrets: Securely use sensitive data (e.g., API keys, credentials) in workflows.

### Creating Actions

