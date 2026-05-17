# Saola Project Changelog

All notable changes to the Saola UI Kit are documented here.

## [2026-05-17] — Batch 6: Specialized Widgets

### Added

**New Widgets**
- **Spinner** (`src/saola/spinner.gleam`) — Animated loading indicator
  - Three sizes: Small (1rem), Medium (1.5rem, default), Large (2rem)
  - CSS animation with configurable colors via CSS variables
  - Accessible with `role="status"` and `aria-label="Loading"`

- **Native Select** (`src/saola/native_select.gleam`) — Native HTML select wrapper
  - Styled dropdown with custom icon overlay
  - Support for `<optgroup>` hierarchies
  - Two sizes: Default (2rem), Small (1.75rem)
  - Disabled state with opacity reduction
  - Full keyboard accessibility

- **Button Group** (`src/saola/button_group.gleam`) — Fused button sets
  - Horizontal (default) and vertical orientations
  - CSS border fusion removes internal borders
  - Accessible with `role="group"`
  - Works with any button element

- **Input Group** (`src/saola/input_group.gleam`) — Compound input control
  - Prefix and suffix addon slots
  - Wraps input or textarea with visual grouping
  - `aria-invalid` propagation for error states
  - Works with saola/input and native textarea

- **Context Menu** (`src/saola/context_menu.gleam`) — Right-click menu system
  - Full menu item hierarchy: actions, destructive items, disabled items, separators, groups
  - Keyboard shortcut display
  - Automatic positioning via clientX/clientY event capture
  - Fixed positioning with backdrop
  - Nested group support with labels

- **Drawer** (`src/saola/drawer.gleam`) — Side/bottom slide-out panel
  - Four positions: Bottom (primary), Top, Left, Right
  - Handle bar for Bottom/Top (visual affordance)
  - Optional description and footer slots
  - Fixed positioning with backdrop dismiss
  - Configurable z-index stacking

### Modified

- `dev/saola/preview/model.gleam` — Added routes and model fields for new widgets
- `dev/saola/preview.gleam` — Added URL routes, update handlers, nav links
- `dev/saola/preview/view.gleam` — Added preview dispatchers for all 6 widgets
- `assets/app.css` — Added ~340 lines of CSS for all 6 widgets

### Tests

- `test/new_widget_tests3.gleam` — New comprehensive test suite
  - 193 total tests passing across all 6 widgets
  - Coverage includes: default rendering, size variants, disabled states, ARIA attributes, positioning, CSS classes
  - All tests in `gleam test` suite pass

### Documentation

- Created `docs/development-roadmap.md` — Project-wide widget progress tracking
- Created `docs/project-changelog.md` — Historical record of all changes

### CSS Changes

Added styles for:
- `.spinner`, `.spinner-sm`, `.spinner-md`, `.spinner-lg` with @keyframes spin animation
- `.native-select-wrapper`, `.native-select`, `.native-select-icon` with focus states
- `.button-group`, `.button-group-vertical` with border fusion rules
- `.input-group`, `.input-group-addon`, `.input-group-control` with grouped styling
- `.context-menu-*` classes for popup, items, shortcuts, separators, groups
- `.drawer`, `.drawer-bottom/top/left/right` with position-specific styles

## [2026-05-16] — Batch 5: Date/Time Widgets

### Added

- **Calendar** (`src/saola/calendar.gleam`) — Interactive month/year calendar grid
- **Date Picker** (`src/saola/date_picker.gleam`) — Date selection with calendar

### Modified

- `dev/saola/preview.gleam` — Routes and handlers for calendar/date picker

## Previous Releases

### Phase 1-3 Summary (29 widgets)

Core widgets through form controls, including:
- Button, Input, Textarea, Label, Badge, Alert, Card
- Checkbox, Radio, Switch
- Dropdown Menu, Select, Combobox, Dialog, Popover, Tooltip, Tabs, Accordion, Carousel
- Toast, Alert Dialog, Hover Card
- Form Field, Slider, Range Slider, Toggle Group, Segmented Control
- Breadcrumb, Pagination
- Radio Group (13-widget batch)
- Scroll Area, Aspect Ratio, Collapsible, Sheet, Menubar, Input OTP

---

## Metrics

| Metric | Value |
|--------|-------|
| Total widgets shipped | 37+ |
| Test suite coverage | 193 tests passing |
| CSS lines added (Batch 6) | ~340 |
| Active development phases | 3 |

## Notes

- All widgets follow Saola naming conventions: stateless design, full+shortcut pattern, CSS variable theming
- Widget tests use `gleam/html` element rendering with `a.to_string()` and string assertions
- CSS uses Basecoat class names; no Tailwind or shadcn/ui class dependencies post-porting
- ARIA attributes explicit and uncoupled from Radix UI
