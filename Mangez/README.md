Mangez App
-----------------------------------------------------------------------------
By streamlining meal organization, Mangez enables users to efficiently coordinate schedules, plan menus, and manage food-related decisions, ultimately creating more opportunities for meaningful time around the table.
-----------------------------------------------------------------------------
Project directory:

Mangez/
│
├── App/
│   └── MangezApp.swift {holds the entrypoint for the app}
│
├── Models/ {contains datastructures, for example, recipes/ingredient quantities}
│
├── Views/
│   ├── Screens/ {screens including login page, pantry page, calendar etc.}
│   └── Components/ {reusable UI peices, for example mealcards}
│
├── ViewModels/ {logic for views, dataprocessing, API calls + state managmenet}
│
├── Services/ {main service needed is a recipe API to pull recipes in when a search is indexed}
│
├── Resources/ {images, colors, assets}
│   ├── Assets.xcassets 
│   └── Preview Content/
│
└── Extensions/

-----------------------------------------------------------------------------
MVP Target features in flight
- Ingredient input (quick + forgiving)
- Recipe matching (basic algorithm is fine), could also have a “use what’s about to go bad” button to reinforce the idea of reducing foot waste.
- Weekly meal planner (simple calendar)
- Shared household (invite via link)
- Grocery “missing items” list
- Save favorite meals
---
Updates/Status
04/16 - established the front end static screens, next step build out backend functionality e.g. recipe API and connecting screens via clickable buttons
---------
quick links
initial market research / planning doc: https://docs.google.com/document/d/1kijSHfHjwi_Aid-bfpbo6tJuKTNetT3nQKRAQLqfhDc/edit?usp=sharing
wireframing/UI design: https://design.penpot.app/#/view?file-id=0075361e-ccf8-8015-8007-dc51e0cc4483&page-id=0075361e-ccf8-8015-8007-dc51e0cc4484&section=interactions&index=0&share-id=30c95215-44cf-80fa-8007-de8a8d8c08fc 
