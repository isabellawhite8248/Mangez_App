Mangez App

By streamlining meal organization, Mangez enables users to efficiently coordinate schedules, plan menus, and manage food-related decisions, ultimately creating more opportunities for meaningful time around the table.

------------------------------------------------------------------------------
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

------------------------------------------------------------------------------
MVP Target features in flight

- Ingredient input (quick + forgiving)
- Recipe matching (basic algorithm is fine), could also have a “use what’s about to go bad” button to reinforce the idea of reducing foot waste.
- Weekly meal planner (simple calendar)
- Shared household (invite via link)
- Grocery “missing items” list
- Save favorite meals
