# 🔒 Security Testing

**Generate professional security test cases for vulnerability assessment**

---

## ⚡ Minimal Prompt

**Copy & paste, fill [brackets]:**

```
Generate 5 security tests for [system] [feature/component]
Focus: [SQL injection/XSS/Auth/OWASP Top 10]
```

**Example:**
```
Generate 5 security tests for E-commerce Platform payment form
Focus: SQL injection and XSS
```

**Cost:** ~$0.004  
**Use for:** Quick security checks, focused testing

---

## 📋 Formatted Prompt

**Copy this for consistent structure:**

```
Generate 5 security tests for [SYSTEM] [FEATURE]
Priority: [Critical/High]
Focus: [Vulnerability Type]

Format:
SECURITY-TEST-[ID]: [Vulnerability] - [Attack Vector]
**Severity:** Critical/High/Medium/Low
**OWASP Category:** [A01-A10:2021]
**Attack Vector:** [method]
**Test Steps:** [how to exploit]
**Expected Defense:** [system should...]
**Remediation:** [fix recommendation]
```

**Example:**
```
Generate 5 security tests for Banking App login functionality
Priority: Critical
Focus: Authentication and session management

Format:
SECURITY-TEST-[ID]: [Vulnerability] - [Attack Vector]
**Severity:** Critical/High/Medium/Low
**OWASP Category:** [A01-A10:2021]
**Attack Vector:** [method]
**Test Steps:** [how to exploit]
**Expected Defense:** [system should...]
**Remediation:** [fix recommendation]
```

**Cost:** ~$0.005  
**Use for:** Security audits, compliance testing

---

## 📝 Complete Prompt

<details>
<summary><b>Click to expand full structured prompt</b></summary>

```
Generate 5 comprehensive security test cases for [SYSTEM].

**Context:**
- SDLC Phase: [Testing/Development/Pre-Deployment]
- Severity Level: [Critical/High/Medium/Low]
- Environment: [Staging/UAT/Prod-like]
- Compliance: [OWASP/PCI-DSS/GDPR/HIPAA]

**Component/Feature:** [DESCRIBE COMPONENT TO TEST]

**Security Focus Areas:**
- [Authentication/Authorization]
- [Input Validation]
- [Session Management]
- [Data Protection]
- [API Security]

**Format each test as:**

```
SECURITY-TEST-[ID]: [Vulnerability Type] - [Attack Scenario]
**Severity:** Critical | High | Medium | Low
**OWASP Category:** A01:2021 - [Category Name]
**CWE:** [CWE-XXX if applicable]

**Vulnerability Description:**
[Brief description of the security flaw being tested]

**Attack Vector:**
[How an attacker could exploit this]

**Preconditions:**
- [Setup needed]
- [Test account requirements]

**Test Steps:**
1. [Preparation step]
2. [Attack execution step]
3. [Verification step]

**Attack Payload/Input:**
```
[Specific malicious input or request]
```

**Expected System Defense:**
- [Security control 1]
- [Security control 2]
- [Security control 3]

**Indicators of Vulnerability:**
- [Sign 1 that system is vulnerable]
- [Sign 2 that system is vulnerable]

**Remediation Recommendation:**
- [Primary fix]
- [Secondary controls]
- [Best practice]

**References:**
- OWASP: [link to relevant guide]
- CWE: [link to CWE entry]

**Test Data:**
- [Malicious payloads to test]
- [Test user credentials]
```

**Coverage Requirements:**
- At least 1 Critical severity test
- Cover OWASP Top 3
- Include both automated and manual tests
- Test both positive controls (security works) and negative (bypass attempts)

**Common Vulnerability Categories to Cover:**
- Injection flaws (SQL, NoSQL, OS Command)
- Broken Authentication
- Sensitive Data Exposure
- XML External Entities (XXE)
- Broken Access Control
- Security Misconfiguration
- Cross-Site Scripting (XSS)
- Insecure Deserialization
- Using Components with Known Vulnerabilities
- Insufficient Logging & Monitoring
```

**Example filled:**
```
Generate 5 comprehensive security test cases for Healthcare Portal.

**Context:**
- SDLC Phase: Pre-Deployment
- Severity Level: Critical
- Environment: UAT
- Compliance: HIPAA, OWASP

**Component/Feature:** Patient data access API

**Security Focus Areas:**
- Authorization
- Data Protection
- API Security

[...rest of format...]
```

</details>

**Cost:** ~$0.008  
**Use for:** Penetration testing, compliance audits, security releases

---

## 💡 Focus Areas

### By Vulnerability Type

**Injection:**
```
Generate 5 security tests for [system] [input field]
Focus: SQL injection, NoSQL injection, command injection
Include: Blind SQL injection, time-based attacks
```

**Authentication/Authorization:**
```
Generate 5 security tests for [system] authentication
Focus: Broken authentication, session hijacking, privilege escalation
Include: Brute force, credential stuffing, token manipulation
```

**XSS (Cross-Site Scripting):**
```
Generate 5 security tests for [system] [user input fields]
Focus: Reflected XSS, Stored XSS, DOM-based XSS
Include: Script injection, HTML injection, event handler injection
```

**API Security:**
```
Generate 5 security tests for [system] API endpoints
Focus: Broken object level authorization, mass assignment, rate limiting
Include: IDOR, API key exposure, injection via API
```

---

## 🎯 By OWASP Top 10 (2021)

| Category | Prompt Addition | Priority |
|----------|----------------|----------|
| A01: Broken Access Control | `Focus: Authorization bypass, IDOR, privilege escalation` | Critical |
| A02: Cryptographic Failures | `Focus: Sensitive data exposure, weak crypto` | High |
| A03: Injection | `Focus: SQL, NoSQL, OS command injection` | Critical |
| A04: Insecure Design | `Focus: Missing security controls, threat modeling` | High |
| A05: Security Misconfiguration | `Focus: Default configs, verbose errors, unnecessary features` | Medium |
| A06: Vulnerable Components | `Focus: Outdated libraries, known CVEs` | High |
| A07: Auth Failures | `Focus: Weak passwords, session management, MFA bypass` | Critical |
| A08: Integrity Failures | `Focus: Unsigned code, tampering, CI/CD security` | Medium |
| A09: Logging Failures | `Focus: Missing logs, insufficient monitoring` | Medium |
| A10: Server-Side Request Forgery | `Focus: SSRF attacks, internal network access` | High |

---

## 📤 Example Output

**From minimal prompt:**
```
SECURITY-TEST-001: SQL Injection - Login Form
**Severity:** Critical
**OWASP Category:** A03:2021 - Injection

**Attack Vector:**
Inject SQL commands through login form to bypass authentication

**Test Steps:**
1. Navigate to login page
2. Enter in username field: admin' OR '1'='1
3. Enter any password
4. Click submit
5. Observe response

**Expected Defense:**
- Input sanitization should block SQL syntax
- Parameterized queries should prevent injection
- Error message should not reveal SQL errors

**Indicators of Vulnerability:**
- Successful login without valid credentials
- SQL error messages displayed
- Database information leaked

**Remediation:**
- Use parameterized queries
- Implement input validation
- Apply principle of least privilege for DB user

---

SECURITY-TEST-002: Stored XSS - Comment Section
**Severity:** High
**OWASP Category:** A03:2021 - Injection

**Attack Vector:**
Inject malicious JavaScript in comment field that executes when viewed by other users

**Test Steps:**
1. Post comment with payload: <script>alert(document.cookie)</script>
2. View comment as different user
3. Check if script executes

**Expected Defense:**
- Input sanitization removes script tags
- Output encoding prevents execution
- Content Security Policy blocks inline scripts

**Indicators of Vulnerability:**
- Alert box appears showing cookies
- Script executes in other users' browsers
- HTML source shows unescaped script tags

**Remediation:**
- Implement output encoding
- Use CSP headers
- Sanitize all user input

[... 3 more tests ...]
```

---

## 🔗 Related

- **[API Security Tests](../03-Development/API-Tests.md)** - API-specific security
- **[Penetration Testing Checklist](../99-Formats/Security-Checklist-Format.md)** - Complete checklist
- **[OWASP Testing Guide](https://owasp.org/www-project-web-security-testing-guide/)** - External reference

---

## 💰 Cost Breakdown

| Prompt Type | Input Tokens | Output Tokens | Total Tokens | Cost |
|-------------|--------------|---------------|--------------|------|
| Minimal | 40 | 600 | 640 | $0.004 |
| Formatted | 90 | 700 | 790 | $0.005 |
| Complete | 180 | 1000 | 1180 | $0.007 |

---

## 🎓 Best Practices

1. **Start with OWASP Top 10** - Cover most common vulnerabilities
2. **Prioritize by severity** - Critical issues first
3. **Test in safe environment** - Never test production without permission
4. **Document everything** - Include payloads and evidence
5. **Follow responsible disclosure** - Report vulnerabilities properly
6. **Get authorization** - Always have written permission
7. **Include remediation** - Help developers fix issues

---

## ⚠️ Important Notes

**Legal Considerations:**
- Only test systems you own or have explicit permission to test
- Follow responsible disclosure policies
- Be aware of legal consequences of unauthorized testing

**Ethical Testing:**
- Don't exfiltrate real data
- Don't cause damage or disruption
- Report vulnerabilities responsibly
- Respect privacy and confidentiality

---

## ✅ Security Testing Checklist

Before running security tests:
- [ ] Have written authorization to test
- [ ] Testing in appropriate environment (not production)
- [ ] Have backup/rollback plan
- [ ] Know escalation procedures for critical findings
- [ ] Documented test scope and boundaries
- [ ] Have secure channel for reporting vulnerabilities

---

**Ready to test? Remember: Test ethically and legally! 🔒**
