# Claude Code in Action

A comprehensive repository containing Claude Code projects and documentation for AI-powered development.

## 🚀 Projects

### UIGen - AI-Powered React Component Generator
An advanced React component generator built with Next.js 15 that creates components from natural language descriptions.

**Features:**
- 🤖 AI-powered component generation using Claude
- 📁 Virtual file system (in-memory, no disk writes)
- 🔐 JWT authentication with user projects
- 🎨 Live preview with Tailwind CSS
- 🧪 210+ comprehensive tests

**Quick Start:**
```bash
cd uigen
npm run setup  # Install deps, generate Prisma, run migrations
npm run dev    # Start dev server on http://localhost:3000
```

## 📚 Documentation

- **[CLAUDE.md](CLAUDE.md)** - Claude Code guidance for this repository
- **[Model Use Cases](claude_code_model_use_cases.md)** - Guide for selecting optimal Claude models
- **[Deployment Prompts](claude_code_deployment_prompts.md)** - Comprehensive development environment setup

## 🛠️ Tech Stack

- **Frontend**: Next.js 15, React 19, TypeScript, Tailwind CSS
- **Backend**: Prisma ORM, SQLite/PostgreSQL
- **AI**: Anthropic Claude via Vercel AI SDK
- **Testing**: Vitest, React Testing Library
- **Monitoring**: Sentry, OpenTelemetry

## 📋 Requirements

- Node.js 20+
- npm or yarn
- Anthropic API key (optional - falls back to mock)

## 🔑 Setup Claude PR Assistance

This repository includes Claude AI integration for automated PR reviews. To enable:

1. **Get Anthropic API Key**: Visit [console.anthropic.com](https://console.anthropic.com/)
2. **Add to GitHub Secrets**: 
   - Go to Settings → Secrets → Actions
   - Add `ANTHROPIC_API_KEY`
3. **Test locally**: Run `test-anthropic-key.bat YOUR_KEY`

See [SETUP_ANTHROPIC_KEY.md](SETUP_ANTHROPIC_KEY.md) for detailed instructions.

## 🤝 Contributing

Feel free to submit issues and pull requests! Claude AI will automatically review your code.

## 📄 License

MIT

---

Built with Claude Code 🤖

## 🧪 Testing PR Template

This line was added to test the GitHub PR template and Claude integration.