# Collected data

## SSID positions

* Fields: GPS, SSID
* The use case would help map and maintain OpenStreetMap POI - mostly companies are of interest
* The precision of the position may be reduced to crossroads level
* May be filtered: SSID that are default, generated, corresponding to mobile stations, generic hotspot federation or which are trivially family names
* For privacy concerns, may also filter closed and encrypted networks in general, but this could lose information
* Only collect a record if it does not match the personal device list

### Curated personal SSID

* Table 1 fields: MAC, ?device model, coarse position for verification (district)
* Table 2 fields: SSID hash, coarse position for verification (district)
* Table 3 fields: SSID regexp
* Some SSID may contain sensitive data either by itself or in combination with positioning information.
* The SSID of such an AP must never be recorded if found on a survey.
* Take care to not contribute an overly broad regexp or hash if a company may plausible have the same name somewhere else.
* Optional determined device model for cross checking of MAC cloning

## MAC positions

* Fields: MAC, GPS, ?device model
* For the well known network-based and indoor mobile positioning application
* Only collect a record if it does not match the personal device list
* Optional determined device model for cross checking of MAC cloning

An alternative for this use case is to use hashing and confusion set based statistics to increase anonymity, such as:

* https://github.com/wiglenet/m8b
* https://github.com/wiglenet/m8binary/releases

### Curated personal devices

* Table 1 fields: SSID regexp, ?GPS, ?radius
* Table 2 fields: MAC range, ?SSID regexp
* Obey _nomap convention used by Google, Mozilla and wigle.net
* May be updated heuristically based on certain fingerprint properties, metadata fields and operation semantics, such as type of fields, ToDS, probe request/response
* Manually curated metadata to help identify devices that are mobile clients, not stationary infrastructure. These may be tied to an individual person, and hence their position or exact time of operation must not be recorded.
* Also add to list if based on multiple observations over time of one or more surveying volunteers a given MAC (cross checked using device fingerprint) seems to change position

## Open network positions

* Fields: GPS, whether internet access was verified (without SSID or MAC)
* If someone would like to find a place to check their messages or get directions when on the road
* Only record an AP which does not match the closed network list
* Canonicalize samples of an AP based on the strongest median tile
* Combine networks that are close by to a single record

### Curated closed networks

* Table 1 fields: SSID regexp, ?GPS, ?radius
* Table 2 fields: MAC range, ?SSID regexp
* Manually curated metadata to help identify networks that lack encryption but which are not open networks.

## MAC fingerprints

* Fields: MAC, fingerprint kind, device fingerprint sample, ?SSID, coarse position for verification (district)
* Surveying of device model (along with chipset and firmware) to gauge maintenance or porting requirements of OpenWrt support
* Multiple kinds can be collected from the same device based on power saving state, frame type, phy kind, peer capabilities
* Replace ephemeral values such as timestamps, frequency and signal strength with a representative within the same domain
* Only record SSID if the sample does not match the personal device list
* The SSID is optional, but sometimes it does help determine the device kind either from its default or if the user types in the model name from the box. This has actually been observed numerous times in the past.

### Curated device fingerprints

* Table 1 fields: device fingerprint detection rule, device model
* Table 2 fields: MAC range, device model, whether it is exclusive
* Table 3 fields: SSID regexp, device model
* Table 4 fields: device model, whether it is a personal client, whether it is used for public transport
* Maintained by hand and via heuristics
