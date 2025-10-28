# 🔌 API Testing

**Generate professional API test cases for REST endpoints**

---

## ⚡ Minimal Prompt

**Copy & paste, fill [brackets]:**

```
Generate 5 API tests for [system] [feature]
Priority: [Critical/High/Medium/Low]
```

**Example:**
```
Generate 5 API tests for CRM Platform user authentication
Priority: Critical
```

**Cost:** ~$0.003  
**Use for:** Quick testing, iterations

---

## 📋 Formatted Prompt

**Copy this for consistent structure:**

```
Generate 5 API tests for [SYSTEM] [FEATURE]
Priority: [Critical/High/Medium/Low]
Phase: [Testing/Development/UAT]

Format:
API-TEST-[ID]: [METHOD] [Endpoint] - [Scenario]
**Priority:** [level]
**Method:** GET/POST/PUT/DELETE
**Endpoint:** /path/to/endpoint
**Request:** {...}
**Expected:** Status code + validation
**Test Data:** [values]
```

**Example:**
```
Generate 5 API tests for Payment Gateway transaction processing
Priority: Critical
Phase: Testing

Format:
API-TEST-[ID]: [METHOD] [Endpoint] - [Scenario]
**Priority:** [level]
**Method:** GET/POST/PUT/DELETE
**Endpoint:** /path/to/endpoint
**Request:** {...}
**Expected:** Status code + validation
**Test Data:** [values]
```

**Cost:** ~$0.005  
**Use for:** Team collaboration, consistent docs

---

## 📝 Complete Prompt

<details>
<summary><b>Click to expand full structured prompt</b></summary>

```
Generate 5 comprehensive API test cases for [SYSTEM].

**Context:**
- SDLC Phase: [Testing/Development/UAT]
- Priority: [Critical/High/Medium/Low]
- Environment: [Development/Staging/Production]
- API Type: [REST/GraphQL/SOAP]

**Feature/Endpoint:** [DESCRIBE FEATURE OR ENDPOINT]

**Format each test as:**

```
API-TEST-[ID]: [METHOD] [Endpoint] - [Scenario Name]
**Priority:** [Critical/High/Medium/Low]
**Endpoint:** /api/v1/path/to/endpoint
**Method:** GET | POST | PUT | PATCH | DELETE
**Headers:**
```json
{
  "Content-Type": "application/json",
  "Authorization": "Bearer {token}"
}
```
**Request Body:** (for POST/PUT/PATCH)
```json
{
  "field1": "value1",
  "field2": "value2"
}
```
**Expected Response:**
- Status Code: 200 | 201 | 400 | 401 | 404 | 500
- Response Body Schema:
```json
{
  "id": "string",
  "status": "string",
  "data": {}
}
```
**Validation Points:**
- [Validation 1]
- [Validation 2]
- [Validation 3]

**Test Data:**
- [Specific input values]
- [Expected output values]

**Dependencies:** [Any prerequisites or setup needed]
```

**Coverage Requirements:**
- 2 positive scenarios (happy path)
- 2 negative scenarios (error handling)
- 1 edge case (boundary conditions)

Include tests for:
- Valid requests with expected data
- Invalid authentication/authorization
- Missing required fields
- Invalid data types
- Boundary values
```

**Example filled:**
```
Generate 5 comprehensive API test cases for E-commerce Platform.

**Context:**
- SDLC Phase: Testing
- Priority: Critical
- Environment: Staging
- API Type: REST

**Feature/Endpoint:** User authentication via email and password

[...rest of format...]
```

</details>

**Cost:** ~$0.007  
**Use for:** Complex APIs, full documentation

---

## 💡 When to Use

| Use Case | Prompt Type | Why |
|----------|-------------|-----|
| Quick validation | Minimal | Fast, cheap |
| Sprint testing | Formatted | Consistent output |
| Release documentation | Complete | Comprehensive coverage |
| Regression suite | Formatted | Reusable structure |
| Security audit | Complete | Detailed scenarios |

---

## 🎯 Common Variations

### For Different HTTP Methods

**GET requests:**
```
Generate 5 API tests for [system] GET /users endpoint
Focus on query parameters and filters
```

**POST requests:**
```
Generate 5 API tests for [system] POST /users endpoint
Include validation for required fields and data types
```

**Authentication:**
```
Generate 5 API tests for [system] [endpoint]
Focus on authentication scenarios (valid token, expired token, no token, invalid token)
```

---

## 📤 Example Output

**From minimal prompt:**
```
API-TEST-001: POST /auth/login - Valid Credentials
**Priority:** Critical
**Method:** POST
**Endpoint:** /api/v1/auth/login
**Request:**
{
  "email": "user@test.com",
  "password": "ValidPass123"
}
**Expected:** 
- Status: 200
- Returns JWT token
- Token is valid for 24 hours
**Test Data:** 
- Email: user@test.com
- Password: ValidPass123

API-TEST-002: POST /auth/login - Invalid Password
**Priority:** High
**Method:** POST
**Endpoint:** /api/v1/auth/login
**Request:**
{
  "email": "user@test.com",
  "password": "WrongPass"
}
**Expected:** 
- Status: 401
- Error message: "Invalid credentials"
- No token returned
**Test Data:** 
- Email: user@test.com (valid)
- Password: WrongPass (invalid)

[... 3 more tests ...]
```

---

## 🔗 Related

- **[Security API Tests](../04-Testing/Security-Tests.md)** - Security-focused API testing
- **[Integration Tests](../04-Testing/Integration-Tests.md)** - API integration scenarios
- **[Performance Tests](../04-Testing/Performance-Tests.md)** - API load testing
- **[API Format Library](../99-Formats/API-Tests-Format.md)** - Detailed format options

---

## 💰 Cost Breakdown

| Prompt Type | Input Tokens | Output Tokens | Total Tokens | Cost |
|-------------|--------------|---------------|--------------|------|
| Minimal | 30 | 500 | 530 | $0.003 |
| Formatted | 80 | 600 | 680 | $0.004 |
| Complete | 150 | 900 | 1050 | $0.006 |

*Based on Claude Sonnet 4.5 pricing: $6/M tokens*

---

## 🎓 Tips

1. **Start minimal** - Get basic tests first
2. **Add format** - When you need consistency
3. **Iterate** - "Add security tests for authentication"
4. **Be specific** - Include actual endpoint paths
5. **Use examples** - Reference similar APIs you've tested

---

## ✅ Checklist

Before running your prompt:
- [ ] Replaced [system] with your system name
- [ ] Replaced [feature] with specific functionality
- [ ] Set priority level
- [ ] Added phase if using formatted prompt
- [ ] Reviewed format matches your needs

---

**Ready to generate? Copy a prompt above and go! 🚀**
