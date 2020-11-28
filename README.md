# Esercitazioni_Strutture_per_veicoli_aerospaziali

## Esercitazione 1

06/10/2020

**Carichi di decompressione**

Aree e scompartimenti comunicanti attraverso fori o spazi da cui passa l'aria:

Inevitabilmente si creano carichi di decompressione sulle strutture secondarie (c'é un transitorio e quindi un *gradiente* di pressione).

Questo é un problema non tanto per le strutture in sé ma per la salute delle persone a bordo.

Il differenziale di pressione si crea proprio con un transitorio temporale e bisogna minimizzare questo gradiente tramite:
+ Ventilazioni Passive
+ Ventilazioni Attive (che si attivano dopo un determinato Delta_P, non di interesse del corso)

La **pressione di cabina** non é la pressione ambiente ma é la pressione equivalente di circa *2400 m* di altitudine.

Effetti della decompressione sui passeggeri:

+ Fatale quando avviene rapidamente
+ Gestibile se avviene lentamente entro parametri di normativa

**Modellizzazione**

Si utilizzano modelli di temperatura, pressione, umiditá, ecc.
Si fanno delle assunzioni:
+ Il volume delle camere rimane costante durante la depressurizzazione
+ Il volume dell'atmosfera é supposto infinito e quindi immune a variazioni dovute alla portata in massa d'aria proveniente dall'aereo
+ L'aria é un gas ideale
+ Le proprietá dell'aria sono uniformi nel volume (Modello 0D)
+ La quota é costante durante la depressurizzazione
+ L'effetto dell'umiditá relativa, il calore latente vengono trascurati

**Tipi di depressurizzazione**

+ *Esplosiva*, t < 500 ms
+ *Rapida*, t < 10 s
+ *Lenta*, t > 10 s (**DI NOSTRO INTERESSE**)

**Definizione del problema**

Legge di conservazione della massa di un gas perfetto in volume costante (vedi slide e videolezione)

Si utilizza l'*Algoritmo per un modello quasi-stazionario* (vedi videolezione)

**Esempio 1**

Vedi videolezione

**Esempio 2**

Confrontare risultato analitico con modello quasi-stazionario numerico

+ T_0 = -10 C
+ T_c0 = 23 C
+ p_0 = 62.8812 kPa
+ P_c0 = 117.0162 kPa
+ V_c1 = 4 m³
+ V_c2 = 16 m³
+ A1_0 = 0.2 m²
+ A1_2 = 0.5 m²
+ CD_10 = 0.8
+ CD_12 = 0.7

Lo script in MUL2 prende gli input di questo problema come ***input.dat*** (dalla medesima directory)

**Parametri iniziali dell'input**

+ t tra 0 e 0.45 s (maggiore o uguale alla durata della decompressione)
+ dt = 0.00005 s (time step dell'integrazione numerica)
(va bene per problemi di tipo aeronautico)
+ ci sono spazi e vanno rispettati, é chiaro nel file di input
+ numero di compartimenti (2 in questo caso)
+ elenco dei volumi per ogni compartimento (V1, V2, ... , VN), in metri cubi (4 16)
+ temperatura iniziale di cabina (23 C)
+ temperatura esterna (-10 C)
+ pressione esterna (117 kPa)
+ pressione iniziale in cabina (63 kPa)
+ tp = 0 (cioé parametro non considerato a pressione costante, in realtá sarebbe infinito ed é il parametro di lancio)
+ Matrice che definisce le aree effettive tra i compartimenti comunicanti
    + 3x3 in questo caso, considerando due compartimenti e l'ambiente
        + righe in  i, colonne in j
        + ogni singolo elemento é dato dal prodotto del rispettivo coefficiente CD e dell'area tra i e j (la diagonale é nulla perché sarebbe l'area tra ogni elemento e se stesso)
        + in particolare l'ultima riga rappresenta l'ambiente esterno
        + la matrice é sempre simmetrica
+ Parametro 1 di ventilazione attiva (sempre nullo)
+ Parametro 2 di ventilazione attiva (sempre nullo)

**STDOUT dello script**

Feedback sui parametri in input inseriti, e informazioni sulla criticitá del processo (subrictico nel caso considerato)

**File di output**

+ th.dat e x.dat parametri relativi alla ventilazione attiva (non di interesse per questa esercitazione)
+ **p.dat**
    + Prima colonna: Incremento temporale
    + Seconda colonna: Pressione nel compartimento 1
    + Terza colonna: Pressione nel compartimento 2
    + Ultima colonna: Pressione esterna (costante)

    Il calcolo del Delta_p é semplicemente fatto come differenza tra le colonne riferite alle due cabine: il carico risultante agisce sulla paratia interna tra le due cabine (quella che poi va dimensionata)

+ **Plot.plt**
    + Genera delle immagini vettoriali (in .eps) tramite *gnuplot*


***SVOLTO ESERCIZIO 1***

### **Esercizio 2**

Prima cosa che si nots, viene utilizzato un tempo molto piú lungo per la decompressione, si puó quindi ridurre l'intervallo di tempo di integrazione.

+ t = 225 s
+ dt = 0.001 s
+ unico compartimento (p_e é una pressione ambiente ma NON costante, ha andamento esponenziale)
+ volume del compartimento 0.13 m³
+ T = 23 C uguale per entrambi gli input
+ stessa cosa per la pressione iniziale 100 kPa
+ tp = 75 s, parametro da vedere nelle slide di decompressione
+ la matrice si fa allo stesso modo e il CD é assunto pari a 1

# Esercitazione 2

