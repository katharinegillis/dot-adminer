#!/usr/bin/env bash

pkg.link() {
    [ -d "$PKG_PATH/files" ] && fs.link_files files
}

pkg.install() {
    # Install adminer
    bash $PKG_PATH/run.sh "$ELLIPSIS_SRC" "$PKG_PATH"
}

pkg.pull() {
    # Check for updates on git
    git remote update 2>&1 > /dev/null
    if git.is_behind; then
        # Unlink old files
        hooks.unlink

        # Pull package changes
        git.pull

        # Link new files
        pkg.link
    fi

    # Update adminer
    bash $PKG_PATH/run.sh "$ELLIPSIS_SRC" "$PKG_PATH"
}

pkg.uninstall() {
    # Remove adminer
    bash $PKG_PATH/uninstall.sh "$ELLIPSIS_SRC"
}
