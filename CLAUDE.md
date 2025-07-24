# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a single-page web application for managing recipe costs at "Encore" restaurant. The entire application is contained in a single `index.html` file that includes HTML, CSS, and JavaScript inline.

## Technology Stack

- **Frontend**: Vanilla JavaScript (no framework)
- **Backend**: Firebase (Authentication + Firestore)
- **Dependencies**: Firebase SDK v10.7.1, XLSX.js (via CDN)
- **Language**: French UI

## Development Commands

Since this is a static HTML application with no build process:

```bash
# Open the application locally
open index.html

# Or serve with any static server
python3 -m http.server 8000
# Then visit http://localhost:8000
```

## Architecture & Key Components

### Single-File Structure
The entire application lives in `index.html` (851 lines) containing:
- HTML markup
- CSS styles in `<style>` tag
- JavaScript code in `<script>` tags
- Firebase configuration

### Core Data Model
```javascript
let recipeData = {
    ingredients: [],          // Base ingredients with prices
    intermediateRecipes: [],  // Not yet implemented
    finalRecipes: []         // Not yet implemented
};
```

### Key Functions
- **Authentication**: `signIn()`, `signOut()` - Google Auth via Firebase
- **Data Operations**: `saveToFirebase()`, `loadFromFirebase()` - Auto-saves every 30 seconds
- **Sharing**: `shareRecipes()`, `loadSharedRecipes()` - Creates read-only shareable links
- **UI Updates**: `displayIngredients()`, `showToast()` - DOM manipulation

### Firebase Structure
- User data stored at: `/users/{userId}/recipes`
- Shared data at: `/shared/{shareId}`
- Auto-sync enabled when authenticated

## Important Notes

1. **No build process** - Direct file editing, no compilation needed
2. **Firebase config is exposed** - This is intentional for this project
3. **Features in progress** - Only ingredient management works; intermediate and final recipes show "Bientôt disponible"
4. **French language** - All UI text and user-facing strings are in French
5. **Auto-save** - Data automatically syncs to Firebase every 30 seconds when logged in