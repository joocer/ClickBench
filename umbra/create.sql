create table hits (
    watchid               bigint       not null,
    javaenable            smallint     not null,
    title                 text         not null,
    goodevent             smallint     not null,
    eventtime             timestamp    not null,
    eventdate             date         not null,
    counterid             integer      not null,
    clientip              integer      not null,
    regionid              integer      not null,
    userid                bigint       not null,
    counterclass          smallint     not null,
    os                    smallint     not null,
    useragent             smallint     not null,
    url                   text         not null,
    referer               text         not null,
    isrefresh             smallint     not null,
    referercategoryid     smallint     not null,
    refererregionid       integer      not null,
    urlcategoryid         smallint     not null,
    urlregionid           integer      not null,
    resolutionwidth       smallint     not null,
    resolutionheight      smallint     not null,
    resolutiondepth       smallint     not null,
    flashmajor            smallint     not null,
    flashminor            smallint     not null,
    flashminor2           text         not null,
    netmajor              smallint     not null,
    netminor              smallint     not null,
    useragentmajor        smallint     not null,
    useragentminor        varchar(255) not null,
    cookieenable          smallint     not null,
    javascriptenable      smallint     not null,
    ismobile              smallint     not null,
    mobilephone           smallint     not null,
    mobilephonemodel      text         not null,
    params                text         not null,
    ipnetworkid           integer      not null,
    traficsourceid        smallint     not null,
    searchengineid        smallint     not null,
    searchphrase          text         not null,
    advengineid           smallint     not null,
    isartifical           smallint     not null,
    windowclientwidth     smallint     not null,
    windowclientheight    smallint     not null,
    clienttimezone        smallint     not null,
    clienteventtime       timestamp    not null,
    silverlightversion1   smallint     not null,
    silverlightversion2   smallint     not null,
    silverlightversion3   integer      not null,
    silverlightversion4   smallint     not null,
    pagecharset           text         not null,
    codeversion           integer      not null,
    islink                smallint     not null,
    isdownload            smallint     not null,
    isnotbounce           smallint     not null,
    funiqid               bigint       not null,
    originalurl           text         not null,
    hid                   integer      not null,
    isoldcounter          smallint     not null,
    isevent               smallint     not null,
    isparameter           smallint     not null,
    dontcounthits         smallint     not null,
    withhash              smallint     not null,
    hitcolor              char         not null,
    localeventtime        timestamp    not null,
    age                   smallint     not null,
    sex                   smallint     not null,
    income                smallint     not null,
    interests             smallint     not null,
    robotness             smallint     not null,
    remoteip              integer      not null,
    windowname            integer      not null,
    openername            integer      not null,
    historylength         smallint     not null,
    browserlanguage       text         not null,
    browsercountry        text         not null,
    socialnetwork         text         not null,
    socialaction          text         not null,
    httperror             smallint     not null,
    sendtiming            integer      not null,
    dnstiming             integer      not null,
    connecttiming         integer      not null,
    responsestarttiming   integer      not null,
    responseendtiming     integer      not null,
    fetchtiming           integer      not null,
    socialsourcenetworkid smallint     not null,
    socialsourcepage      text         not null,
    paramprice            bigint       not null,
    paramorderid          text         not null,
    paramcurrency         text         not null,
    paramcurrencyid       smallint     not null,
    openstatservicename   text         not null,
    openstatcampaignid    text         not null,
    openstatadid          text         not null,
    openstatsourceid      text         not null,
    utmsource             text         not null,
    utmmedium             text         not null,
    utmcampaign           text         not null,
    utmcontent            text         not null,
    utmterm               text         not null,
    fromtag               text         not null,
    hasgclid              smallint     not null,
    refererhash           bigint       not null,
    urlhash               bigint       not null,
    clid                  integer      not null,
    primary key (counterid, eventdate, userid, eventtime, watchid)
);
copy hits from '/data/hits.tsv' with (format text);
