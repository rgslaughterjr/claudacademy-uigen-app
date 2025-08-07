# Setting Up ANTHROPIC_API_KEY for GitHub Actions

## 📋 Quick Setup Guide

### Step 1: Get Your Anthropic API Key

1. Go to [https://console.anthropic.com/](https://console.anthropic.com/)
2. Sign in or create an account
3. Navigate to **API Keys** section
4. Click **Create Key**
5. Copy your API key (starts with `sk-ant-api...`)

### Step 2: Add to GitHub Repository Secrets

1. Go to your repository: https://github.com/rgslaughterjr/cc_in_action
2. Click **Settings** tab
3. In the left sidebar, click **Secrets and variables** → **Actions**
4. Click **New repository secret**
5. Add the secret:
   - **Name**: `ANTHROPIC_API_KEY`
   - **Value**: Paste your API key
6. Click **Add secret**

## 🔧 Alternative: Using GitHub CLI (if available)

If you have GitHub CLI installed, you can add the secret via command line:

```bash
# Set your API key as environment variable first
set ANTHROPIC_API_KEY=sk-ant-api-xxx-your-key-here

# Then add to GitHub
gh secret set ANTHROPIC_API_KEY --repo rgslaughterjr/cc_in_action
```

## 📝 Local Development Setup

For local testing, create a `.env` file in the project root:

```env
# .env file (already in .gitignore)
ANTHROPIC_API_KEY=sk-ant-api-xxx-your-key-here
```

Or set as Windows environment variable:

```cmd
# Command Prompt
setx ANTHROPIC_API_KEY "sk-ant-api-xxx-your-key-here"

# PowerShell
[System.Environment]::SetEnvironmentVariable("ANTHROPIC_API_KEY", "sk-ant-api-xxx-your-key-here", "User")
```

## ✅ Verify Setup

After adding the secret, you can verify it's working by:

1. Creating a test pull request
2. The Claude bot should automatically comment
3. Try mentioning `@claude` in a PR comment

## 🔒 Security Notes

- **Never commit** your API key to the repository
- The key is encrypted in GitHub Secrets
- Only accessible to GitHub Actions workflows
- Not visible to other contributors

## 💰 API Usage & Billing

- Claude API usage is billed per token
- Monitor usage at https://console.anthropic.com/
- Consider setting spending limits
- PR reviews typically use Claude 3.5 Sonnet ($3/$15 per MTok)

## 🚀 Features Enabled After Setup

Once the API key is configured, your repository will have:

- ✅ Automatic PR reviews on every pull request
- ✅ Interactive `@claude` commands in PR comments
- ✅ Security vulnerability detection
- ✅ Performance optimization suggestions
- ✅ Code quality analysis
- ✅ Documentation completeness checks

## 📊 Recommended Settings

For optimal PR reviews, consider these Anthropic Console settings:

1. **Model**: Claude 3.5 Sonnet (best for code review)
2. **Rate Limits**: Set appropriate limits for your team size
3. **Spending Limits**: Configure monthly spending caps

## 🆘 Troubleshooting

### Claude not responding to PRs?
- Verify the secret name is exactly `ANTHROPIC_API_KEY`
- Check GitHub Actions tab for workflow errors
- Ensure the API key is valid and has credits

### Getting rate limited?
- Check your Anthropic Console for usage
- Consider upgrading your plan
- Implement caching for repeated reviews

### Want to disable for certain PRs?
- Add `[skip-claude]` to PR title
- Or create draft PRs (Claude skips drafts)

## 📚 Additional Resources

- [Anthropic API Documentation](https://docs.anthropic.com/claude/docs)
- [GitHub Secrets Documentation](https://docs.github.com/en/actions/security-guides/encrypted-secrets)
- [Claude Pricing](https://www.anthropic.com/api-pricing)

---

*Need help? Check the [Claude PR Assistance Guide](docs/CLAUDE_PR_ASSISTANCE.md)*