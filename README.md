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

## 🤝 Contributing

Feel free to submit issues and pull requests!

## 📄 License

MIT

---

Built with Claude Code 🤖