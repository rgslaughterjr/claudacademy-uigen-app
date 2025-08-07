# Claude PR Assistance Guide

## Overview
This repository is configured to work with Claude AI for automated pull request assistance, code reviews, and development support.

## Features

### Automated Code Review
Claude can automatically review your pull requests and provide:
- **Code Quality Analysis**: Identify potential bugs, anti-patterns, and areas for improvement
- **Security Scanning**: Detect potential security vulnerabilities
- **Performance Suggestions**: Recommend optimizations for better performance
- **Style Consistency**: Ensure code follows project conventions
- **Documentation Review**: Verify inline comments and documentation completeness

### PR Description Generation
Claude can help generate comprehensive PR descriptions including:
- Summary of changes
- Impact analysis
- Testing recommendations
- Breaking change notifications

### Code Suggestions
Get intelligent suggestions for:
- Refactoring opportunities
- Better error handling
- Improved test coverage
- Enhanced readability

## How to Use Claude PR Assistance

### 1. Creating a Pull Request
When you create a PR, Claude can automatically:
- Review the changed files
- Provide initial feedback
- Suggest improvements

### 2. Requesting Specific Reviews
You can request specific types of review by commenting:
- `@claude review security` - Focus on security issues
- `@claude review performance` - Focus on performance optimizations
- `@claude review tests` - Review test coverage and quality
- `@claude review docs` - Review documentation and comments

### 3. Interactive Assistance
Ask Claude questions directly in PR comments:
- "How can I optimize this function?"
- "Is there a better pattern for this?"
- "What edge cases should I consider?"

## Best Practices

### Before Creating a PR
1. Run local tests: `npm test`
2. Check linting: `npm run lint`
3. Update documentation if needed
4. Write clear commit messages

### PR Title Format
Use conventional commit format:
- `feat:` New feature
- `fix:` Bug fix
- `docs:` Documentation changes
- `style:` Code style changes
- `refactor:` Code refactoring
- `test:` Test additions/changes
- `chore:` Maintenance tasks

### PR Description
Include:
- **What**: Brief description of changes
- **Why**: Reason for the changes
- **How**: Technical approach taken
- **Testing**: How it was tested
- **Screenshots**: Visual changes (if applicable)

## Configuration

### Repository Settings
The repository includes:
- `.github/PULL_REQUEST_TEMPLATE.md` - PR template with Claude integration
- `CLAUDE.md` - Claude-specific project guidance
- Automated workflows for Claude integration

### Environment Variables
For enhanced Claude features, configure:
```env
ANTHROPIC_API_KEY=your_api_key_here
CLAUDE_PR_AUTO_REVIEW=true
CLAUDE_PR_COMMENT_THRESHOLD=minor
```

## Examples

### Example PR with Claude Review

```markdown
## PR Title: feat: Add user authentication system

### Description
Implemented JWT-based authentication with refresh tokens.

### Claude's Review
✅ **Security**: Properly hashed passwords with bcrypt
⚠️ **Suggestion**: Consider adding rate limiting to login endpoint
✅ **Tests**: Good coverage at 85%
💡 **Performance**: Could cache user sessions for faster lookups

### Changes Made Based on Claude's Feedback
- Added rate limiting middleware
- Implemented session caching with Redis
- Added additional error handling
```

## Troubleshooting

### Claude Not Responding
- Verify API key is configured
- Check repository permissions
- Ensure PR is not in draft mode

### Incorrect Suggestions
- Provide more context in CLAUDE.md
- Use specific review commands
- Update project documentation

## Support

For issues with Claude PR assistance:
1. Check the [documentation](https://docs.anthropic.com)
2. Review [CLAUDE.md](../CLAUDE.md) for project-specific guidance
3. Contact repository maintainers

---

*Powered by Claude AI 🤖*