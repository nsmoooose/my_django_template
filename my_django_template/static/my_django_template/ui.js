export function ui_init() {
	console.log("Initialized");
}

export function ui_ready(fn) {
	if (document.readyState !== 'loading') {
		fn();
	} else {
		document.addEventListener('DOMContentLoaded', fn);
	}
}
