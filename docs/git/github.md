# GitHub

## Initial Setup

If you're setting up a code repository for the first time, there are a few items to consider to ensure you set yourself up for success in the long run.

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
