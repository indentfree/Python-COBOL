      *================================================================
      * SIMPLE COPY WITHOUT REDEFINES AND WITHOUT OCCURS
      * TOTAL-SIZE:400 / NB-FIELDS:47
      *================================================================
       01 TEST-ENR.
      *================================================================
      * SIMPLE-PICTURES : TOTAL-SIZE:100 / NB-FIELDS:8
      *================================================================
       02 SIMPLE-PICTURES.
          03 TEST-KEY-ENT                       PIC X(12).
          03 TEST-DATE-TRT.
             05 TEST-DAT-TRT-SS                 PIC 9(02).
             05 TEST-DAT-TRT-AA                 PIC 9(02).
             05 TEST-DAT-TRT-MM                 PIC 9(02).
             05 TEST-DAT-TRT-JJ                 PIC 9(02).
          03 TEST-ENR-LIB                       PIC X(30).
          03 TEST-COMP                          PIC X(10).
          03 TEST-ENR-CDST                      PIC 9(40).
      *================================================================
      * NUMERIC-PICTURES : TOTAL-SIZE:100 / NB-FIELDS:10
      *================================================================
       02 SIMPLE-PICTURES.
          03 TEST-MNT-1 PIC S9(10).
          03 TEST-MNT-2 PIC S9(7)V99   SIGN    LEADING  SEPARATE.
          03 TEST-MNT-3 PIC S9(7)V9(2) SIGN    TRAILING SEPARATE.
          02 TEST-MNT-4 PIC S9(3)V9(6) SIGN IS LEADING  SEPARATE.
          02 TEST-MNT-5 PIC S99V9(7)   SIGN IS TRAILING SEPARATE.
          02 TEST-MNT-6 PIC S9(9)      SIGN IS TRAILING SEPARATE.
      *===== with carriage return
          03 TEST-MNT-7 PIC S9(7)V99   SIGN
          LEADING
          SEPARATE.
          03 TEST-MNT-8 PIC S9(7)V9(2)
          SIGN TRAILING SEPARATE.
          03 TEST-MNT-9           PIC S9(3)V9(6) SIGN IS LEADING
          SEPARATE.
          03 TEST-MNT-10 PIC S99V9(7)   SIGN IS
                             TRAILING SEPARATE.
      *================================================================
      * REDEFINES : TOTAL-SIZE:20 / NB-FIELDS:5
      * KEEP LAST DEFINITION ONLY
      *================================================================
       02 TEST-DATE1 PIC 9(08).
       02 TEST-DATE1-DETAIL REDEFINES TEST-DATE1.
           03 TEST-DATE1-YEAR   PIC 9(4).
           03 TEST-DATE1-MONTH  PIC 99.
           03 TEST-DATE1-DAY    PIC 99.
       02 TEST-DATE2-DETAIL.
           03 TEST-DATE2-YEAR   PIC 9(4).
           03 TEST-DATE2-MONTH  PIC 99.
           03 TEST-DATE2-DAY    PIC 99.
       02 TEST-DATE2  REDEFINES TEST-DATE2-DETAIL PIC 9(08).
       02 TEST-NUM PIC 9(04).
       02 TEST-NUM-CAR REDEFINES TEST-NUM  PIC X(04).
      *================================================================
      * OCCURS :
      * TOTAL-SIZE:80=20+30+30
      * NB-FIELDS:20=4 + 6 + 2x(5)
      *================================================================
       02 SIMPLE-ARRAY-BEFORE OCCURS 4 PIC X(5).
       02 SIMPLE-ARRAY-AFTER PIC X(5) OCCURS 6.
       02 COMPLEXE-ARRAY OCCURS 2.
           03 TEST-DATA1 PIC X(1).
           03 TEST-DATA2 PIC X(2).
           03 TEST-DATA3 PIC X(3).
           03 TEST-DATA4 PIC X(4).
           03 TEST-DATA5 PIC X(5).
      *================================================================
      * SIMPLE FILLER : TOTAL-SIZE:50 / NB-FIELDS=4
      *================================================================
       02 FILLER                              PIC X(10).
       02 FILLER                              PIC X(20).
       02 FILLER                              PIC X(30).
       02 FILLER                              PIC X(40).
      ***<FIN TEST-ENR ,LONGUEUR: 400 >***
