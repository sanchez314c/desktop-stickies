# Security Policy

## Supported Versions

| Version | Supported          |
|---------|-------------------|
| 1.0.x   | :white_check_mark: |
| < 1.0   | :x:               |

## Reporting a Vulnerability

The StickyNotes Desktop team takes security vulnerabilities seriously. We appreciate your efforts to responsibly disclose your findings.

If you discover a security vulnerability, please report it to us privately before disclosing it publicly.

### How to Report

**Email**: sanchez314c@jasonpaulmichaels.co

Please include:
- A clear description of the vulnerability
- Steps to reproduce the issue
- Any potential impact assessment
- Proof-of-concept or exploit code (if available)

### What to Expect

- We will respond within 48 hours acknowledging receipt
- We'll provide a detailed analysis within 7 days
- We'll work on a patch and coordinate disclosure timeline
- We'll credit you in our security advisories (unless you prefer anonymity)

## Security Best Practices

### For Users

1. **Keep Updated**: Always use the latest version of StickyNotes Desktop
2. **Source Verification**: Download only from official sources or GitHub releases
3. **Permissions**: Review app permissions carefully during installation
4. **Network Security**: Ensure your network connection is secure, especially for CloudKit sync

### For Developers

1. **Dependency Management**: Regularly update dependencies and check for vulnerabilities
2. **Code Review**: All code changes must undergo security review
3. **Testing**: Include security tests in your pull requests
4. **Secrets Management**: Never commit secrets, API keys, or sensitive data

## Security Features

### Data Protection

- **Local Encryption**: Notes are encrypted at rest using Core Data security features
- **CloudKit Security**: Leverages Apple's CloudKit end-to-end encryption
- **Secure Transmission**: All network communications use HTTPS/TLS

### Access Control

- **macOS Permissions**: Follows macOS security model and permission requirements
- **Sandboxing**: App is sandboxed to limit system access
- **Code Signing**: All releases are code signed for integrity verification

## Known Security Considerations

### CloudKit Sync

- CloudKit sync requires an active iCloud account
- Apple manages the security infrastructure for synced data
- Local data remains encrypted even without iCloud

### Local Storage

- Notes are stored in the app's container directory
- macOS file permissions protect against unauthorized access
- No data is shared with third parties

## Security Updates

Security updates are delivered through:

1. **GitHub Releases**: Security advisories and patched versions
2. **Auto-Update**: Built-in update mechanism (when implemented)
3. **Mac App Store**: Automatic updates for MAS users

## Security Changelog

### Version 1.0.0
- Initial secure release
- Core Data encryption enabled
- CloudKit integration with Apple's security model
- Code signing and notarization

## Threat Model

### We Protect Against

- Unauthorized access to local notes
- Man-in-the-middle attacks during sync
- Malicious code injection
- Data tampering

### Out of Scope

- Physical device compromise
- Compromised Apple ID (for CloudKit features)
- OS-level vulnerabilities
- Social engineering attacks

## Security Contacts

- **Security Lead**: Jasonn Michaels
- **Email**: sanchez314c@jasonpaulmichaels.co
- **PGP Key**: Available on request

## Acknowledgments

We thank all security researchers who help us keep StickyNotes Desktop secure. Your contributions are invaluable.

---

*This security policy is part of our commitment to maintaining user trust and data protection.*