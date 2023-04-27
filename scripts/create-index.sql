CREATE INDEX IDX_BEFUND_patnr ON befund (patnr ) ;
CREATE INDEX IDX_BEFUND_datum ON befund (datum ) ;
CREATE INDEX IDX_BEFUND_arztid ON befund (arztid ) ;
CREATE INDEX IDX_BEFUND_kuerzel ON befund (kuerzel ) ;
CREATE INDEX IDX_BEFUND_inhalt ON befund (inhalt) ;
CREATE INDEX IDX_BEFUND_quartal ON befund (quartal ) ;

CREATE INDEX IDX_BEFGONR_patnr ON befgonr (patnr ) ;
CREATE INDEX IDX_BEFGONR_arztid ON befgonr (arztid ) ;
CREATE INDEX IDX_BEFGONR_gnr ON befgonr (gnr ) ;

CREATE INDEX IDX_KSCHEIN_patnr ON kschein (patnr ) ;
CREATE INDEX IDX_KSCHEIN_quartal ON kschein (quartal ) ;

CREATE INDEX IDX_PATCHIP_patnr ON patchip (patnr ) ;
CREATE INDEX IDX_PATCHIP_arztnr ON patchip (arztnr );
CREATE INDEX IDX_PATCHIP_lestag ON patchip (lestag ) ;

CREATE INDEX IDX_PATGRUPP_patnr ON patgrupp (patnr ) ;
CREATE INDEX IDX_PATGRUPP_arztid ON patgrupp (arztid );
CREATE INDEX IDX_PATGRUPP_gruppe ON patgrupp (gruppe ) ;

CREATE INDEX IDX_PATIENT_nr ON patient (nr ) ;
CREATE INDEX IDX_PATIENT_internezu ON patient (internezu );
CREATE INDEX IDX_PATIENT_seit ON patient (seit );
CREATE INDEX IDX_PATIENT_lese ON patient (lestag );
CREATE INDEX IDX_PATIENT_last_beh ON patient (last_beh );

CREATE INDEX IDX_PATEXTRA_pos ON patextra (pos );
CREATE INDEX IDX_PATEXTRA_text ON patextra (text );
