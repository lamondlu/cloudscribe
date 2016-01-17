SET TERM ^ ;ALTER PROCEDURE MP_SITES_INSERT (    SITEGUID Char(36),    SITENAME Varchar(255),    SKIN Varchar(100),    ALLOWNEWREGISTRATION Smallint,    USESECUREREGISTRATION Smallint,    USESSLONALLPAGES Smallint,    ISSERVERADMINSITE Smallint,    USELDAPAUTH Smallint,    AUTOCREATELDAPUSERONFIRSTLOGIN Smallint,    LDAPSERVER Varchar(255),    LDAPPORT Integer,    LDAPDOMAIN Varchar(255),    LDAPROOTDN Varchar(255),    LDAPUSERDNKEY Varchar(10),    REALLYDELETEUSERS Smallint,    USEEMAILFORLOGIN Smallint,    ALLOWUSERFULLNAMECHANGE Smallint,    REQUIRESQUESTIONANDANSWER Smallint,    MAXINVALIDPASSWORDATTEMPTS Integer,    PASSWORDATTEMPTWINDOWMINUTES Integer,    MINREQUIREDPASSWORDLENGTH Integer,    MINREQNONALPHACHARS Integer,    DEFAULTEMAILFROMADDRESS Varchar(100),    RECAPTCHAPRIVATEKEY Varchar(255),    RECAPTCHAPUBLICKEY Varchar(255),    APIKEYEXTRA1 Varchar(255),    APIKEYEXTRA2 Varchar(255),    APIKEYEXTRA3 Varchar(255),    APIKEYEXTRA4 Varchar(255),    APIKEYEXTRA5 Varchar(255),    DISABLEDBAUTH smallint,	AllowDbFallbackWithLdap smallint,	EmailLdapDbFallback smallint,	AllowPersistentLogin smallint,	CaptchaOnLogin smallint,	CaptchaOnRegistration smallint,	SiteIsClosed smallint,	SiteIsClosedMessage Blob sub_type 1,	PrivacyPolicy Blob sub_type 1,	TimeZoneId varchar(50),	GoogleAnalyticsProfileId varchar(25),	CompanyName varchar(255),	CompanyStreetAddress varchar(250),	CompanyStreetAddress2 varchar(250),	CompanyRegion varchar(200),	CompanyLocality varchar(200),	CompanyCountry varchar(10),	CompanyPostalCode varchar(20),	CompanyPublicEmail varchar(100),	CompanyPhone varchar(20),	CompanyFax varchar(20),	FacebookAppId varchar(100),	FacebookAppSecret varchar(100),	GoogleClientId varchar(100),	GoogleClientSecret varchar(100),	TwitterConsumerKey varchar(100),	TwitterConsumerSecret varchar(100),	MicrosoftClientId varchar(100),	MicrosoftClientSecret varchar(100),	PreferredHostName varchar(250),	SiteFolderName varchar(50),	AddThisDotComUsername varchar(50),	LoginInfoTop Blob sub_type 1,	LoginInfoBottom Blob sub_type 1,	RegistrationAgreement Blob sub_type 1,	RegistrationPreamble Blob sub_type 1,	SMTPServer varchar(200),	SMTPPort integer,	SMTPUser varchar(500),	SMTPPassword varchar(500),	SMTPPreferredEncoding varchar(20),	SMTPRequiresAuth smallint,	SMTPUseSsl smallint,	RequireApprovalBeforeLogin smallint,	IsDataProtected smallint,	CreatedUtc Timestamp		)RETURNS (    SITEID Integer )ASBEGIN SITEID = NEXT VALUE FOR mp_Sites_seq;INSERT INTO MP_SITES(				                SITEID,                SITEGUID,                SITENAME,                SKIN,                 ALLOWNEWREGISTRATION,                USESECUREREGISTRATION,                USESSLONALLPAGES,                 ISSERVERADMINSITE,                USELDAPAUTH,                AUTOCREATELDAPUSERONFIRSTLOGIN,                LDAPSERVER,                LDAPPORT,                LDAPDOMAIN,                LDAPROOTDN,                LDAPUSERDNKEY,                REALLYDELETEUSERS,                USEEMAILFORLOGIN,                ALLOWUSERFULLNAMECHANGE,                  REQUIRESQUESTIONANDANSWER,                MAXINVALIDPASSWORDATTEMPTS,                PASSWORDATTEMPTWINDOWMINUTES,                              MINREQUIREDPASSWORDLENGTH,                MINREQNONALPHACHARS,                             DEFAULTEMAILFROMADDRESS,                             RECAPTCHAPRIVATEKEY,                RECAPTCHAPUBLICKEY,             				APIKEYEXTRA1,				APIKEYEXTRA2,				APIKEYEXTRA3,				APIKEYEXTRA4,                APIKEYEXTRA5,				DisableDbAuth,				AllowDbFallbackWithLdap,				EmailLdapDbFallback,				AllowPersistentLogin,				CaptchaOnLogin,				CaptchaOnRegistration,				SiteIsClosed,				SiteIsClosedMessage,				PrivacyPolicy,				TimeZoneId,				GoogleAnalyticsProfileId,				CompanyName,				CompanyStreetAddress,				CompanyStreetAddress2,				CompanyRegion,				CompanyLocality,				CompanyCountry,				CompanyPostalCode,				CompanyPublicEmail,				CompanyPhone,				CompanyFax,				FacebookAppId,				FacebookAppSecret,				GoogleClientId,				GoogleClientSecret,				TwitterConsumerKey,				TwitterConsumerSecret,				MicrosoftClientId,				MicrosoftClientSecret,				PreferredHostName,				SiteFolderName,				AddThisDotComUsername,				LoginInfoTop,				LoginInfoBottom,				RegistrationAgreement,				RegistrationPreamble,				SMTPServer,				SMTPPort,				SMTPUser,				SMTPPassword,				SMTPPreferredEncoding,				SMTPRequiresAuth,				SMTPUseSsl,				RequireApprovalBeforeLogin,				IsDataProtected,				CreatedUtc) VALUES (				               :SITEID,               :SITEGUID,               :SITENAME,               :SKIN,                             :ALLOWNEWREGISTRATION,               :USESECUREREGISTRATION,               :USESSLONALLPAGES,                             :ISSERVERADMINSITE,               :USELDAPAUTH,               :AUTOCREATELDAPUSERONFIRSTLOGIN,               :LDAPSERVER,               :LDAPPORT,               :LDAPDOMAIN,               :LDAPROOTDN,               :LDAPUSERDNKEY,               :REALLYDELETEUSERS,               :USEEMAILFORLOGIN,               :ALLOWUSERFULLNAMECHANGE,                             :REQUIRESQUESTIONANDANSWER,               :MAXINVALIDPASSWORDATTEMPTS,               :PASSWORDATTEMPTWINDOWMINUTES,                           :MINREQUIREDPASSWORDLENGTH,               :MINREQNONALPHACHARS,                              :DEFAULTEMAILFROMADDRESS,                             :RECAPTCHAPRIVATEKEY,               :RECAPTCHAPUBLICKEY,               			   :APIKEYEXTRA1,			   :APIKEYEXTRA2,			   :APIKEYEXTRA3,			   :APIKEYEXTRA4,               :APIKEYEXTRA5,			   :DisableDbAuth,			   :AllowDbFallbackWithLdap,			   :EmailLdapDbFallback,			   :AllowPersistentLogin,			   :CaptchaOnLogin,			   :CaptchaOnRegistration,			   :SiteIsClosed,			   :SiteIsClosedMessage,			   :PrivacyPolicy,			   :TimeZoneId,			   :GoogleAnalyticsProfileId,			   :CompanyName,			   :CompanyStreetAddress,			   :CompanyStreetAddress2,			   :CompanyRegion,			   :CompanyLocality,			   :CompanyCountry,			   :CompanyPostalCode,			   :CompanyPublicEmail,			   :CompanyPhone,			   :CompanyFax,			   :FacebookAppId,			   :FacebookAppSecret,			   :GoogleClientId,			   :GoogleClientSecret,			   :TwitterConsumerKey,			   :TwitterConsumerSecret,			   :MicrosoftClientId,			   :MicrosoftClientSecret,			   :PreferredHostName,			   :SiteFolderName,			   :AddThisDotComUsername,			   :LoginInfoTop,			   :LoginInfoBottom,			   :RegistrationAgreement,			   :RegistrationPreamble,			   :SMTPServer,			   :SMTPPort,			   :SMTPUser,			   :SMTPPassword,			   :SMTPPreferredEncoding,			   :SMTPRequiresAuth,			   :SMTPUseSsl,			   :RequireApprovalBeforeLogin,			   :IsDataProtected,			   :CreatedUtc);END^SET TERM ; ^