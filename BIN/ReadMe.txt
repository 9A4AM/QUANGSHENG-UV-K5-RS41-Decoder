Izmjena u radiosonde.c 


za 6 decimala treba:

    // Line 2: Latitude
    int32_t lat_deg = d->lat_1e6 / 1000000;
    int32_t lat_frac = d->lat_1e6 % 1000000;
    if (lat_frac < 0) lat_frac = -lat_frac;
    char lat_dir = (d->lat_1e6 >= 0) ? 'N' : 'S';
    sprintf(str, "Lat: %ld.%06ld %c", (long)lat_deg, (long)lat_frac, lat_dir);
    GUI_DisplaySmallest(str, 0, 16, false, true);

    // Line 3: Longitude
    int32_t lon_deg = d->lon_1e6 / 1000000;
    int32_t lon_frac = d->lon_1e6 % 1000000;
    if (lon_frac < 0) lon_frac = -lon_frac;
    char lon_dir = (d->lon_1e6 >= 0) ? 'E' : 'W';
    sprintf(str, "Lon: %ld.%06ld %c", (long)lon_deg, (long)lon_frac, lon_dir);
    GUI_DisplaySmallest(str, 0, 24, false, true);
	
	
	i još dolje niže za QR kod:
	
	
	    // geo:lat,lon
    sprintf(url, "geo:%ld.%06ld,%ld.%06ld",
            (long)lat_deg, (long)lat_frac,
            (long)lon_deg, (long)lon_frac);
			
			
			i još promjena verzije koda u Makefile
			
			
			
PACKED_FILE_SUFFIX = UVK5_MOD_9A4AM


dalje samo kompajl i package


1) build_rs41_9a4am_Firmware_BIN.bat

ako je sve ok (napravio se firmware.bin koji je RAW onda treba pack za Flasher:

2) run_pack_9a4am.py

Nakon toga imamo pravi UVK5_MOD.bin koji dalje ubacimo u radi s:

3) https://9a4am.github.io/
Prije Flash treba ući u Flash Mode da s ugašenim uređajem pritisnuti PTT i onda Power ON, s time da se upali LED bijela, ako nije odspoji Kabal i ponovno spoji te ponovi PTT -Power ON dok ne zasvijetli LED. Nakon toga Flash na Com port koji već je.

73 de 9A4AM@2026







