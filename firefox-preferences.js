/* ******* */
/* STARTUP */
/* ******* */
// Disable default browser check
user_pref("browser.shell.checkDefaultBrowser", false);

// Set start page to home
user_pref("browser.startup.page", 1);

// Set homepage
user_pref("browser.startup.homepage", "https://duckduckgo.com");

// Set new tab page to blank
user_pref("browser.newtabpage.enabled", false);
user_pref("browser.newtab.preload", false);

// Disable activity stream completely
user_pref("browser.newtabpage.activity-stream.feeds.telemetry", false);
user_pref("browser.newtabpage.activity-stream.telemetry", false);
user_pref("browser.newtabpage.activity-stream.telemetry.ping.endpoint", "");
user_pref("browser.newtabpage.activity-stream.disableSnippets", true);
user_pref("browser.newtabpage.activity-stream.asrouter.providers.snippets", "");
user_pref("browser.newtabpage.activity-stream.feeds.snippets", false);
user_pref("browser.newtabpage.activity-stream.feeds.section.topstories", false);
user_pref("browser.newtabpage.activity-stream.section.highlights.includePocket", false);
user_pref("browser.newtabpage.activity-stream.showSponsored", false);
user_pref("browser.newtabpage.activity-stream.feeds.section.highlights", false);
user_pref("browser.newtabpage.activity-stream.section.highlights.includeBookmarks", false);
user_pref("browser.newtabpage.activity-stream.section.highlights.includeDownloads", false);
user_pref("browser.newtabpage.activity-stream.section.highlights.includeVisited", false);
user_pref("browser.newtabpage.activity-stream.feeds.topsites", false);
user_pref("browser.newtabpage.activity-stream.showSearch", false);
user_pref("browser.library.activity-stream.enabled", false);
user_pref("browser.aboutHomeSnippets.updateUrl", "");

// Disable private browsing on autostart
user_pref("browser.privatebrowsing.autostart", false);

/* ******* */
/* GENERAL */
/* ******* */
// Set locale to OS
user_pref("intl.locale.requested", ""); 
user_pref("intl.regional_prefs.use_os_locales", true);

// Enable hardware acceleration
user_pref("layers.acceleration.force-enabled", true);

// Disable Pocket, a third party cloud service 
user_pref("extensions.pocket.enabled", false);

// Select all text in the location bar
user_pref("browser.urlbar.clickSelectsAll", true);

// Disable one-off searches in the location bar
user_pref("browser.urlbar.oneOffSearches", false);

// Enable websites choosing their own fonts
user_pref("browser.display.use_document_fonts", 1);

// Set custom fonts
user_pref("font.name.serif.x-unicode", "Noto Serif");
user_pref("font.name.serif.x-western", "Noto Serif"); 
user_pref("font.name.sans-serif.x-unicode", "Noto Sans");
user_pref("font.name.sans-serif.x-western", "Noto Sans");
user_pref("font.name.monospace.x-unicode", "Noto Mono");
user_pref("font.name.monospace.x-western", "Noto Mono");

// Display all parts of the url in the location bar
user_pref("browser.urlbar.trimURLs", false);

// Enable DRM
user_pref("media.eme.enabled", true);

// Allow windows to self close
user_pref("dom.allow_scripts_to_close_windows", true);

// Ask where to save files
user_pref("browser.download.useDownloadDir", false);

// Disable resuming session from crash
user_pref("browser.sessionstore.resume_from_crash", false);

// Disable firefox accounts and sync
user_pref("identity.fxaccounts.enabled", false);

/* ******* */
/* PRIVACY */
/* ******* */
// Disable geolocation
user_pref("geo.enabled", false);
user_pref("permissions.default.geo", 2);

// Disable geolocation based search results
user_pref("browser.search.region", "US");
user_pref("browser.search.geoip.url", "");
user_pref("browser.search.geoSpecificDefaults", false);
user_pref("browser.search.geoSpecificDefaults.url", "");

// Disable extension metadata updating
user_pref("extensions.getAddons.cache.enabled", false);

// Disable sending the url of website where plugin crashes
user_pref("extensions.getAddons.cache.enabled", false);

// Disable telemetry
user_pref("toolkit.telemetry.unified", false);
user_pref("toolkit.telemetry.enabled", false); 
user_pref("toolkit.telemetry.server", "data:,");
user_pref("toolkit.telemetry.archive.enabled", false);
user_pref("toolkit.telemetry.cachedClientID", "");
user_pref("toolkit.telemetry.newProfilePing.enabled", false); 
user_pref("toolkit.telemetry.shutdownPingSender.enabled", false); 
user_pref("toolkit.telemetry.updatePing.enabled", false); 
user_pref("toolkit.telemetry.bhrPing.enabled", false); 
user_pref("toolkit.telemetry.firstShutdownPing.enabled", false);
user_pref("toolkit.telemetry.hybridContent.enabled", false); 
user_pref("toolkit.telemetry.coverage.opt-out", true);
user_pref("toolkit.coverage.endpoint.base", "");
user_pref("toolkit.coverage.opt-out", true); 
user_pref("datareporting.healthreport.uploadEnabled", false);
user_pref("datareporting.policy.dataSubmissionEnabled", false);
user_pref("app.normandy.enabled", false);
user_pref("app.normandy.api_url", "");
user_pref("app.shield.optoutstudies.enabled", false);
user_pref("browser.ping-centre.telemetry", false);
user_pref("beacon.enabled", false);

// Enable privacy tracking protection
user_pref("privacy.trackingprotection.enabled", true);
user_pref("privacy.trackingprotection.socialtracking.enabled", true);
user_pref("privacy.trackingprotection.pbmode.enabled", true); 

// Disable date/time picker to avoid locale leaking
user_pref("dom.forms.datetime", false);

// Prevent 3rd party tracking
user_pref("privacy.firstparty.isolate", true);

// Prevent fingerprinting
user_pref("privacy.resistFingerprinting", true);

// Disable face recognition
user_pref("camera.control.face_detection.enabled", false);

// Disable sensors
user_pref("device.sensors.enabled", false);

// Disable storing of extra session data
user_pref("browser.sessionstore.privacy_level", 2);

// Block third party cookies
user_pref("network.cookie.cookieBehavior", 1);
user_pref("browser.contentblocking.category", "custom");

// Enforce websites to ask to store data for offline use
user_pref("offline-apps.allow_by_default", false);

// Disable history
user_pref("browser.formfill.enable", false);
user_pref("places.history.enabled", false);

// Disable leaking typos in the location bar
user_pref("keyword.enabled", false);

// Disable location bar domain guessing
user_pref("browser.fixup.alternate.enabled", false);

// Disable search suggestions
user_pref("browser.search.suggest.enabled", false);
user_pref("browser.urlbar.suggest.searches", false);
user_pref("browser.urlbar.userMadeSearchSuggestionsChoice", true);

// Disable preloaded top websites in location bar
user_pref("browser.urlbar.usepreloadedtopurls.enabled", false);

// Disable autocomplete and suggestions in the location bar
user_pref("browser.urlbar.autocomplete.enabled", true);
user_pref("browser.urlbar.suggest.history", false);
user_pref("browser.urlbar.suggest.bookmark", true);
user_pref("browser.urlbar.suggest.openpage", false);
user_pref("browser.urlbar.maxHistoricalSearchSuggestions", 0);
user_pref("browser.urlbar.autoFill.typed", false);

// Clear on shutdown
user_pref("privacy.clearOnShutdown.cache", true);
user_pref("privacy.clearOnShutdown.history", true);
user_pref("privacy.clearOnShutdown.formdata", true);
user_pref("privacy.clearOnShutdown.offlineApps", true);

// Items selected in the Clear Browsing Data dialog
user_pref("privacy.cpd.cache", true);
user_pref("privacy.cpd.formdata", true);
user_pref("privacy.cpd.history", true);
user_pref("privacy.cpd.offlineApps", true);
user_pref("privacy.cpd.passwords", false); 
user_pref("privacy.cpd.sessions", false); 

// Limit IP leaks of WebRTC
user_pref("media.peerconnection.ice.default_address_only", true);
user_pref("media.peerconnection.ice.no_host", true);

// Disable crash reports
user_pref("breakpad.reportURL", "");
user_pref("browser.tabs.crashReporting.sendReport", false); 
user_pref("browser.crashReports.unsubmittedCheck.enabled", false);
user_pref("browser.crashReports.unsubmittedCheck.autoSubmit2", false);

// Prevent websites from seeing what you do with your clipboard
user_pref("dom.event.clipboardevents.enabled", false);

/* ******** */
/* SECURITY */
/* ******** */
// Disable webgl due to being a security risk
user_pref("webgl.disabled", true);
user_pref("pdfjs.enableWebGL", false);
user_pref("webgl.enable-webgl2", false);
user_pref("webgl.min_capability_mode", false);
user_pref("webgl.disable-extensions", true);
user_pref("webgl.disable-fail-if-major-performance-caveat", true);

// Disable auto fill of username/password in form fields
user_pref("signon.autofillForms", false);
user_pref("signon.storeWhenAutocompleteOff", false);

// Disable auto fill of passwords on http pages and show warning
user_pref("signon.autofillForms.http", false);
user_pref("security.insecure_field_warning.contextual.enabled", true);

// Disable Flash plugin
user_pref("plugin.state.flash", 0);

// Block malicious window sizes from appearing on certain websites
user_pref("browser.link.open_newwindow", 3);
user_pref("browser.link.open_newwindow.restriction", 0);

// Block pop-up windows
user_pref("dom.disable_open_during_load", true);

// Set max popups
user_pref("dom.popup_maximum", 3);

// Disable asking for passwords to be saved
user_pref("signon.rememberSignons", false);
