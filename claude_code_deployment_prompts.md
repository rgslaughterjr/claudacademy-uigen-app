# Global Development Environment - Claude Code Deployment Prompts

## Phase 0: Complete Infrastructure Cleanup (MANDATORY FIRST STEP)

### Pre-Cleanup Environment Assessment
```
Create comprehensive system scanning script that identifies all existing development infrastructure, running services, installed packages, database instances, Docker containers, and firewall rules. Generate detailed cleanup plan with selective preservation options for critical configurations.
```

### Selective Cleanup Configuration Manager
```
Build interactive cleanup configuration tool that allows selective preservation of specific elements: GitHub SSH keys, VS Code extensions list, custom environment variables, project bookmarks, and database schemas. Include export/import functionality for preserved configurations.
```

### Comprehensive Server Infrastructure Removal
```
Create PowerShell script to completely remove all existing localhost server infrastructure including Node.js servers, Express applications, React dev servers, and any running services on common development ports (3000-9999). Include process termination, service removal, port cleanup, and progress reporting with rollback capability.
```

### Docker Container & Image Purge with Backup
```
Generate complete Docker cleanup script that removes all containers, images, volumes, and networks. Include optional Docker configuration backup, Docker Desktop reset, removal of development containers, database containers, and cleanup of Docker data directory with restoration points.
```

### Database Infrastructure Cleanup with Schema Preservation
```
Remove all existing database installations including PostgreSQL, MongoDB, MySQL, SQLite files, and associated services. Include optional schema export, service uninstallation, data directory cleanup, registry entries removal, and port release with database restoration capability.
```

### Node.js & NPM Global Reset with Package List Backup
```
Completely reset Node.js environment including global package list export, global package uninstallation, npm cache cleanup, node_modules removal across all drives, package-lock.json cleanup, and Node.js version manager reset for clean installation with package restoration option.
```

### Windows Firewall Rule Removal with Rule Backup
```
Remove all existing development-related Windows Firewall rules, port exceptions, and application permissions. Include firewall rule export, cleanup of custom firewall rules for localhost services, Docker, databases, and testing frameworks with rule restoration capability.
```

### Firewalla Blue Plus Rule Cleanup with Configuration Export
```
Create scripts to identify and remove any existing Firewalla Blue Plus rules related to development services, localhost ports, and custom network configurations. Include configuration backup, API-based rule removal, and network policy reset with restoration procedures.
```

### Visual Studio & VS Code Configuration Reset with Settings Backup
```
Reset Visual Studio and VS Code configurations to default state, including settings export, workspace cleanup, extension list backup, settings synchronization disable, and removal of project-specific configurations across all drives with selective restoration.
```

### System Registry & Path Cleanup with Restoration Points
```
Clean Windows registry entries for removed development tools, create system restore point, reset PATH environment variables, remove development-related environment variables, and cleanup system configuration changes with complete rollback capability.
```

### Cleanup Verification & Progress Monitoring
```
Create comprehensive verification suite that confirms complete infrastructure removal, validates port availability, checks service termination, verifies registry cleanup, and provides detailed cleanup progress reporting with success/failure status for each component.
```

### Rollback & Emergency Restoration System
```
Build emergency rollback system that can restore previous development environment state from backup points, including selective restoration of specific components, configuration rollback procedures, and emergency recovery options for critical system failures during cleanup.
```

## Phase 1: System Configuration & Global Setup

### Global PowerShell Environment Configuration
```
Create a global PowerShell profile setup script in C:\Windows\System32\WindowsPowerShell\v1.0 that configures development environment variables, PATH modifications for external drives, and aliases for development commands across all connected drives.
```

### Windows Firewall Global Rules
```
Generate PowerShell script to create persistent Windows Firewall rules for development ports 3000, 4000, 5432, 8080, 9229, and MCP custom ports. Include rules for all network adapters and external drive access, with automatic detection of connected USB drives.
```

### Firewalla Blue Plus Integration
```
Create PowerShell scripts that interface with Firewalla Blue Plus firmware 1.980 API to configure network rules for development environment. Include subnet 192.168.86.x whitelist rules, automatic port management, and external drive network access permissions.
```

## Phase 2: Development Stack Deployment

### Visual Studio Installation & Configuration
```
Install Visual Studio Community/Professional with full development workloads including .NET, C++, Python, and Node.js tools. Configure global settings for multi-drive project support, external drive indexing, and integration with development environment across all connected storage devices.
```

### Docker Desktop Global Configuration
```
Install and configure Docker Desktop with global container orchestration for portable development across C: drive and external drives. Include volume mapping for external drives, container networking through Firewalla Blue Plus, and development container templates for Next.js, PostgreSQL, and testing frameworks.
```

### Visual Studio Code Multi-Drive Workspace
```
Configure Visual Studio Code with global workspace settings that automatically discover and manage projects across all drives. Include extensions for Next.js, PostgreSQL, Docker integration, multi-root workspace configuration, and synchronized settings across drive locations.
```

### Next.js Global Development Server
```
Set up Next.js development environment with global configuration that automatically detects project locations across C: drive and external drives. Include hot reload configuration, environment variable management, Docker container integration, and automatic port assignment starting from 3000.
```

### Database Infrastructure Setup
```
Deploy PostgreSQL server with global access configuration for projects across all drives, including Docker containerization, automatic database discovery, SQLite integration with cross-drive file access, and connection pooling management for multiple project locations.
```

### Testing Framework Global Configuration
```
Configure Jest test runner and Playwright end-to-end testing with global coverage across all drive locations. Include Docker test containers, automatic test discovery, port management (Jest: 9229, Playwright: 8080), and cross-drive test execution capabilities.
```

## Phase 3: Integration & External Services

### MCP Server Compatibility Testing Suite
```
Create comprehensive MCP server testing infrastructure with automatic server discovery across all drive locations, protocol validation, connection testing through Firewalla Blue Plus, and integration testing with development applications.
```

### GitHub Integration & CI/CD Setup
```
Configure GitHub CLI, SSH key management, and git operations for global repository access across all drives. Include webhook receiver setup (port 4000), automatic repository detection, and CI/CD pipeline configuration for multi-drive project structure.
```

### Cross-Drive Project Management
```
Develop project management utility that automatically discovers development projects across C: drive and external drives, manages dependencies, coordinates database connections, and provides unified development server orchestration.
```

## Phase 4: Monitoring & Automation

### Network Connectivity Monitor
```
Create real-time monitoring dashboard for all development services, including port status across drives, Firewalla Blue Plus rule validation, GitHub connectivity testing, database connection health, and automatic troubleshooting recommendations.
```

### Development Environment Automation
```
Build comprehensive automation script that starts entire development stack with one command, including drive detection, service startup sequence, port conflict resolution, firewall rule verification, and health check reporting.
```

### Global Configuration Management
```
Generate configuration management system that maintains consistent development settings across all drives, handles environment variable synchronization, manages database connections, and provides backup/restore functionality for development configurations.
```

## Phase 6: Backup & Drive Management

### Automated Development Configuration Backup
```
Create automated backup system for all development configurations, VS Code settings, Docker containers, database schemas, and project dependencies across all drives. Include incremental backup scheduling, cloud storage integration, and one-click restore functionality for complete environment recreation.
```

### External Drive Health Monitoring
```
Deploy comprehensive drive health monitoring system that tracks SMART data, disk usage, read/write performance, and connection stability for all external drives. Include automated alerts for drive issues, predictive failure analysis, and automatic project migration recommendations.
```

## Phase 5: Security & Cleanup

### Security Hardening Scripts
```
Create security configuration for development environment that works with Firewalla Blue Plus intrusion detection, implements proper access controls for external drives, manages SSL certificates for HTTPS development, and provides secure database access controls.
```

### Environment Cleanup & Management
```
Develop cleanup utilities that can safely shut down development services across all drives, clean temporary files, manage log rotation, reset port assignments, and provide system resource monitoring and optimization.
```

## Deployment Sequence

**CRITICAL: Must execute Phase 0 first to ensure clean slate**

0. **MANDATORY**: Run Phase 0 cleanup scripts as Administrator to remove all existing infrastructure
1. Run Phase 1 scripts as Administrator to configure global system settings
2. Execute Phase 2 to deploy core development infrastructure with Visual Studio and Docker
3. Implement Phase 3 for external service integration and MCP compatibility
4. Deploy Phase 4 for monitoring and automation across all drives
5. Apply Phase 5 security and maintenance procedures
6. Configure Phase 6 backup systems and drive health monitoring

## Environment Variables Required
- `FIREWALLA_IP=192.168.86.213`
- `DEV_SUBNET=192.168.86.x`
- `GLOBAL_DEV_PATH=C:\DevEnvironment`
- `EXTERNAL_DRIVES_PATH=D:\,E:\,F:\` (auto-detected)
- `GITHUB_USERNAME=[your-username]`
- `DOCKER_DATA_ROOT=C:\ProgramData\Docker`
- `VSCODE_GLOBAL_SETTINGS=C:\Users\[username]\AppData\Roaming\Code\User`
- `BACKUP_DESTINATION=[backup-location]`

**WARNING**: Phase 0 will completely remove all existing development infrastructure. Backup any important data before proceeding.