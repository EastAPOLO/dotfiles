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
user_pref("browser.newtabpage.activity-stream.feeds.snippets", false);
user_pref("browser.aboutHomeSnippets.updateUrl", "");
user_pref("browser.newtabpage.activity-stream.feeds.section.topstories", false);
user_pref("browser.newtabpage.activity-stream.section.highlights.includePocket", false);
user_pref("browser.newtabpage.activity-stream.showSponsored", false);
user_pref("browser.library.activity-stream.enabled", false);

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

/* ******** */
/* SECURITY */
/* ******** */
// Disable insecure SSL/TLS renegotiation
user_pref("security.ssl.require_safe_negotiation", true);
user_pref("security.ssl.treat_unsafe_negotiation_as_broken", true);

// Set min and max TLS version
user_pref("security.tls.version.min", 3);
user_pref("security.tls.version.max", 4);

// Disable webgl due to being a security risk
user_pref("webgl.disabled", true);
