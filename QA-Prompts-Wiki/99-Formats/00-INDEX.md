# 🎨 Format Library

**Reusable output formats for consistent QA artifacts**

---

## 📋 What's This?

Pre-defined formats you can add to **any prompt** to get consistent, professional output.

**How to use:**
1. Start with your minimal prompt
2. Add: `Format: [copy format from here]`
3. Generate!

---

## 🗂️ Available Formats

### Test Artifacts

- **[Test Cases Format](Test-Cases-Format.md)** - Standard functional test cases
- **[API Tests Format](API-Tests-Format.md)** - REST API testing
- **[Gherkin/BDD Format](Gherkin-Format.md)** - Behavior-driven development
- **[Security Tests Format](Security-Format.md)** - Vulnerability testing
- **[Performance Tests Format](Performance-Format.md)** - Load and stress testing

### Documentation

- **[Test Plan Format](Test-Plan-Format.md)** - Comprehensive test planning
- **[Test Strategy Format](Test-Strategy-Format.md)** - High-level approach
- **[Test Report Format](Test-Report-Format.md)** - Execution results
- **[Test Charter Format](Test-Charter-Format.md)** - Exploratory testing

### Quick References

- **[Checklist Format](Checklist-Format.md)** - Quick verification lists
- **[Traceability Matrix Format](Traceability-Matrix-Format.md)** - Requirements coverage

---

## 💡 How to Use Formats

### Method 1: Copy Full Format

```
Generate 5 API tests for login

Format:
API-TEST-[ID]: [METHOD] [Endpoint] - [Scenario]
Priority: [level]
Method: GET/POST/PUT/DELETE
Request: {...}
Expected: Status + validation
```

### Method 2: Reference Format

```
Generate 5 API tests for login
Use format from: API Tests Format Library
```

### Method 3: Custom Mix

```
Generate 5 tests for checkout

Format: Use Test Cases Format but add:
- Performance metrics
- Security considerations
```

---

## 🎯 Quick Format Picker

| Need | Use Format | Link |
|------|-----------|------|
| Standard tests | Test Cases | [→](Test-Cases-Format.md) |
| API testing | API Tests | [→](API-Tests-Format.md) |
| BDD scenarios | Gherkin | [→](Gherkin-Format.md) |
| Security audit | Security Tests | [→](Security-Format.md) |
| Performance testing | Performance Tests | [→](Performance-Format.md) |
| Planning doc | Test Plan | [→](Test-Plan-Format.md) |
| Results doc | Test Report | [→](Test-Report-Format.md) |
| Quick check | Checklist | [→](Checklist-Format.md) |

---

## ✨ Benefits

✅ **Consistency** - Same format across team  
✅ **Speed** - No need to describe format each time  
✅ **Quality** - Professional, proven structures  
✅ **Flexibility** - Mix and match as needed  
✅ **Reusability** - Save and reuse favorites  

---

## 🔧 Customization

### Light Customization
```
Use API Tests Format but make it more concise
```

### Format Mixing
```
Use Test Cases Format for structure but add Security considerations section
```

### Company-Specific
```
Use Test Cases Format but add:
- Jira ticket reference
- Sprint number
- Team assignment
```

---

## 💰 Cost Impact

**Using formats:** +50-100 tokens per prompt  
**Cost increase:** +$0.0003-0.0006  
**Worth it?** YES - for consistency and professionalism!

---

## 🎓 Pro Tips

1. **Bookmark your favorites** - Keep commonly used formats handy
2. **Create company library** - Add your organization's preferred formats
3. **Version control** - Update formats as standards evolve
4. **Share with team** - Everyone uses same formats
5. **Start simple** - Use minimal format, enhance gradually

---

## 📖 Examples

### Without Format
```
Generate API tests for login

Output:
"Here are 5 API tests for login functionality..."
[Inconsistent structure]
```

### With Format
```
Generate API tests for login

Format: [API Tests Format]

Output:
API-TEST-001: POST /login - Valid Credentials
Priority: Critical
Method: POST
...
[Consistent, professional structure]
```

---

## 🚀 Getting Started

1. **Browse formats** below
2. **Copy** the format you need
3. **Add** to your prompt
4. **Generate** professional artifacts!

---

## 📚 Format Categories

### By Complexity

**Simple:** Checklist, Basic Test Cases  
**Standard:** API Tests, Test Cases, Gherkin  
**Complex:** Test Plan, Test Strategy, Test Report  

### By Purpose

**Execution:** Test Cases, API Tests, Gherkin  
**Planning:** Test Plan, Test Strategy, Test Charter  
**Reporting:** Test Report, Traceability Matrix  
**Quick:** Checklist  

---

**Choose your format and start creating! 🎨**
