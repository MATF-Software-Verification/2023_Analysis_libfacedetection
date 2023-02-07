# 2023_Analysis_libfacedetection

U ovom projektu biće dat detaljan prikaz analize projekta libfacedetection: https://github.com/ShiqiYu/libfacedetection autora Shiqi Yu.
U okviru projekta je analizirana biblioteka za detekciju lica i dva njena primera upotrebe - detekcija lica na prosleđenoj slici i detekcija lica sa kamere uredjaja. 
Primena alata će biti izvršena na main grani, nad komitom čiji je hash code sledeći:ec528ce43af9de94bf2fab308ce2d6270584881c. U repozitorijumu se nalaze izlazi korišćenih alata, opis analize projekta u okviru ProjectAnalysisReport.pdf, kao i skripte za reprodukovanje rezultata.

# Korišćeni alati:
1. CppCheck
2. Memcheck
3. Massif
4. Callgrind
5. Gcov

# Zaključak:
Na osnovu analize projekta zaključujemo da biblioteka nema većih propusta. 
Dinamička analiza nije pronašla propuste, dok je statička analiza ukazala na curenje memorije i nekorišćene promenljive.

