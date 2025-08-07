# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This repository contains multiple projects and documentation related to Claude Code usage and deployment:

1. **UIGen** (`/uigen`) - AI-powered React component generator built with Next.js 15
2. **Deployment Documentation** - Comprehensive deployment prompts for development environment setup
3. **Model Use Cases** - Guide for selecting optimal Claude models for different tasks

## Commands

### UIGen Project (`/uigen` directory)

**Development**
- `npm run dev` - Start development server with Turbopack on http://localhost:3000
- `npm run dev:daemon` - Start dev server in background with logging to logs.txt
- `npm run build` - Build production application
- `npm run start` - Start production server

**Testing**
- `npm test` - Run all tests using Vitest
- `npm test <pattern>` - Run tests matching a specific pattern
- `npm test -- --watch` - Run tests in watch mode

**Database**
- `npm run setup` - Full setup: install dependencies, generate Prisma client, and run migrations
- `npx prisma generate` - Generate Prisma client after schema changes
- `npx prisma migrate dev` - Create and apply new migrations
- `npm run db:reset` - Reset database (WARNING: deletes all data)

**Code Quality**
- `npm run lint` - Run Next.js linting

## Architecture

### UIGen (`/uigen`)

**Core Components**
- Virtual File System (`src/lib/file-system.ts`) - In-memory file management, no disk writes
- AI Chat Interface (`src/app/api/chat/route.ts`) - Anthropic Claude integration with custom tools
- Authentication (`src/lib/auth.ts`) - JWT-based auth with bcrypt password hashing
- Database - Prisma with SQLite (dev) / PostgreSQL (prod), generated client at `src/generated/prisma`

**Key Patterns**
- Server-only code uses `server-only` import guard
- Client components marked with `"use client"`
- All React components use Tailwind CSS
- App.jsx is always the entry point (no HTML files)
- Components use `@/` import alias for local imports

**Testing**
- 210+ tests with Vitest and React Testing Library
- Test files in `__tests__` directories
- Mock implementations for auth and database

## Environment Requirements

### UIGen
- Node.js 20+ required
- Anthropic API key optional (falls back to mock)
- JWT secret required for authentication
- Database URL (SQLite for dev, PostgreSQL for prod)

## Known Issues & Solutions

### UIGen
- **AI SDK v5 Breaking Changes**: `useChat` moved from `ai` to `@ai-sdk/react`, returns `sendMessage` instead of `input`/`handleInputChange`/`handleSubmit`
- **Turbopack on Windows**: If permission errors with `.next/trace`, disable Turbopack in next.config.ts

## Model Selection Guide

Valid Claude Code model IDs:
- `claude-3-haiku-20240307` - Fast, cost-effective for simple tasks
- `claude-3-5-sonnet-20241022` - Balanced, developer favorite
- `claude-3-7-sonnet-20250219` - Hybrid reasoning for complex tasks
- `claude-opus-4-1-20250805` - Highest capability for critical systems

See `claude_code_model_use_cases.md` for detailed selection criteria.

## Development Environment Setup

See `claude_code_deployment_prompts.md` for comprehensive deployment scripts covering:
- Phase 0: Complete infrastructure cleanup (mandatory first step)
- System configuration and global setup
- Development stack deployment (Visual Studio, Docker, Node.js)
- Integration with external services
- Monitoring and automation
- Security hardening and cleanup utilities

## Restoration Procedures

### Development Server Restoration
- Development server restoration success procedure: Verify service connectivity, check port availability, and validate configuration files before restarting