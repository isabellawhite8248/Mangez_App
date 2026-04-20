<img width="402" height="164" alt="logo" src="https://github.com/user-attachments/assets/5fe1e1e8-18a4-4b7b-9009-27bb76734b06" />

# Meal Planning for Shared Living

## Overview
**Mangez** is a meal planning application designed to help households decide what to eat and when to eat together. By combining ingredient-based recipe suggestions with shared scheduling, the app reduces decision fatigue and helps users make better use of the food they already have.

The name comes from the French verb *manger* (“to eat”), with *mangez* meaning “eat together.” This reflects the app’s core goal: simplifying meal planning while encouraging more shared meals.

This project is currently in development, with a focus on delivering a lightweight, intuitive mobile experience built in Swift.

> *This README is included as a portfolio sample to demonstrate technical writing and product documentation skills.*

---

## Key Features (MVP)

### Ingredient-Based Meal Suggestions
- Quickly input available ingredients (no complex pantry setup)
- Generate a small set (3–5) of relevant meal options
- Designed to reduce decision fatigue, not overwhelm users

### Shared Meal Planning
- Assign meals to specific days using a simple calendar view
- Shared across a household (families, roommates, or co-living groups)
- Keeps everyone aligned on meal plans

### Smart Grocery List
- Automatically identifies missing ingredients for planned meals
- Generates a simple, actionable grocery list

### “Use What’s Expiring” Option
- Prioritizes ingredients that are likely to go bad soon
- Encourages reduced food waste

### Favorites System
- Save meals for quick reuse
- Streamlines recurring meal planning

---

## Problem Statement
Meal planning is often inefficient and fragmented:
- Ingredients go unused and expire
- Households struggle to coordinate shared meals
- Recipe discovery takes too long
- Existing apps focus on individuals rather than groups

Mangez addresses this by combining two key questions:
- *What can we make with what we already have?*
- *When can we eat together?*

---

## Target Users
- Families coordinating meals across multiple schedules  
- Roommates sharing groceries and cooking responsibilities  
- Busy individuals looking to simplify meal planning  
- Users aiming to reduce food waste and grocery costs  

---

## Usage (MVP Flow)

1. Enter available ingredients  
2. View suggested meals  
3. Select a meal  
4. Assign it to a day  
5. Review missing ingredients  
6. Share the plan with the household  
<img width="627" height="272" alt="user_flow" src="https://github.com/user-attachments/assets/bf980272-26a6-481e-b082-767a3655be6c" />

---

## Screens & UX
<diagram here: main app flow>

<diagram here: ingredient input screen>

<diagram here: meal suggestions screen>

<diagram here: shared calendar view>

---

## Technical Overview

### Frontend
- Swift (iOS)
- Mobile-first design
- Focus on speed and low-friction input

### Backend (Planned)
- RESTful API for meal planning and household management  
- Ingredient-based recipe matching logic  
- Shared household data model  

---

## Architecture (Planned)
<diagram here: system architecture>

---

## API Design (Hypothetical)

The Mangez backend is designed as a RESTful API to support ingredient-based recipe generation, shared household coordination, and meal planning.

### Base URL
```

[https://api.mangez.app/v1](https://api.mangez.app/v1)

```

> Note: This API is currently in development and the base URL is illustrative.

---

### Authentication
All protected routes require a bearer token:

```

Authorization: Bearer <token>

```

Token is issued upon user login/registration (currently in development, will update more once finished).

---

### Endpoints

#### 1. Create Household
```

POST /households

````

**Request Body**
```json
{
  "name": "Smith Family"
}
````

**Response (201 Created)**

```json
{
  "id": "household_123",
  "invite_code": "ABCDEF"
}
```

---

#### 2. Join Household

```
POST /households/join
```

**Request Body**

```json
{
  "invite_code": "ABCDEF"
}
```

---

#### 3. Add Ingredients

```
POST /ingredients
```

**Request Body**

```json
{
  "household_id": "household_123",
  "ingredients": ["chicken", "rice", "broccoli"]
}
```

---

#### 4. Get Meal Suggestions

```
GET /meals/suggestions
```

**Query Parameters**

```
household_id=household_123
time=quick
```

---

#### 5. Plan a Meal

```
POST /meals/plan
```

---

#### 6. Get Weekly Plan

```
GET /meals/plan
```

---

#### 7. Grocery List

```
GET /grocery-list
```

---

## Design Principles

* Simplicity over feature overload
* Built for shared experiences, not individual use
* Minimize user input wherever possible
* Provide actionable results quickly

---

## Known Limitations (MVP)

* Limited recipe dataset
* Basic ingredient matching
* No image recognition (plan to incoporate this into latter releases)
* Manual ingredient entry

---

## Future Improvements

* Image-based ingredient scanning
* Personalized recommendations
* Nutrition and macro tracking
* Grocery store integration
* Real-time household updates

---

## Success Criteria

This product is successful if users say:

* “This saved me from thinking about dinner.”
* “We used what we already had.”
* “We ate together more often.”

---


## Wireframes
<img width="1334" height="712" alt="Screenshot 2026-04-20 at 11 35 02 AM" src="https://github.com/user-attachments/assets/31d167dd-2bf7-4f4e-bbad-2b0c5c828719" />

[View full interactive wireframe here via Penpot](https://tinyurl.com/3jjnmfct)

---

## Author

**Isabella White**

GitHub: [https://github.com/isabellawhite8248](https://github.com/isabellawhite8248)

Email: isabellaxwhitex2002@gmail.com

---

## License

TBD
