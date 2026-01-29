# Ethernet Flow Control
<div align="justify">
Ethernet Flow Control je mehanizam definisan standardom IEEE 802.3x koji omogućava privremeno zaustavljanje prijenosa podataka između Ethernet uređaja u cilju sprječavanja gubitka podataka usljed zagušenja. Mehanizam se zasniva na razmjeni specijalnih kontrolnih okvira poznatih kao Ethernet PAUSE okviri, kojim jedna strana može zatražiti pauzu prenosa od druge strane.
</div>

## Ethernet PAUSE okvir

<div align="justify">
Ethernet PAUSE okvir predstavlja MAC Control Ethernet okvir identifikovan EtherType vrijednošću 0x8808. Kada Ethernet okvir ima ovu EtherType vrijednost, njegov payload sadrži MAC kontrolne informacije, a ne korisničke podatke.
</div>

<div align="justify">

Unutar MAC Control nalazi se polje MAC Control Opcode, koje određuje konkretnu kontrolnu funkciju. Opcode vrijednost 0x0001 označava PAUSE funkciju. Polje `pause_time` definiše trajanje pauze u jedinicama (kvantima) trajanja 512 bitskih intervala (max. 65.535 jedinica).
</div>

<br>

<p align="center">
  <img src="Images/frame.jpg" alt="Struktura PAUSE okvira"><br>
  <b>Slika 1: Struktura Ethernet PAUSE okvira sa označenim poljima.</b>
</p>

<div align="justify">

U okviru ovog projekta bit će implementiran VHDL modul `ethernet_flow_control` koji podržava:
- generisanje Ethernet PAUSE okvira na osnovu upravljačkih signala `pause` i `p_time`
- prijem i dekodiranje PAUSE okvira
- kontrolu prenosa podataka putem signala `is_paused`

Komunikacija sa okruženjem ostvarena je korištenjem Avalon-ST interfejsa sa ready/valid rukovanjem.
</div>

## Blok dijagram modula

<p align="center">
  <img src="Images/b_dijagram.jpg" alt="Blok dijagram modula"><br>
  <b>Slika 2: Blok dijagram VHDL modula ethernet_flow_control.</b>
</p>

<div align="justify">

Modul `ethernet_flow_control` implementira Ethernet flow control mehanizam baziran na IEEE 802.3x PAUSE okviru. Modul prima upravljačke signale `pause` i `p_time`, kao i ulazni Avalon-ST interfejs (`in_data`, `in_valid`, `in_sop`, `in_eop`). Na izlazu generiše Avalon-ST interfejs (`out_data`,  `out_valid`, `out_sop`, `out_eop`) i statusni signal `is_paused`.

Modul koristi Avalon-ST interfejs sa ready/valid rukovanjem. Strana koja šalje podatke postavlja signal `valid` zajedno sa podacima i oznakama početka i kraja okvira (`sop`, `eop`). Strana koja prima podatke signalom `ready` označava svoju spremnost za prijem podataka. Prenos podataka se ostvaruje samo kada su signali `valid` i `ready` istovremeno aktivni.
</div>

### Opis signala modula
<div align="justify">

- `in_data` – ulazni bajt Ethernet okvira koji modul prima sa Avalon-ST interfejsa  
- `in_valid` – označava da je bajt na `in_data` validan u tom ciklusu  
- `in_sop` – označava početak Ethernet okvira na ulazu  
- `in_eop` – označava kraj Ethernet okvira na ulazu  
- `in_ready` – pokazuje da je modul spreman za prijem ulaznih podataka  

- `out_data` – izlazni bajt Ethernet PAUSE okvira koji modul generiše  
- `out_valid` – označava da je bajt na `out_data` validan za slanje  
- `out_sop` – označava početak PAUSE okvira na izlazu  
- `out_eop` – označava kraj PAUSE okvira na izlazu  
- `out_ready` – pokazuje da je prijemnik spreman da primi izlazne podatke

- `pause` – inicira generisanje Ethernet PAUSE okvira  
- `p_time` – vrijednost koja se upisuje u polje `pause_time` i definiše trajanje pauze  
- `is_paused` – označava da je modul u stanju pauze nakon prijema PAUSE okvira
</div>

## Opis komunikacije

<div align="justify">
Sekvencijalni dijagram prikazuje razmjenu Ethernet PAUSE okvira između dvije strane: Tx strane, koja inicira kontrolu toka, i Rx strane, koja reaguje na primljeni PAUSE okvir.
</div>
<br>
<p align="center">
  <img src="Images/ulpm.jpg" alt="Opis rada modula"><br>
  <b>Slika 3: Sekvencijalni dijagram razmjene PAUSE okvira između Tx i Rx strane.</b>
</p>

<div align="justify">

Tx strana formira i šalje Ethernet PAUSE okvir prema Rx strani. Okvir je identifikovan destinacijskom MAC adresom rezervisanom za MAC Control Okvire, EtherType vrijednošću 0x8808 i MAC Control Opcode vrijednošću 0x0001, čime se okvir prepoznaje kao PAUSE okvir. Polje `pause_time` u okviru određuje trajanje pauze prenosa.

Nakon prijema PAUSE okvira, Rx strana dekodira MAC Control polja okvira i na osnovu vrijednosti opcode i `pause_time`, aktivira stanje pauze prenosa podataka tokom definisanog vremenskog intervala.

Po isteku vremena definisanog poljem `pause_time`, Rx strana automatski napušta stanje pauze i nastavlja normalan prenos podataka.
</div>

## Waveform dijagram

<div align="justify">
Waveform dijagram prikazuje kompletan proces generisanja, prenosa i detekcije Ethernet Pause okvira. 
</div>
<br>
<p align="center">
  <img src="WaveDrom/waveform.png" alt="WaveDrom dijagram" width="1200" height="1200"><br>
  <b>Slika 4: WaveDrom dijagram generisanja, prenosa i detekcije PAUSE okvira.</b>
</p>

<div align="justify">
Osnovna ideja Ethernet Flow Control mehanizma jeste da na osnovu zahtjeva generiše Ethernet Pause paket koji drugoj strani signalizira privremeno zaustavljanje slanja podataka. Implementiraju se predajne (Tx) i prijemne (Rx) stanice unutar jedne logičke cjeline. Ovakav pristup omogućava modulu da funkcioniše u dva osnovna režima rada, zavisno od mrežnog događaja.
</div>

### 1. Režim inicijatora pauze (Tx)
<div align="justify">

U ovom režimu, modul reaguje na ulazni signal `pause`. Definiše se željeno trajanje pauze preko ulaznog signala `p_time`. Aktiviranjem signala `pause`, generiše se PAUSE okvir na `out_data` interfejsu. Modul formira zaglavlje (Destination Address, Source Address, MAC Ethertype 0x8808, MAC Opcode 0x0001) i definiše vrijednost pauze koja je stigla na ulaz.
</div>

### 2. Režim izvršioca pauze (Rx)
<div align="justify">

U ovom režimu, kada modul na svom `in_data` interfejsu detektuje dolazni kontrolni okvir, on automatski preuzima ulogu prijemne stanice. Rx izvršava parsiranje zaglavlja i po potvrdi validnosti PAUSE okvira vrši ekstrakciju vrijednosti vremena pause `pause_time`. Pomoću unutrašnjeg brojača skalira se primljena vrijednost prema standardu tako da jedan kvant pauze odgovara 64 bajta, odnosno 64 clock intervala. Tokom rada brojača, signal `is_paused` se održava na logičnoj '1' blokirajući dalje slanje podataka sve do isteka definisanog vremena.
</div>

## FSM dijagram

<div align="justify">

Rad modula `ethernet_flow_control` zasnovan je na konačnom automatu stanja (FSM) koji upravlja ponašanjem prenosa podataka u zavisnosti od prisustva PAUSE zahtjeva. 
</div>

### FSM - režim inicijatora pauze

<p align="center">
  <img src="FSM/fsmtx_novo.jpg" width="700" height="700"><br>
  <b>Slika 5: FSM dijagram Tx strane – režim inicijatora pauze.</b>
</p>

<div align="justify">

FSM je dizajniran kao _Moore_-ov automat. FSM režima inicijatora pauze sadrži sljedeća stanja:

1. **IDLE** - stanje mirovanja, 
2. **SEND_DEST** - šalje MAC adresu (01:80:C2:00:00:01),
3. **SEND_SRC** - šalje MAC adresu lokalnog uređaja (11:22:33:44:AA:BB),
4. **SEND_TYPE** - šalje EtherType 0x8808,
5. **SEND_OPCODE** - šalje Opcode 0x0001 (PAUSE komanda),
6. **SEND_PTIME** - šalje trajanje pauze i
7. **SEND_PADDING** - generiše nule (0x00) kako bi se dostiglo minimalno 64 bajta paketa.
</div>


---

### FSM - režim izvršioca pauze

<p align="center">
  <img src="FSM/fsmrx_novo.jpg" width="700" height="700"><br>
  <b>Slika 6: FSM dijagram Rx strane – režim izvršioca pauze.</b>
</p>

<div align="justify">

FSM je dizajniran kao _Moore_-ov automat. FSM režima izvršioca pauze sadrži sljedeća stanja:

1. **WAIT_SOP** - čeka početak okvira, 
2. **CHECK_DEST** - provjerava MAC adresu (01:80:C2:00:00:01),
3. **CHECK_SRC** - provjerava izvor (11:22:33:44:AA:BB),
4. **CHECK_TYPE** - provjera EtherType 0x8808,
5. **CHECK_OPCODE** - potvrda da se radi o PAUSE komandi (0x0001),
6. **GET_PTIME** - upisuje vrijeme pauze u interni registar i
7. **WAIT_EOP** - čeka se kraj paketa.
8. **HOLD_PAUSE** - izlazni signal `is_paused` jednak logičkoj '1' dok interni brojač ne odbroji do nule.
</div>

## Ethernet Flow Control - VHDL modul
<div align="justify">
  
`ethernet_flow_control` modul implementira Ethernet Flow Control koristeći IEEE 802.3x *pause* okvir,
sa jasno razdvojenom predajnom (Tx) i prijemnom (Rx) stranom. Logika je pretežno
sekvencijalna i realizovana kroz dva nezavisna FSM-a: jedan koji generiše pause
okvir kada je aktivan signal `pause`, i drugi koji dekodira primljeni pause okvir
i izvlači `pause time`.

Komunikacija sa ostatkom sistema realizovana je preko Avalon-ST tipa, sa `valid/ready` rukovanjem
i podrškom za `sop/eop` signale. Tx strana šalje bajt-po-bajt Ethernet pause okvir
kroz stanja (dest, src, type, opcode, time, padding), dok Rx strana prati tok
okvira, prepoznaje strukturu pause poruke i pokreće interni tajmer.

Kada se primi validan pause okvir, modul ulazi u stanje pauze i generiše signal
`is_paused` tokom trajanja definisanog `pause time` poljem, čime se simulira
realno Ethernet flow control ponašanje.
</div>


### Uloga internih signala u modulu

<div align="justify">

- `tx_counter` – interni brojač kojim FSM Tx strane prati redni broj bajta koji se trenutno šalje u okviru Ethernet PAUSE okvira i na osnovu kojeg se vrši prelazak između TX stanja

- `rx_counter` – interni brojač kojim FSM Rx strane prati redni broj primljenog bajta Ethernet okvira radi identifikacije i dekodiranja PAUSE okvira

- `captured_p_time` – interni registar u koji FSM Rx strane upisuje vrijednost polja `pause_time` iz primljenog PAUSE okvira

- `paused_time_sig` – interni brojač koji se inicijalizuje vrijednošću `captured_p_time` i određuje trajanje stanja pauze tokom kojeg je signal `is_paused` aktivan
</div>

### Compilation report

<p align="center">
  <img src="VHDL/Images/flowsummary.png" width="700" height="700"><br>
  <b>Slika 7: Izvještaj o uspješnoj sintezi u Quartus Prime Lite okruženju.</b>
</p>

VHDL `ethernet_flow_control` modul je uspješno sintetiziran u Quartus Prime Lite razvojnog okruženja.

### FSM dijagrami VHDL modula 
<div align="justify"> 
U nastavku su prikazani FSM dijagrami predajne (Tx) i prijemne (Rx) strane modula,
generisani direktno u Quartus Prime Lite State Machine View-eru. Dijagrami u dokumentaciji se slažu sa očekivanim 
stanjima i prijelazima definisanim u dizajnu. 
</div>

<br>
<p align="center">
  <img src="FSM/txfsm_quartus.png" width="700" height="700"><br>
  <b>Slika 8: FSM dijagram Tx strane - Quartus State Machine Viewer.</b>
</p>
<br>
<p align="center">
  <img src="FSM/rxfsm_quartus.png" width="700" height="700"><br>
  <b>Slika 9: FSM dijagram Rx strane - Quartus State Machine Viewer.</b>
</p>


### RTL Viewer

<div align="justify">
  
Na RTL Viewer prikazu vide se svi ulazni i izlazni signali modula, kao i kompletna unutrašnja logika generisana iz VHDL koda. Struktura pokazuje kako se opis u VHDL-u prevodi u stvarne hardverske blokove poput osnovnih logičkih kola, multipleksera i registara.
</div>

<br>
<p align="center">
  <img src="VHDL/Images/rtl.png" width="700" height="700"><br>
  <b>Slika 10: RTL prikaz strukture modula.</b>
</p>

### ModelSim

<div align="justify">
U projektu je definisano pet različitih testbench-a, od kojih svaki demonstrira specifičan scenarij rada modula:
<br>
  
1. Osnovni testbench - bez _backpressure_ i `pause_time` = 0x0001
2. Testbench sa dužom pauzom - `pause_time` = 0x0002
3. Testbench sa najdužom pauzom - `pause_time` = 0xFFFF
4. Testbench sa _backpressure_ u sredini paketa
5. Testbench sa _backpressure_ na samom početku paketa

Cilj podjele jeste da se jasno pokaže ponašanje modula pri različitim vrijednostima pauze i otpornost modula na _backpressure_ u različitim fazama prenosa.
</div>


<div align="justify">
  
U ModelSim okruženju izvršena je simulacija rada modula koristeći testbench. Na osnovu transcripta može se zaključiti da su svi entiteti i arhitekture pravilno učitani i da je simulacija započela bez problema.
</div>

<br>
<p align="center">
  <img src="VHDL/Images/transcript.png" width="500" height="500"><br>
  <b>Slika 11: Transcript simulacije u ModelSim-u.</b>
</p>

<br>

<div align="justify">
  
### 1. Osnovni testbench
 
Tokom simulacije u ModelSim-u posmatrani su talasni oblici svih relevantnih signala modula. Dobijeni waveform prikaz je u skladu sa Waveform dijagramom prethodno prikazanim u ovom dokumentu. Redoslijed generisanja PAUSE okvira, prijema okvira i aktivacije signala `is_paused` odgovara očekivanom ponašanju definisanom u specifikaciji modula. 
</div>

<br>
<p align="center">
  <img src="VHDL/Images/modelsim.png" width="900" height="900"><br>
  <b>Slika 12: Talasni oblici osnovnog testbench-a.</b>
</p>

<br>

<div align="justify">
  
Prvi prikaz daje kompletan pregled simulacije i omogućava uvid u cjelokupan tok događaja – od generisanja PAUSE okvira, preko njegovog prijema, do isteka pauze. Drugi i treći prikaz predstavljaju uvećani dio istog talasnog oblika, kako bi se jasno mogle vidjeti pojedinačne promjene signala, vrijednosti `data` signala i stanja FSM automata.
</div>
<br>

<p align="center">
  <img src="VHDL/Images/prvidio.png" width="900" height="900"><br>
  <b>Slika 13: Uvećani prikaz početnog dijela prenosa PAUSE okvira.</b>
</p>

<p align="center">
  <img src="VHDL/Images/drugidio.png" width="900" height="900"><br>
  <b>Slika 14: Prikaz trajanja pauze - 640 ns.</b>
</p>


<div align="justify">
  
Na gornjem prikazu se jasno vidi redoslijed bajtova koji čine PAUSE okvir, kao i prelazak Tx i Rx FSM-ova kroz odgovarajuća stanja tokom prenosa.  
Donji prikaz fokusiran je na trajanje pauze nakon prijema PAUSE okvira. Za vrijednost `pause_time = 0x0001`, modul generiše pauzu u trajanju od jednog kvanta, što odgovara 512 bitskih intervala, odnosno 64 bajta ili 64 clock ciklusa. Pomoću kursora je očitano trajanje pauze od 640 ns, što je u skladu sa očekivanim trajanjem od 64 clock ciklusa, pri čemu jedan clock ciklus traje 10 ns. Tokom tog perioda signal `is_paused` ostaje aktivan, a po isteku tog vremena automatski se vraća u neaktivno stanje.  Signal `out_ready` je postavljen na logičku vrijednost '1' i ne postoji _backpressure_.
</div>

### 2. Testbench sa dužom pauzom

<div align="justify">
  
Drugi testbench je skoro identičan osnovnom, ali se razlikuje po vrijednosti `pause_time` = 0x0002. 
</div>
<br>
<p align="center">
  <img src="VHDL/Images/tb0002.png" width="900" height="900"><br>
  <b>Slika 15: Testbench sa dužom pauzom.</b>
</p>

<p align="center">
  <img src="VHDL/Images/tb00022.png" width="900" height="900"><br>
  <b>Slika 16: Prikaz trajanja pauze - 1280 ns.</b>
</p>


<div align="justify">
  
U osnovnom testbench-u, gdje je `pause_time` = 0x0001, razlika između kursora iznosi 640 ns, što odgovara trajanju pauze od jednog kvanta, a u testbench-u sa dužom pauzom (`pause_time` = 0x0002), kursori pokazuju da signal `is_paused` ostaje aktivan 1280 ns, što je tačno dvostruko duže nego u osnovnom slučaju i potvrđuje da modul pravilno skalira trajanje pauze u zavisnosti od `pause_time`. 
</div>



### 3. Testbench sa najdužom pauzom

<div align="justify">

Treći testbench implementira scenarij sa maksimalnom dozvoljenom vrijednošću polja `pause_time`, odnosno `pause_time` = 0xFFFF. Kao što je prethodno navedeno, jedan PAUSE kvant iznosi 512 bit intervala, odnosno 64 bajta. Za maksimalnu vrijednost 0xFFFF imamo 65535 kvanta, što odgovara 4 194 240 bajta, odnosno približno 4.19 MB.
</div>
<br>
<p align="center">
  <img src="VHDL/Images/ffff1.png" width="900" height="900"><br>
  <b>Slika 17: Testbench sa najdužom pauzom.</b>
</p>

Na prikazanom talasnom obliku možemo očitati poslanu vrijednost `p_time` = 0xFFFF.

<br>
<p align="center">
  <img src="VHDL/Images/ffff2.png" width="900" height="900"><br>
  <b>Slika 18: Prikaz trajanja pauze - početak.</b>
</p>

<p align="center">
  <img src="VHDL/Images/ffff3.png" width="900" height="900"><br>
  <b>Slika 19: Prikaz trajanja pauze - kraj.</b>
</p>

<div align="justify">
  
Na talasnim oblicima iznad prikazan je početak i kraj trajanja pauze. Razlika između kursora iznosi 41 942 400 000 ps, odnosno 41 942 400 ns. Ova vrijednost odgovara teorijski očekivanom trajanju najduže pauze, ukupno trajanje pauze iznosi 4 194 240 bajta x 10 ns (trajanje clock intervala) = 41 942 400 ns. 
</div>

### 4. Testbench sa _backpressure_ u sredini paketa

<div align="justify">

U ovom testbenchu se uvodi _backpressure_, to jeste signal `out_ready` se privremeno postavlja na logičku vrijednost '0'. Cilj ovog scenarija jeste da se pokaže da modul zaustavlja slanje podataka kada je `out_ready` = 0, zadržava trenutni bajt i stanje FSM-a, nastavlja tačno od istog mjesta kada `out_ready` ponovo postane 1 i ne dolazi do gubitka ili preskakanja bajtova. 

Dodatno, tokom perioda kada je `out_ready` = 0, signal `in_valid` ostaje u stanju logičke '0', jer se poštuje ready/valid handshake princip i time se osigurava da nijedan bajt ne bude izgubljen niti pogrešno protumačen, čak i uslovima privremenog zastoja na izlaznom interfejsu.
</div>

<br>
<p align="center">
  <img src="VHDL/Images/tb_bp1.png" width="900" height="900"><br>
  <b>Slika 20: Testbench sa backpressure-om u sredini paketa.</b>
</p>



Ovaj testbench dokazuje da modul pravilno podržava _backpressure_ u toku aktivnog prenosa podataka.




### 5. Testbench sa _backpressure_ na samom početku paketa
<div align="justify">

U posljednjem testbenchu se simulira slučaj kada je signal `out_ready` = 0 tačno u trenutku kada modul želi započeti slanje paketa. Provjerava se da li modul ne započinje slanje dok je `out_ready` = 0, ne dolazi do gubitka početnog bajta paketa i kompletan paket se šalje tek kada se steknu uslovi (`out_ready` = 1). 

Sa talasnog oblika se vidi da signal `out_ready` prelazi u logičku vrijednost '1' u 125 ns. Do tog trenutka ne dolazi do stvarnog prenosa podataka, a FSM ostaje u stanju čekanja. Tek nakon što `out_ready` postane logička '1' započinje slanje paketa od prvog bajta, a Rx FSM prelazi u stanje obrade odredišne adrese.
</div>
<br>
<p align="center">
  <img src="VHDL/Images/tb4.png" width="900" height="900"><br>
  <b>Slika 21: Testbench sa backpressure-om na početku paketa.</b>
</p>

<div align="justify">

Ovaj testbench dokazuje da modul pravilno odlaže slanje paketa kada izlazni interfejs nije spreman od samog početka prenosa, bez gubitka podataka i bez narušavanja redoslijeda bajtova.
</div>

## Zaključak

<div align="justify">
  
U okviru ovog projekta realizovan je VHDL modul `ethernet_flow_control` koji implementira Ethernet Flow Control mehanizam definisan standardom IEEE 802.3x. Modul omogućava generisanje, prijem i obradu Ethernet PAUSE okvira, kao i kontrolu toka podataka putem signala `is_paused`, uz korištenje Avalon-ST interfejsa sa ready/valid rukovanjem.

Funkcionalnost modula verifikovana je kroz blok dijagrame, FSM dijagrame, RTL prikaz i simulaciju u ModelSim okruženju. Dobijeni rezultati pokazuju da se modul ponaša u skladu sa specifikacijom: pravilno generiše PAUSE okvir, ispravno dekodira primljeni okvir i precizno realizuje trajanje pauze na osnovu polja `pause_time`. Kroz više različitih simulacija pokazano je da modul ispravno funkcioniše kada je izlazni interfejs spreman za prijem podataka, da pravilno skalira trajanje pauze za različite vrijednosti `pause_time`, da pouzdano zaustavlja i nastavlja prenos kada dođe do _backpressure_-a u sredini paketa, te da pravilno odlaže početak slanja kada _backpressure_ postoji već na samom početku prenosa, bez gubitka ili preskakanja podataka.

U budućem razvoju modul se može unaprijediti tako da podržava promjenjive MAC adrese, rad sa više tokova podataka, praćenje broja poslatih i primljenih PAUSE okvira, te prilagođavanje za rad u većim i bržim mrežama.
</div>

## Literatura
- https://en.wikipedia.org/wiki/Ethernet_flow_control
- https://www.intel.com/content/www/us/en/docs/programmable/683091/20-1/introduction-to-the-interface-specifications.html
- Predavanja iz predmeta *Arhitekture paketskih čvorišta*, V. prof. dr Enia Kaljića, mr. dipl. ing.: https://c2.etf.unsa.ba/course/view.php?id=158
- https://github.com/yol/ethernet_mac/blob/master/README.md
