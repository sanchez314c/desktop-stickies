# Contributing to StickyNotes Desktop

Thank you for your interest in contributing to StickyNotes Desktop! We welcome all types of contributions - code, documentation, design, testing, and community support.

📖 **For detailed contribution guidelines, please see:** [Developer Contributing Guide](docs/developer/contributing.md)

## 🚀 Quick Start

### 🐛 Reporting Issues

1. **Search existing issues** before creating a new one
2. Use provided templates:
   - [Bug Report](.github/ISSUE_TEMPLATE/bug_report.md)
   - [Feature Request](.github/ISSUE_TEMPLATE/feature_request.md)
3. **Provide detailed information**:
   - Steps to reproduce
   - Expected vs actual behavior
   - Environment details (macOS version, app version)
   - Screenshots if applicable

### 💻 Making Code Changes

1. **Fork the repository**
   ```bash
   # Fork on GitHub, then clone your fork
   git clone https://github.com/your-username/desktop-stickies
   cd desktop-stickies
   ```

2. **Set up upstream remote**
   ```bash
   git remote add upstream https://github.com/sanchez314c/desktop-stickies
   git fetch upstream
   ```

3. **Create a feature branch** from `main`
   ```bash
   git checkout -b feature/your-feature-name
   # or for bug fixes:
   git checkout -b fix/issue-number-description
   ```

4. **Make your changes** following our code standards
   - Follow [Code Style Guide](docs/developer/code-style.md)
   - Add tests for new functionality
   - Update documentation as needed
   - Ensure all tests pass

5. **Commit with clear messages**
   ```bash
   git add .
   git commit -m "feat: add new feature description"
   # Use conventional commit format:
   # feat: new feature
   # fix: bug fix
   # docs: documentation changes
   # style: formatting changes
   # refactor: code refactoring
   # test: adding/updating tests
   # chore: maintenance tasks
   ```

6. **Push and create Pull Request**
   ```bash
   git push origin feature/your-feature-name
   # Then create PR on GitHub
   ```

### 📝 Documentation Contributions

1. **Identify what needs improvement**
   - Outdated information
   - Missing explanations
   - Unclear instructions
   - New features not documented

2. **Make changes**
   - Edit relevant markdown files
   - Update screenshots if needed
   - Test instructions for accuracy

3. **Submit changes**
   - Follow same git workflow as code changes
   - Use `docs:` prefix in commit messages

### 🎨 Design Contributions

1. **UI/UX Improvements**
   - Create mockups or prototypes
   - Explain user experience improvements
   - Consider accessibility implications

2. **Visual Assets**
   - Icons, illustrations, or graphics
   - Follow existing design system
   - Provide multiple resolutions

3. **Submission**
   - Open issue with design proposal
   - Include mockups and rationale
   - Get feedback before implementation

### 🧪 Testing Contributions

1. **Bug Reports**
   - Detailed reproduction steps
   - Environment information
   - Expected vs actual behavior

2. **Test Cases**
   - Write unit tests for new features
   - Add integration tests where appropriate
   - Include edge cases and error conditions

3. **Performance Testing**
   - Identify performance bottlenecks
   - Suggest optimizations
   - Provide benchmark data

## 🛠️ Development Setup

### System Requirements
- **macOS**: 13.0+ (Ventura or later)
- **Xcode**: 15.0+ with command line tools
- **Swift**: 5.10+
- **Git**: 2.30+

### Quick Setup
```bash
# Clone repository
git clone https://github.com/sanchez314c/desktop-stickies
cd desktop-stickies

# Install dependencies
swift package resolve

# Open in Xcode
open Package.swift

# Run tests
swift test
```

### Development Workflow
1. **Create feature branch** from latest `main`
2. **Make incremental commits** with clear messages
3. **Run tests frequently** to catch issues early
4. **Update documentation** as you code
5. **Submit PR** when ready for review

## 📋 Pull Request Process

### Before Submitting
- [ ] Code follows project style guidelines
- [ ] All tests pass locally
- [ ] Documentation is updated
- [ ] Commits follow conventional format
- [ ] PR description is clear and comprehensive

### PR Template
```markdown
## Description
Brief description of changes and their purpose.

## Type of Change
- [ ] Bug fix (non-breaking change which fixes an issue)
- [ ] New feature (non-breaking change which adds functionality)
- [ ] Breaking change (fix or feature that would cause existing functionality to not work as expected)
- [ ] Documentation update

## Testing
- [ ] All new and existing tests pass
- [ ] Code follows project style guidelines
- [ ] Self-review of code completed
- [ ] Code is commented appropriately

## Checklist
- [ ] My code follows the style guidelines of this project
- [ ] I have performed a self-review of my own code
- [ ] I have commented my code, particularly in hard-to-understand areas
- [ ] I have made corresponding changes to the documentation
- [ ] My changes generate no new warnings
- [ ] I have added tests that prove my fix is effective or that my feature works
- [ ] New and existing unit tests pass locally with my changes
- [ ] Any dependent changes have been merged and published in downstream modules
```

### Review Process
1. **Automated Checks**: CI/CD pipeline runs tests and linting
2. **Peer Review**: At least one maintainer review required
3. **Feedback**: Address reviewer comments promptly
4. **Approval**: Merge after approval and CI passes

## 🏆 Recognition

### Contributor Credits
- **AUTHORS file**: All contributors listed
- **Release Notes**: Major contributors acknowledged
- **Community Highlights**: Outstanding contributions featured
- **Maintainer Pathway**: Active contributors may become maintainers

### Types of Contributions We Value
- **Bug Fixes**: Help stabilize the application
- **New Features**: Enhance user experience
- **Documentation**: Improve user and developer experience
- **Testing**: Increase code reliability
- **Translation**: Make app accessible globally
- **Community Support**: Help other users
- **Design**: Improve visual experience and usability

## 🤝 Community Guidelines

### Code of Conduct
- Follow our [Code of Conduct](CODE_OF_CONDUCT.md)
- Be respectful and inclusive
- Focus on constructive feedback
- Help newcomers feel welcome

### Communication
- **GitHub Issues**: For bugs and feature requests
- **Discussions**: For questions and general discussion
- **PR Reviews**: Professional and constructive
- **Email**: For sensitive or private matters

## 📚 Additional Resources

### Documentation
- [Developer Guide](docs/developer/DEVELOPMENT.md)
- [API Reference](docs/developer/api-reference.md)
- [Architecture Overview](docs/architecture/architecture-overview.md)
- [Testing Strategy](docs/testing/testing-strategy.md)

### Support
- [Support Guide](SUPPORT.md)
- [Troubleshooting](docs/user/troubleshooting.md)
- [FAQ](docs/user/faq.md)

### Project Governance
- [Governance Model](GOVERNANCE.md)
- [Code of Conduct](CODE_OF_CONDUCT.md)
- [Project Roadmap](docs/ROADMAP.md)

---

## 🎉 Getting Started

Ready to contribute? Here's how to begin:

1. **Choose your area**: Code, docs, design, testing, or community
2. **Start small**: Fix a bug or improve documentation
3. **Ask questions**: Use GitHub Discussions for help
4. **Learn and grow**: We're here to support your journey

**Thank you for helping improve StickyNotes!** Every contribution, no matter how small, makes a difference.

---

For complete development environment setup, testing procedures, and detailed code contribution guidelines, please refer to our [comprehensive contributing guide](docs/developer/contributing.md).