'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "81af8db06a8b09fcafc77f58bb92bf5a",
"index.html": "5986c2e01aa873f86a0059c2ab7077d4",
"/": "5986c2e01aa873f86a0059c2ab7077d4",
"main.dart.js": "6e6f3423647d62c3bab217c5443ec16f",
"flutter.js": "6fef97aeca90b426343ba6c5c9dc5d4a",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "e20b0deb3297d757c35ac913bc7ae49e",
"assets/AssetManifest.json": "0820d94f7209029d01c41352ce816e21",
"assets/NOTICES": "f4ca3920a6ace56af4e9da4da5214175",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"assets/AssetManifest.bin": "59330bc3ea9a541999f1acbc64a1ea64",
"assets/fonts/MaterialIcons-Regular.otf": "11a74f2b06cb527b1fc2797355c99fc7",
"assets/assets/images/images%2520(3).jpeg": "f8fb7e00c0044938510148e98648b988",
"assets/assets/images/background2.png": "6e579c2280030bc5f87d3031099a543a",
"assets/assets/images/background1.png": "b8955f25a58afffc8c7f9c307af2b408",
"assets/assets/images/map.png": "6adec15ffb00bce1b815c46f1e25854f",
"assets/assets/images/header-icon.png": "787d815593b96243a77fa82dacae2f2b",
"assets/assets/images/contact.png": "f0c72e70d06eecd70f82b219a234711e",
"assets/assets/images/transport3.png": "a84cd8d8ede5325d0b106deca8f57349",
"assets/assets/images/transport2.png": "2422c5fd4b5af7ad14fcda651acc67e2",
"assets/assets/images/bus_icon.png": "6677ac7fcfeac5a1ecfa318868cda6e4",
"assets/assets/images/transport1.png": "ef6d46f46073135654eb553da80e951c",
"assets/assets/images/social.png": "f414f1aaef0f3fb5a6b8f67c7201d2a5",
"assets/assets/icons/pillow.png": "3e99b84489119ac539a23771854532c7",
"assets/assets/icons/tv.png": "0518b4ede361127ac5b40d1fa32b2783",
"assets/assets/icons/air.png": "de4e16b5add4ba126093ec5a4552aacf",
"assets/assets/icons/logo9.png": "bb1c636ac9053cc4ccaa8ee7373f50db",
"assets/assets/icons/logo8.png": "9818046dbc1eacbbc730ccbbefcfe4e3",
"assets/assets/icons/rates.png": "1be810a7b04d5918639a864a6ad4c95f",
"assets/assets/icons/logo0.png": "a8909089513228135d9d36f23674282a",
"assets/assets/icons/logo1.png": "1563a0e5152bb682699378b83027613d",
"assets/assets/icons/logo3.png": "6bb7895636f0c005f4a6a4a70074e52e",
"assets/assets/icons/logo2.png": "3465c7bcc4a3effdcee9badc1c744db8",
"assets/assets/icons/logo6.png": "e3b3a727dc8f67071b3d293a9254d150",
"assets/assets/icons/snacks.png": "92f38d3caa926fe83b3de7ead9d7cf44",
"assets/assets/icons/charging.png": "a0a1683b71dd433d7fafaea588c9070f",
"assets/assets/icons/logo7.png": "66448d6fedea3436ce50ac58f43c82c5",
"assets/assets/icons/logo5.png": "338074a69ba0e6bb58a6e6280a662156",
"assets/assets/icons/logo4.png": "ac5d0a9b6c8f88c5279d634327a8afe1",
"assets/assets/icons/reading.png": "af513e8a4fdd58bbe9fc28c6505ccc2e",
"assets/assets/icons/toilet.png": "70d0e0cfe1aba2f5d67817713bd5aa2b",
"assets/assets/icons/free.png": "fd32c8a0fd56f6e3ea650d89752f99a8",
"canvaskit/skwasm.js": "95f16c6690f955a45b2317496983dbe9",
"canvaskit/skwasm.wasm": "1a074e8452fe5e0d02b112e22cdcf455",
"canvaskit/chromium/canvaskit.js": "96ae916cd2d1b7320fff853ee22aebb0",
"canvaskit/chromium/canvaskit.wasm": "be0e3b33510f5b7b0cc76cc4d3e50048",
"canvaskit/canvaskit.js": "bbf39143dfd758d8d847453b120c8ebb",
"canvaskit/canvaskit.wasm": "42df12e09ecc0d5a4a34a69d7ee44314",
"canvaskit/skwasm.worker.js": "51253d3321b11ddb8d73fa8aa87d3b15"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
