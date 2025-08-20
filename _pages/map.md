---
title: "World Map"
permalink: /map/
layout: splash
author_profile: false
---

<style>
@media only screen and (max-width: 768px) {
  iframe.dynmap-embed {
    height: 400px !important;
  }
}
</style>

<iframe 
  class="dynmap-embed"
  src="https://map.tamrielcraft.eu/"
  width="100%"
  height="600"
  frameborder="0"
  allowfullscreen
  style="border:1px solid #444; border-radius: 8px;"
  >
</iframe>

<a class="btn btn--primary" target="_blank" href="https://map.tamrielcraft.eu/">Open Dynmap</a> 

## 🗺️ Map Legend

The Dynmap includes custom icons to help identify important locations across Tamriel:

{% include map-legend.html %}

---

## 🧭 Navigation and Warps

Hover over any Dynmap marker to view the name of the build or location.

Many major destinations can be visited instantly using the `/warp` command in-game — for example, `/warp spawn` will take you to the **Keywright's Gallery**, our central hub and spawn inspired by the old *ESO* tutorial area. From there, portals provide fast travel to various key locations across Tamriel.

