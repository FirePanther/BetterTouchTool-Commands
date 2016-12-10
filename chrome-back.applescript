/**
 * @author      Suat Secmen (http://su.at)
 * @copyright   2016 Suat Secmen
 * @license     WTFPL <http://www.wtfpl.net/>
 * @description
 *  Try to go back in frontmost Google Chrome tab.
 *  If not possible just close the tab.
 */

try {
	var Chrome = Application('Google Chrome'),
		tab = Chrome.windows[0].activeTab,
		a = tab.url();
	tab.goBack();
	delay(.2);
	var b = tab.url();
	if (a === b || b === 'chrome://newtab/') {
		tab.close();
	}
} catch(e){}
