module main

import vweb

struct App {
	vweb.Context
}

fn main() {
	vweb.run(&App{}, 80)
}

['/index']
pub fn (mut app App) index() vweb.Result {
	return $vweb.html()
}