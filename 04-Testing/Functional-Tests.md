# ✅ Functional Test Cases

**Generate standard manual or automated test cases**

---

## ⚡ Minimal Prompt

**Copy & paste, fill [brackets]:**

```
Generate 5 test cases for [system] [feature]
Priority: [Critical/High/Medium/Low]
```

**Example:**
```
Generate 5 test cases for E-commerce checkout flow
Priority: High
```

**Cost:** ~$0.003  
**Use for:** Quick test case creation

---

## 📋 Formatted Prompt

**Copy this for consistent structure:**

```
Generate 5 test cases for [SYSTEM] [FEATURE]
Priority: [Critical/High/Medium/Low]
Phase: [Testing/UAT/Regression]

Format:
TEST-[ID]: [Test Case Title]
**Priority:** [level]
**Preconditions:** [setup]
**Test Steps:**
1. [action]
2. [action]
3. [verify]
**Expected Result:** [outcome]
**Test Data:** [values]
```

**Example:**
```
Generate 5 test cases for CRM Platform contact management
Priority: High
Phase: Testing

Format:
TEST-[ID]: [Test Case Title]
**Priority:** [level]
**Preconditions:** [setup]
**Test Steps:**
1. [action]
2. [action]
3. [verify]
**Expected Result:** [outcome]
**Test Data:** [values]
```

**Cost:** ~$0.004  
**Use for:** Team testing, documentation

---

## 📝 Complete Prompt

<details>
<summary><b>Click to expand full structured prompt</b></summary>

```
Generate 5 comprehensive test cases for [SYSTEM].

**Context:**
- SDLC Phase: [Testing/UAT/Regression]
- Priority: [Critical/High/Medium/Low]
- Test Type: [Functional/Integration/System]
- Execution: [Manual/Automated]
- Environment: [Dev/Staging/UAT/Production]

**Feature/Module:** [DESCRIBE FEATURE]

**Format each test case as:**

```
TEST-[ID]: [Descriptive Test Case Title]

**Test Metadata:**
- Priority: Critical | High | Medium | Low
- Type: Positive | Negative | Boundary
- Module: [Module/Component name]
- Requirement ID: [REQ-XXX if applicable]
- Automated: Yes | No
- Tags: [smoke, regression, etc]

**Preconditions:**
- [Precondition 1]
- [Precondition 2]
- [User state/permissions needed]
- [Data setup required]

**Test Steps:**
1. [Clear action step with specific details]
2. [Next action]
3. [Verification step]
4. [Additional steps as needed]

**Expected Result:**
[Detailed description of expected behavior and outcome]

**Actual Result:** (to be filled during execution)
[Space for test execution notes]

**Test Data:**
- Input 1: [specific value]
- Input 2: [specific value]
- Expected Output: [specific value]

**Postconditions:**
- [System state after test]
- [Cleanup actions if needed]

**Pass/Fail Criteria:**
✓ Pass if: [specific criteria]
✗ Fail if: [specific failure conditions]

**Notes:**
- [Any special considerations]
- [Dependencies]
- [Known issues]
```

**Test Coverage Requirements:**
- 2 positive test cases (happy path)
- 2 negative test cases (error handling)
- 1 boundary/edge case

Include scenarios for:
- Valid inputs with expected behavior
- Invalid inputs with proper error handling
- Boundary values
- Required field validation
- Optional field handling
```

**Example filled:**
```
Generate 5 comprehensive test cases for Online Banking.

**Context:**
- SDLC Phase: UAT
- Priority: Critical
- Test Type: Functional
- Execution: Manual
- Environment: UAT

**Feature/Module:** Fund transfer between accounts

[...rest of format...]
```

</details>

**Cost:** ~$0.006  
**Use for:** Formal test documentation, test management tools

---

## 💡 Common Scenarios

### Login/Authentication
```
Generate 5 test cases for [system] login functionality
Include: valid login, invalid password, locked account, forgot password, session timeout
Priority: Critical
```

### Form Validation
```
Generate 5 test cases for [system] [form name] form
Focus on: required fields, data type validation, format validation, boundary values
Priority: High
```

### CRUD Operations
```
Generate 5 test cases for [system] [resource] management
Cover: Create, Read, Update, Delete operations
Include positive and negative scenarios
```

### Search Functionality
```
Generate 5 test cases for [system] search feature
Test: exact match, partial match, no results, special characters, empty search
```

---

## 🎯 Test Types

### Positive Tests (Happy Path)
```
Generate positive test cases for [feature]
Focus on: Valid inputs, successful workflows, expected user behavior
```

### Negative Tests (Error Handling)
```
Generate negative test cases for [feature]
Focus on: Invalid inputs, error messages, system resilience
```

### Boundary Tests
```
Generate boundary test cases for [feature]
Focus on: Min/max values, edge cases, limit testing
```

---

## 📤 Example Output

**From formatted prompt:**

```
TEST-001: User Login with Valid Credentials
**Priority:** Critical
**Preconditions:**
- User account exists in system
- User account is active
- Browser is opened to login page

**Test Steps:**
1. Navigate to login page (https://app.example.com/login)
2. Enter valid email in "Email" field: testuser@example.com
3. Enter valid password in "Password" field: ValidPass123!
4. Click "Login" button
5. Observe landing page

**Expected Result:**
- User is successfully logged in
- Redirected to dashboard page
- Welcome message displays: "Welcome, Test User"
- Session cookie is created
- Login timestamp is recorded

**Test Data:**
- Email: testuser@example.com
- Password: ValidPass123!
- Expected user: Test User
- Expected role: Standard User

---

TEST-002: User Login with Invalid Password
**Priority:** High
**Preconditions:**
- User account exists
- Browser is on login page

**Test Steps:**
1. Navigate to login page
2. Enter valid email: testuser@example.com
3. Enter invalid password: WrongPassword
4. Click "Login" button
5. Observe error message

**Expected Result:**
- Login fails
- Error message displayed: "Invalid email or password"
- User remains on login page
- No session created
- Failed login attempt logged

**Test Data:**
- Email: testuser@example.com (valid)
- Password: WrongPassword (invalid)

[... 3 more tests ...]
```

---

## 🔗 Related

- **[Integration Tests](Integration-Tests.md)** - Component integration
- **[Regression Tests](Regression-Tests.md)** - Re-testing
- **[Gherkin/BDD](Gherkin-BDD.md)** - Behavior-driven format
- **[Test Cases Format](../99-Formats/Test-Cases-Format.md)** - Detailed format options

---

## 💰 Cost Breakdown

| Prompt Type | Tokens | Cost | Tests Generated |
|-------------|--------|------|-----------------|
| Minimal | 530 | $0.003 | 5 basic |
| Formatted | 680 | $0.004 | 5 structured |
| Complete | 1050 | $0.006 | 5 comprehensive |

---

## 🎓 Best Practices

1. **Be specific** - Detailed feature description = better tests
2. **Include context** - Priority and phase help focus tests
3. **Request coverage** - Ask for positive, negative, edge cases
4. **Add data** - Specify test data needed
5. **Iterate** - Start minimal, enhance as needed

**Example iteration:**
```
1. "Generate 5 test cases for login"
2. Review output
3. "Add test cases for password reset"
4. "Add boundary tests for password length"
```

---

## ✅ Quality Checklist

Good test cases include:
- [ ] Clear unique ID
- [ ] Descriptive title
- [ ] Priority level
- [ ] Clear preconditions
- [ ] Step-by-step actions
- [ ] Specific expected results
- [ ] Required test data
- [ ] Pass/fail criteria

---

## 🔧 Customization Options

### For Different Execution Types

**Manual Testing:**
```
Add to prompt: "For manual execution, include detailed UI element descriptions"
```

**Automated Testing:**
```
Add to prompt: "Structure for automation, include element selectors and wait conditions"
```

### For Different Tools

**Jira/Xray:**
```
Add to prompt: "Format for Jira import with custom fields: Story Points, Component"
```

**TestRail:**
```
Add to prompt: "Include TestRail fields: Suite, Section, Estimate"
```

---

**Ready to create test cases? Copy a prompt and start! ✅**
