ALTER TABLE DIM_AccToLanguage
	ADD CONSTRAINT FK_MBCATL_MBCACC FOREIGN KEY
	( EMail )
	REFERENCES DIM_Account
	( EMail )
; 

ALTER TABLE DIM_AccToLanguage
	ADD CONSTRAINT FK_MBCATL_MBCLNG FOREIGN KEY
	( Language_CD )
	REFERENCES DIM_Language
	( Language_CD )
; 

ALTER TABLE DIM_AccToVocab
	ADD CONSTRAINT FK_MBCATV_MBCVOC FOREIGN KEY
	( Vocab,
	Language_CD )
	REFERENCES DIM_Vocab
	( Vocab,
	Language_CD )
; 

ALTER TABLE DIM_AccToVocab
	ADD CONSTRAINT FK_MBCATV_MBCATL FOREIGN KEY
	( AccToLanguage_ID )
	REFERENCES DIM_AccToLanguage
	( AccToLanguage_ID )
; 

ALTER TABLE DIM_Account
	ADD CONSTRAINT FK_MBACC_MBACC FOREIGN KEY
	( EMail_Parent )
	REFERENCES DIM_Account
	( EMail )
; 

ALTER TABLE DIM_Account
	ADD CONSTRAINT FK_MBACC_MBCATP FOREIGN KEY
	( AccType_CD )
	REFERENCES DIM_AccType
	( AccType_CD )
; 

ALTER TABLE DIM_Account
	ADD CONSTRAINT FK_MBACC_MBCGND FOREIGN KEY
	( Gender_CD )
	REFERENCES DIM_Gender
	( Gender_CD )
; 

ALTER TABLE DIM_Account
	ADD CONSTRAINT FK_MBACC_MBCLTP FOREIGN KEY
	( LearningType_CD )
	REFERENCES DIM_LearningType
	( LearningType_CD )
; 

ALTER TABLE DIM_Vocab
	ADD CONSTRAINT FK_VOCAB_MBCLNG FOREIGN KEY
	( Language_CD )
	REFERENCES DIM_Language
	( Language_CD )
; 

ALTER TABLE DIM_Vocab
	ADD CONSTRAINT FK_VOCAB_MBCCLS FOREIGN KEY
	( Class_CD )
	REFERENCES DIM_Classes
	( Class_CD )
; 

