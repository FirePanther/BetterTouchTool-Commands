/**
 * @author		Suat Secmen (http://suat.be)
 * @copyright	2016 Suat Secmen
 * @license		WTFPL <http://www.wtfpl.net/>
 * @description
 *  Try to go forward in frontmost Google Chrome tab.
 *  If not possible open the last tab/window.
 */

Chrome = Application('Google Chrome');

/**
 * Open the last closed tab (cmd + shift + T)
 */
function openClosedTab() {
	Chrome.activate();
	delay(.1);
	Application('System Events').keystroke('t', {
		using: ['command down', 'shift down']
	});
}

try {
	var tab = Chrome.windows()[0].activeTab(),
		a = tab.url();
	tab.goForward();
	delay(.2);
	var b = tab.url();
	if (a === b) {
		openClosedTab();
	}
} catch(e){
	openClosedTab();
}
