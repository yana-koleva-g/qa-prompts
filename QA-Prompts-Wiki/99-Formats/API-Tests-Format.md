# 🔌 API Tests Format

**Standard format for REST API test cases**

---

## 📋 Basic Format

**Copy and add to your prompt:**

```
Format:
API-TEST-[ID]: [METHOD] [Endpoint] - [Scenario]
**Priority:** Critical/High/Medium/Low
**Method:** GET/POST/PUT/DELETE/PATCH
**Endpoint:** /api/v1/path
**Request:** {...}
**Expected:** Status code + validation
**Test Data:** [values]
```

---

## 📋 Standard Format

**More detailed structure:**

```
Format:
API-TEST-[ID]: [METHOD] [Endpoint] - [Scenario Name]
**Priority:** Critical | High | Medium | Low
**Endpoint:** /api/v1/resource/path
**Method:** GET | POST | PUT | PATCH | DELETE
**Headers:**
{
  "Content-Type": "application/json",
  "Authorization": "Bearer {token}"
}
**Request Body:** (if applicable)
{
  "field1": "value1",
  "field2": "value2"
}
**Expected Response:**
- Status Code: 200 | 201 | 400 | 401 | 404 | 500
- Body: {...}
**Validation:**
- [Check 1]
- [Check 2]
**Test Data:** [Input values and expected outputs]
```

---

## 📋 Comprehensive Format

**Full detailed format:**

```
Format:
API-TEST-[ID]: [METHOD] [Endpoint] - [Detailed Scenario Description]

**Test Metadata:**
- Priority: Critical | High | Medium | Low
- Type: Positive | Negative | Edge Case
- Automated: Yes | No
- Tags: [smoke, regression, security]

**API Details:**
- Base URL: https://api.example.com
- Endpoint: /api/v1/resource/path
- Method: GET | POST | PUT | PATCH | DELETE
- Authentication: Bearer Token | API Key | OAuth

**Request:**
Headers:
```json
{
  "Content-Type": "application/json",
  "Authorization": "Bearer eyJhbGc...",
  "X-Request-ID": "unique-id"
}
```

Body: (for POST/PUT/PATCH)
```json
{
  "field1": "value1",
  "field2": "value2",
  "nested": {
    "field3": "value3"
  }
}
```

Query Parameters: (for GET)
```
?param1=value1&param2=value2&limit=10&offset=0
```

**Expected Response:**
Status Code: 200 | 201 | 204 | 400 | 401 | 403 | 404 | 422 | 500

Response Body Schema:
```json
{
  "id": "uuid",
  "status": "success",
  "data": {
    "field1": "string",
    "field2": "number"
  },
  "meta": {
    "timestamp": "ISO 8601"
  }
}
```

Response Headers:
```
Content-Type: application/json
X-Rate-Limit-Remaining: 99
```

**Validation Points:**
1. Status code matches expected
2. Response schema matches specification
3. Required fields present
4. Data types correct
5. Business logic validation: [specific checks]
6. Error messages appropriate (if error test)

**Test Data:**
Input:
- field1: "test value"
- field2: 123
- token: "valid_test_token"

Expected Output:
- id: "new-uuid"
- status: "created"
- field1: "test value"

**Preconditions:**
- [Setup needed before test]
- [Test user/data requirements]

**Postconditions:**
- [Expected system state after test]
- [Cleanup actions]

**Dependencies:**
- [Other APIs or services required]
- [Database state needed]

**Performance Criteria:** (if applicable)
- Response time: < 200ms
- No memory leaks
- Proper connection handling
```

---

## 💡 Which Format to Use?

| Scenario | Format | Why |
|----------|--------|-----|
| Quick testing | Basic | Fast, cheap |
| Sprint work | Standard | Good balance |
| Release docs | Comprehensive | Complete info |
| Automation | Standard | Enough for scripts |
| Manual testing | Standard | Clear steps |
| Security audit | Comprehensive | Full details |

---

## 🎯 Usage Examples

### Example 1: Basic Format
```
Generate 5 API tests for user login

Format:
API-TEST-[ID]: [METHOD] [Endpoint] - [Scenario]
Priority: Critical
Method: POST
Endpoint: /api/auth/login
Request: {...}
Expected: Status + validation
```

### Example 2: Standard Format  
```
Generate 5 API tests for product search

Use Standard API Tests Format from library
Focus on query parameters and pagination
```

### Example 3: Custom Mix
```
Generate 5 API tests for payment processing

Use API Tests Standard Format but add:
- Security considerations
- PCI compliance notes
- Transaction validation steps
```

---

## 🔧 Variations

### For Different HTTP Methods

**GET (Query)**
```
Format includes:
- Query parameters section
- Filtering/sorting options
- Pagination details
```

**POST (Create)**
```
Format includes:
- Request body validation
- Created resource details
- Location header check
```

**PUT (Update)**
```
Format includes:
- Full resource payload
- Idempotency verification
- Version/ETag handling
```

**PATCH (Partial Update)**
```
Format includes:
- Partial payload
- Only changed fields
- Unchanged field verification
```

**DELETE**
```
Format includes:
- Deletion confirmation
- Resource no longer accessible
- Cascading effects
```

---

## 🎨 Format Enhancements

### Add Authentication Details
```
Add to format:
**Authentication:**
- Type: Bearer Token
- Token: {token_value}
- Expiry: 24 hours
```

### Add Rate Limiting
```
Add to format:
**Rate Limiting:**
- Limit: 100 requests/minute
- Current: Check X-Rate-Limit headers
- Throttling: Expect 429 if exceeded
```

### Add Security Checks
```
Add to format:
**Security Validation:**
- Authorization check
- Input sanitization
- SQL injection attempt: [payload]
- Expected: Blocked with 400
```

---

## 📊 Real Example

```
API-TEST-001: POST /api/v1/users - Create New User

**Priority:** High
**Method:** POST
**Endpoint:** /api/v1/users
**Headers:**
{
  "Content-Type": "application/json",
  "Authorization": "Bearer admin_token_xyz"
}
**Request Body:**
{
  "email": "newuser@test.com",
  "name": "Test User",
  "role": "member"
}
**Expected Response:**
- Status Code: 201
- Body:
{
  "id": "uuid",
  "email": "newuser@test.com",
  "name": "Test User",
  "role": "member",
  "created_at": "2025-01-01T12:00:00Z"
}
**Validation:**
- Status is 201 Created
- Response contains user ID
- Email matches request
- Created timestamp is present
- Location header points to new resource

**Test Data:**
- Admin token: admin_token_xyz
- Email: newuser@test.com (unique)
- Name: Test User
- Role: member (valid role)
```

---

## 💰 Cost Impact

Adding format to prompt:
- Basic: +30 tokens = +$0.0002
- Standard: +80 tokens = +$0.0005
- Comprehensive: +150 tokens = +$0.0009

**Worth it for consistent output!**

---

## ✅ Format Checklist

Good API test format includes:
- [ ] Unique test ID
- [ ] HTTP method
- [ ] Full endpoint path
- [ ] Request details (headers, body, params)
- [ ] Expected status code
- [ ] Expected response structure
- [ ] Validation points
- [ ] Test data
- [ ] Clear pass/fail criteria

---

## 🔗 Related Formats

- **[Test Cases Format](Test-Cases-Format.md)** - For non-API tests
- **[Security Tests Format](Security-Format.md)** - For API security
- **[Performance Tests Format](Performance-Format.md)** - For API load testing

---

**Copy the format you need and enhance your prompts! 🚀**
