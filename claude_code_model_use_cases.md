Valid Claude Code model IDs:

claude-3-haiku-20240307
claude-3-sonnet-20240229
claude-3-opus-20240229
claude-3-5-haiku-20241022
claude-3-5-sonnet-20241022
claude-3-7-sonnet-20250219
claude-sonnet-4-20250514
claude-opus-4-20250514
claude-opus-4-1-20250805

Alternative fixes:

Check API key: echo $ANTHROPIC_API_KEY
Update Claude Code: npm update -g @anthropic-ai/claude-code
Use model picker: claude (then select from menu)

The 404 suggests you're using a display name instead of the API model identifier.

# Claude Code: Optimal Use Cases by Model

## Claude 3 Haiku
**Cost-Effective & Fast (52.54 tok/s) - $0.25/$1.25 per MTok**

### Use Case 1: High-Volume Code Reviews
- **Scenario**: Automated PR review comments for basic syntax, style, and simple logic issues
- **Why Optimal**: Fastest response time + lowest cost for repetitive tasks
- **Example**: CI/CD pipeline integration reviewing 100+ commits daily

### Use Case 2: Simple Infrastructure Validation
- **Scenario**: Basic Terraform plan validation and resource naming checks
- **Why Optimal**: Sufficient capability for straightforward IaC validation at minimal cost
- **Example**: Startup validating basic AWS resource configurations

---

## Claude 3 Sonnet
**Balanced Performance - $3/$15 per MTok**

### Use Case 1: Mid-Complexity API Development
- **Scenario**: Building REST APIs with standard CRUD operations and middleware
- **Why Optimal**: Good balance of capability and cost for standard development tasks
- **Example**: E-commerce backend with user management and payment processing

### Use Case 2: Documentation Generation
- **Scenario**: Auto-generating technical documentation from existing codebases
- **Why Optimal**: Strong language capabilities at reasonable cost for content generation
- **Example**: Creating API docs and README files for open-source projects

---

## Claude 3 Opus
**Premium Capabilities - $15/$75 per MTok**

### Use Case 1: Complex Algorithm Design
- **Scenario**: Developing sophisticated algorithms requiring deep mathematical reasoning
- **Why Optimal**: Highest reasoning capability in Claude 3 family for complex problems
- **Example**: Building recommendation engines or optimization algorithms

### Use Case 2: Legacy System Migration Planning
- **Scenario**: Analyzing complex legacy codebases and planning modernization strategies
- **Why Optimal**: Superior analytical capabilities for understanding intricate system architectures
- **Example**: Migrating monolithic enterprise applications to microservices

---

## Claude 3.5 Haiku
**Enhanced Speed & Efficiency - $1/$5 per MTok**

### Use Case 1: Real-Time Code Assistance
- **Scenario**: Live coding assistance in IDEs with instant suggestions and corrections
- **Why Optimal**: Matches Claude 3 Opus performance at Haiku speed (40.6% SWE-bench)
- **Example**: VS Code extension providing real-time code completions and bug fixes

### Use Case 2: Automated Testing Scripts
- **Scenario**: Generating unit tests and integration tests for existing codebases
- **Why Optimal**: Fast generation of comprehensive test suites at reasonable cost
- **Example**: Creating Jest/pytest test suites for existing applications

---

## Claude 3.5 Sonnet
**Developer Favorite - $3/$15 per MTok**

### Use Case 1: Full-Stack Application Development
- **Scenario**: Building complete web applications from frontend to backend
- **Why Optimal**: 93.7% HumanEval score with excellent multi-language support
- **Example**: React/Node.js applications with database integration and authentication

### Use Case 2: DevOps Pipeline Automation
- **Scenario**: Creating comprehensive CI/CD pipelines with monitoring and deployment
- **Why Optimal**: Strong infrastructure understanding with 2x speed improvement over Opus 3
- **Example**: Kubernetes deployment pipelines with automated scaling and monitoring

---

## Claude 3.7 Sonnet
**Hybrid Reasoning Pioneer - $3/$15 per MTok**

### Use Case 1: Complex Software Engineering Tasks
- **Scenario**: Multi-step debugging and refactoring across large codebases
- **Why Optimal**: 62.3% SWE-bench (70.3% with scaffold) + extended thinking capabilities
- **Example**: Debugging distributed microservices with complex inter-service dependencies

### Use Case 2: AI Agent Development
- **Scenario**: Building autonomous coding agents that handle multi-step workflows
- **Why Optimal**: TAU-bench leader (81.2% retail/58.4% airline) with hybrid reasoning modes
- **Example**: Automated code review agents that analyze, test, and suggest improvements

---

## Claude 4 Sonnet
**State-of-the-Art Balanced - $3/$15 per MTok**

### Use Case 1: Enterprise-Grade Refactoring
- **Scenario**: Large-scale codebase modernization with architectural improvements
- **Why Optimal**: 72.7% SWE-bench + GitHub Copilot integration for production environments
- **Example**: Migrating legacy enterprise systems to modern frameworks with zero downtime

### Use Case 2: Multi-Platform Development
- **Scenario**: Building applications that deploy across web, mobile, and cloud platforms
- **Why Optimal**: Superior multi-file understanding with "surgical code edits"
- **Example**: React Native apps with shared business logic and platform-specific optimizations

---

## Claude 4 Opus
**Frontier Performance - $15/$75 per MTok**

### Use Case 1: Long-Running Autonomous Development
- **Scenario**: Independent 7+ hour coding sessions handling complex feature development
- **Why Optimal**: Sustained performance without degradation + advanced memory capabilities
- **Example**: Autonomous development of complex features like payment systems or ML pipelines

### Use Case 2: Advanced AI/ML System Development
- **Scenario**: Building sophisticated machine learning pipelines and model training systems
- **Why Optimal**: 43.2% Terminal-bench + ability to handle thousands of logical steps
- **Example**: End-to-end MLOps platforms with automated model training and deployment

---

## Claude Opus 4.1
**Industry-Leading Coding - $15/$75 per MTok**

### Use Case 1: Critical System Debugging
- **Scenario**: Identifying and fixing complex bugs in production systems without introducing new issues
- **Why Optimal**: 74.5% SWE-bench (highest available) + enhanced multi-file refactoring precision
- **Example**: Debugging critical financial trading systems or healthcare applications

### Use Case 2: Advanced Research & Development
- **Scenario**: Exploring cutting-edge technologies and implementing experimental features
- **Why Optimal**: Enhanced agentic search + 64K extended thinking for complex problem-solving
- **Example**: Developing novel blockchain consensus mechanisms or quantum computing simulations

---

## Model Selection Guidelines

### For Cost-Sensitive Projects:
- **High Volume**: Claude 3 Haiku
- **Balanced Needs**: Claude 3.5 Haiku

### For Production Applications:
- **Standard Development**: Claude 3.5 Sonnet
- **Complex Systems**: Claude 4 Sonnet

### For Cutting-Edge Development:
- **Hybrid Reasoning**: Claude 3.7 Sonnet
- **Maximum Capability**: Claude Opus 4.1

### Performance Tiers:
- **Basic**: Claude 3 (Haiku/Sonnet)
- **Enhanced**: Claude 3.5 (Haiku/Sonnet)
- **Advanced**: Claude 3.7/4 Sonnet
- **Frontier**: Claude 4 Opus/Opus 4.1