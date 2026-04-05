import gleam/option.{type Option}

// Note: Keep these in sync:
//  - on_url_change
pub type Route {
  Home
  Alerts
  Inputs
  Forms
  Buttons
  DropdownMenus
}

pub type Model {
  Model(route: Route, open_dropdown: Option(String))
}

pub type Msg {
  OnRouteChange(Route)
  ToggleDropdown(String)
}
