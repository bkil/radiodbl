# Legal concerns

## In support

https://academic.oup.com/idpl/article/1/3/149/688705

> Conclusion
> It can be seen from the analysis set out in this article that, in all but very rare and highly unusual situations, WiFi network data alone cannot identify an individual. There is a risk that an SSID could be customized so as to contain identifying information, however, such cases would seem to be rare and without any certainty as to the relevance of such an identified individual to the WiFi network. The combination of WiFi network data with location information by digital mapping companies does not alter this position; such location information is approximated and is not reasonably likely to be used to identify a specific individual.
> Ultimately, it would seem disproportionate to effectively prevent the collection and use of WiFi mapping data on grounds of privacy and data protection. WiFi network data are publicly broadcast and anyone is free to record the locations at which each network can be received. Except in exceptional circumstances, there does not seem to be a significant privacy risk in allowing people to look up their current location by reference to these wireless ‘landmarks’

## Can be mitigated

### Opting out

https://ec.europa.eu/justice/article-29/documentation/opinion-recommendation/files/2011/wp185_en.pdf

> In order for controllers to successfully let their legitimate interests prevail over time over the interests of the data subjects, they must develop and implement guarantees, such as the right to easily and permanently opt-out from the database, without needing to provide additional personal data to the controller of such a database.

We strive not to collect any personal data and we obey the "_nomap" convention of opt-out established by Google, Mozilla and wigle.net

https://ec.europa.eu/justice/article-29/documentation/opinion-recommendation/files/2011/wp185_en.pdf

### Reasonable purpose of SSID collection

> Additionally, for the purpose of offering geolocation services, the collection and processing of SSIDs is not necessary. Therefore the collection and processing of SSIDs is excessive to the purpose of offering geolocation services based on mapping of the location of WiFi access points.

Our purposes go beyond providing geolocation services. It is needed for the purpose of OpenStreetMap contribution. It improves precision for the purpose of device model determination.

### GDPR PII

* https://en.wikipedia.org/wiki/Personal_identifier#Examples_of_PID
* https://eur-lex.europa.eu/legal-content/EN/TXT/HTML/?uri=CELEX:32016R0679#d1e1489-1-1

> ‘personal data’ means any information relating to an identified or identifiable natural person (‘data subject’); an identifiable natural person is one who can be identified, directly or indirectly, in particular by reference to an identifier such as a name, an identification number, location data, an online identifier or to one or more factors specific to the physical, physiological, genetic, mental, economic, cultural or social identity of that natural person;

We should strive to curate that positioned SSID should not contain sensitive data.

The positioned MAC address of a device known to be of personal nature such as a phone or laptop should not be collected.

Collecting the fingerprint, MAC and the SSID together without positioning may still reveal personal information if the device model and the SSID reveals mutual information.

Collecting the fingerprint and MAC, but without positioning or user determined fields such as the SSID should not be problematic.

### Dynamic IP addresses

https://techgdpr.com/blog/wifi-tracking-retail-analytics-gdpr/

> On 19 October 2016, the Court of Justice of the European Union (the “CJEU”) published its judgment in Case 582/14 – Patrick Breyer v Germany. This judgement concludes that dynamic IP addresses are to be seen as personal data
> and following the same logic, MAC addresses of personal devices are therefore certainly to be seen as personal data

The MAC address mentioned above refers to a client device that willingly connects to the given LAN, get assigned an IP address and then transfers over the internet on the command of the person. Such an IP address usually lives long enough for remote service providers over the WAN to correlate its activities and sometimes also deanonymize the user based on tracking fingerprint for advertising gains.

Our project aims at surveying devices which are not clients tied to a person (such as a smart phone or laptop), but rather survey those that are part of a deployed infrastructure such as a public access point that is stationary. Such an AP does not produce daily movements, nor does it connect to other networks in accordance with personal user activities.

## Not relevant

### Forbidden data acquisition

https://hu.wikipedia.org/wiki/Tiltott_adatszerz%C3%A9s

> BTK 422. §
> személyes adat, magántitok, gazdasági titok vagy üzleti titok jogosulatlan megismerése céljából: [...]
> A d) elektronikus hírközlő hálózat - ideértve az információs rendszert is - útján másnak továbbított vagy azon tárolt adatot kifürkész, és az észlelteket technikai eszközzel rögzíti

* The MAC and SSID are broadcast publicly to everyone. They are not destined to be (discretely) forwarded towards a dedicated private person.
* No stored information is access other than what is being broadcast publicly

### Publicly available data sets

https://iapp.org/news/a/publicly-available-data-under-gdpr-main-considerations/

> the principle of public access to official documents needs to be taken into account. Such access to official documents may be considered to be in the public interest, and personal data in documents held by a public authority or a public body should be able to be publicly disclosed by that authority or body if the disclosure is provided for by EU or member state law to which the public authority or public body is subject.

* Not coming from a public database
* The wireless signals are broadcast publicly without ciphering
* Under direct control of the individual herself
* Having full control over the numeric identifier (MAC), the network name (SSID) its signal strength and time of operation
