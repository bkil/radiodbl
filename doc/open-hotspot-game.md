# Open hotspot mapping game

Wardriving challenge. You are deployed first in an unfamiliar city then in a larger town for a specific time frame (e.g., 1 hour each time).

## Goal

* Keep a test website open for verification and connect to as many guest wifi as possible within the timeframe.

## Score

The exact scale is subject to optimization.

* 1 point: first connection per AP
* 1 point: second connection to the same AP at least 30 minutes following the first connection (no other enumerated point is added the second time)
* 1 point: if the AP supports connections between client stations (i.e., not isolated)
* 1 point: if using the AP does not require personal data or billing details (i.e., unlike a trial at a commercial provider)
* 4 points: if the AP provides WAN access and is non-stationary (e.g., transportation vehicles or personal hotspots)
* 5 points: if the AP does not provides WAN access and is stationary
* 16 points: if the AP provides WAN access and is stationary

## Constraints

* Only legal and ethical methods allowed: e.g., no networks which would require a password to associate with, no sidestepping of portal login pages where authorization is required
* You can't travel faster than 5km/h.
* You can't spend any money. A commercial provider who offers a free trial period may be admissible as long as registration does not require out of band or previous internet access.
* You can't prepare by studying the location before the challenge or by consulting the internet realtime through another device. You are allowed to consult offline databases and maps which you always carry with you. You are allowed to do internet lookups during the challenge only while you are connected to a given AP, but this will take away precious survey time.
* You should return to the starting point before time runs up, otherwise you will receive a penalty. Random sections of your track (including all AP found on those sections) may be removed until it fits within the time frame or your score may be reduced in proportion to the time overrun.
* You should print business cards for owners of possibly insecure AP with links to documentation of how to fix the problem.

## Results

* You must record a GPX trace and a log of all connections and survey results in the background automatically. Traces and open hotspots should be contributed to OpenStreetMap in the end. GeoIP and metadata about the AP may be contributed to some open database.
* You should run a service in the background which gives an instant audible notification for each insecure AP found. You should leave a business card for the owner. You should do the same if you feel that a given open hotspot was not intended to be left open.
