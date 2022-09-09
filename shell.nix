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
		meson setup --prefix=$HOME/.local -Dthemes=gtk2,gtk3,gtk4 -Dvariants=dark build/
		meson install -C build/
		exit
	'';
}
