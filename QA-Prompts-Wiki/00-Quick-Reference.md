# ⚡ Quick Reference Guide

**One-page cheat sheet for QA prompting**

---

## 🎯 Basic Prompt Structure

```
Generate [NUMBER] [ARTIFACT TYPE] for [SYSTEM] [FEATURE]
Priority: [LEVEL]
Phase: [SDLC PHASE]
```

**Example:**
```
Generate 5 API tests for CRM Platform user authentication
Priority: Critical
Phase: Testing
```

---

## 📋 Common Artifacts

| Artifact | Prompt Keyword | Cost |
|----------|---------------|------|
| Test Cases | `test cases` | $0.004 |
| API Tests | `API tests` | $0.004 |
| Gherkin/BDD | `gherkin scenarios` | $0.004 |
| Security Tests | `security tests` | $0.005 |
| Performance Tests | `performance tests` | $0.005 |
| Test Plan | `test plan` | $0.006 |
| Test Report | `test report` | $0.005 |

---

## 🎨 Add Format (Optional)

**After your basic prompt, add:**

```
Format:
[YOUR PREFERRED FORMAT]
```

**Or reference format library:**

```
Use format from: [Format Library link]
```

---

## 🔧 SDLC Phases

| Phase | Common Tasks | Prompts |
|-------|-------------|---------|
| Requirements | Test planning, risk analysis | [Link](01-Requirements/) |
| Design | Test design, test case creation | [Link](02-Design/) |
| Development | Unit, API, component tests | [Link](03-Development/) |
| Testing | Functional, integration, security, performance | [Link](04-Testing/) |
| UAT | Acceptance, business validation | [Link](05-UAT/) |
| Deployment | Smoke tests, verification | [Link](06-Deployment/) |
| Maintenance | Bug fixes, regression | [Link](07-Maintenance/) |

---

## 💡 Pro Tips

### 1. Start Minimal
```
✅ Generate 5 API tests for login
❌ Generate 5 comprehensive API test cases with full documentation...
```

### 2. Add Format Only When Needed
```
Basic: Just ask for tests
+Format: Add structure when team needs consistency
```

### 3. Specify Priority
```
Priority: Critical → Focus on critical paths first
Priority: Medium → Include more edge cases
```

### 4. Include Context
```
Better: "Generate API tests for CRM login in Testing phase"
Worse: "Generate API tests"
```

### 5. Iterate
```
First: Generate tests
Then: "Add security test cases"
Then: "Add edge cases for invalid input"
```

---

## 🎯 Quick Templates

### Minimal (Fastest)
```
Generate [N] [type] for [system] [feature]
```

### Standard (Recommended)
```
Generate [N] [type] for [system] [feature]
Priority: [level]
Phase: [phase]
```

### Detailed (Complex Tasks)
```
Generate [N] [type] for [system]

Context:
- Phase: [phase]
- Priority: [level]
- Environment: [env]

Feature: [description]

Format: [optional format]
```

---

## 📊 Cost Guide

| Complexity | Tokens | Cost | When to Use |
|------------|--------|------|-------------|
| Minimal | 500 | $0.003 | Quick tasks, iterations |
| Standard | 800 | $0.005 | Daily work, team use |
| Detailed | 1200 | $0.007 | Complex artifacts, documentation |

---

## 🚀 Common Workflows

### Workflow 1: Quick API Tests
```
1. "Generate 5 API tests for login"
2. Review output
3. "Add 2 security test cases"
4. Done!
```
**Cost:** ~$0.007 total

---

### Workflow 2: Complete Test Suite
```
1. "Generate test plan for checkout feature"
2. "Generate 10 test cases for the plan"
3. "Generate API tests for payment endpoint"
4. "Generate security tests for data validation"
```
**Cost:** ~$0.020 total

---

### Workflow 3: Documentation
```
1. "Generate test strategy for Sprint 10"
2. "Generate test report for last week's testing"
3. "Generate regression test checklist"
```
**Cost:** ~$0.018 total

---

## 🎨 Format Examples

### API Test Format
```
API-TEST-001: POST /endpoint - Scenario
Priority: Critical
Method: POST
Request: {...}
Expected: Status + validation
```

### Test Case Format
```
TEST-001: Test Title
Priority: High
Steps: 1. Action 2. Verify
Expected: Outcome
```

### Gherkin Format
```
Scenario: Title
  Given state
  When action
  Then result
```

---

## 🔍 Finding the Right Prompt

**By Phase:** Check SDLC phase folders  
**By Artifact:** Use table of contents  
**By Format:** Check Format Library  

---

## ⚡ Speed Tips

1. **Bookmark common prompts** - Save your favorites
2. **Create templates** - Your own variations
3. **Use snippets** - Text expander tools
4. **Chain prompts** - Build iteratively
5. **Reference formats** - Don't rewrite structure

---

## 🎯 Next Steps

- Explore [Full Library](00-INDEX.md)
- Read [Best Practices](00-Best-Practices.md)
- Check [Format Library](99-Formats/)

---

**Happy Prompting! ⚡**
