'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "c0f6a8b311aa8842b720b23a1d11f243",
"assets/AssetManifest.json": "5035a23ebd9fde0c6e7addd2cbfe8a5d",
"assets/FontManifest.json": "d58b2bdb1e47ef52e8becab0ff2b68f7",
"assets/fonts/Lora/static/Lora-Bold.ttf": "04a54a65953cf0c6f9c2170ee70ee8b7",
"assets/fonts/Lora/static/Lora-Medium.ttf": "4e4f1dc55a062af61b51c783c510b6ca",
"assets/fonts/Lora/static/Lora-Regular.ttf": "5fbbc2dd9545c49556bbf4323e73ffe0",
"assets/fonts/MaterialIcons-Regular.otf": "39d45b12ff56ebd94459be0bcf5f7d4b",
"assets/fonts/Oswald/static/Oswald-Bold.ttf": "452bfeb5bf78e71cc3cd6e720ac24bd4",
"assets/fonts/Oswald/static/Oswald-Light.ttf": "6ee38c23e5466cb24e844b1c345d610d",
"assets/fonts/Oswald/static/Oswald-Regular.ttf": "a7ccbd3cd9a9ff21ec41086dcc23ebe6",
"assets/images/bulk-jars.jpg": "0dabc9e2fe999c513e2b9f543a87fea6",
"assets/images/bulk.jpg": "d76201c183a81ec3ddb8194c38394753",
"assets/images/buy-in-bulk.jpg": "47ff967a4bb07845bb1319d349af845e",
"assets/images/climate-poverty.jpg": "d1a11d481cab84fa56e4f876ec0c8683",
"assets/images/climate-refugees.jpg": "8745ea8239e86626f20604358dcf8153",
"assets/images/flooding.jpg": "c3d4384c4f03a88877c050ab83869bef",
"assets/images/foodwaste.jpg": "80e64d78c5c38c96a4e2a9f4ba0f7761",
"assets/images/gender-gap.jpg": "b066539f0674bd706f366a66b03d3c7f",
"assets/images/gender-inequality.jpg": "cea1c1dbde6d2606a071ee30b0dc50da",
"assets/images/inequality-climate-change.jpg": "95dfd97db944e5d19bce2c9e126c035d",
"assets/images/lic-countries.jpg": "a00426e26168b001a127d3045bf01c31",
"assets/images/public-transit.jpg": "9514678e40482db000427e889acf2cee",
"assets/images/public-transportation.jpg": "0827cbd9b150654e611ce19ef60e8617",
"assets/images/social-issue.jpg": "deaca12a2bb4aa8f326f35c44e12b0ee",
"assets/images/tote-bags.jpg": "4a26e30bc3f5f11c8c4ae49abd1bd21b",
"assets/images/zero-waste.jpg": "8e9a18b3a2739103d092133b77ddfea7",
"assets/images%255Cbulk-jars.jpg": "0dabc9e2fe999c513e2b9f543a87fea6",
"assets/images%255Cbulk.jpg": "d76201c183a81ec3ddb8194c38394753",
"assets/images%255Cbuy-in-bulk.jpg": "47ff967a4bb07845bb1319d349af845e",
"assets/images%255Cclimate-poverty.jpg": "d1a11d481cab84fa56e4f876ec0c8683",
"assets/images%255Cclimate-refugees.jpg": "8745ea8239e86626f20604358dcf8153",
"assets/images%255Cflooding.jpg": "c3d4384c4f03a88877c050ab83869bef",
"assets/images%255Cfoodwaste.jpg": "80e64d78c5c38c96a4e2a9f4ba0f7761",
"assets/images%255Cgender-gap.jpg": "b066539f0674bd706f366a66b03d3c7f",
"assets/images%255Cgender-inequality.jpg": "cea1c1dbde6d2606a071ee30b0dc50da",
"assets/images%255Cinequality-climate-change.jpg": "95dfd97db944e5d19bce2c9e126c035d",
"assets/images%255Clic-countries.jpg": "a00426e26168b001a127d3045bf01c31",
"assets/images%255Cpublic-transit.jpg": "9514678e40482db000427e889acf2cee",
"assets/images%255Cpublic-transportation.jpg": "0827cbd9b150654e611ce19ef60e8617",
"assets/images%255Csocial-issue.jpg": "deaca12a2bb4aa8f326f35c44e12b0ee",
"assets/images%255Ctote-bags.jpg": "4a26e30bc3f5f11c8c4ae49abd1bd21b",
"assets/images%255Czero-waste.jpg": "8e9a18b3a2739103d092133b77ddfea7",
"assets/NOTICES": "85fe0ce2072198323949656e44810a32",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "57d849d738900cfd590e9adc7e208250",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"canvaskit/canvaskit.js": "76f7d822f42397160c5dfc69cbc9b2de",
"canvaskit/canvaskit.wasm": "f48eaf57cada79163ec6dec7929486ea",
"canvaskit/chromium/canvaskit.js": "8c8392ce4a4364cbb240aa09b5652e05",
"canvaskit/chromium/canvaskit.wasm": "fc18c3010856029414b70cae1afc5cd9",
"canvaskit/skwasm.js": "1df4d741f441fa1a4d10530ced463ef8",
"canvaskit/skwasm.wasm": "6711032e17bf49924b2b001cef0d3ea3",
"canvaskit/skwasm.worker.js": "19659053a277272607529ef87acf9d8a",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "6b515e434cea20006b3ef1726d2c8894",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "32ecb5db855fd285bfb5eb7e3dc6b4c4",
"/": "32ecb5db855fd285bfb5eb7e3dc6b4c4",
"main.dart.js": "1ceac388e9193e27a10b4453cbe7a126",
"manifest.json": "e869b54815688c09fa7e758179288325",
"version.json": "1babe854379db2fff661f2b30d1f1c0c"};
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
