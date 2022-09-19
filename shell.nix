{ pkgs ? import <nixpkgs> {  } }:
pkgs.mkShell {
	name = "Arc Tokyo Night Build Shell";
	buildInputs = with pkgs; [
		meson
		ninja
		glib.dev
		sassc
	];

	shellHook = ''
	'';
}
