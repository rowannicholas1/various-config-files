const vscode = require('vscode');

const activate = async () => {
    // VSCode using new explorer filtration since v1.31
    // so we need to use context key for proper use of hotkeys with single key like `A` or `^A`
    await vscode.commands.executeCommand('setContext', 'listAutomaticKeyboardNavigation', false);
}

module.exports = { activate };
