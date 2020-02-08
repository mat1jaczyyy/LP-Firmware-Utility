if (workbox) {
  console.log(`Workbox is loaded`)
  self.__precacheManifest = [].concat(self.__precacheManifest || [])
  workbox.precaching.suppressWarnings()
  workbox.precaching.precacheAndRoute(self.__precacheManifest, {})
  workbox.routing.registerNavigationRoute("/index.html")
} else console.log(`Workbox didn't load`)

self.addEventListener("message", message => {
  if (message.data.action === "skipWaiting") self.skipWaiting()
})
