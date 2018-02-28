.class public Lcom/tigo/mfsapp/service/ParametersResponse;
.super Lcom/tigo/mfsapp/service/JsonResponse;
.source "ParametersResponse.java"


# static fields
.field private static final DEFAULT_ZOOM_IN_MAPS:I = 0xa


# instance fields
.field private final PACKAGE_NAME_SV:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/tigo/mfsapp/service/JsonResponse;-><init>()V

    .line 32
    const-string v0, "sv.tigo.mfsapp"

    iput-object v0, p0, Lcom/tigo/mfsapp/service/ParametersResponse;->PACKAGE_NAME_SV:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public processResponse(Lorg/json/JSONObject;Z)V
    .locals 56
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "isSucess"    # Z

    .prologue
    .line 36
    if-eqz p2, :cond_9

    .line 37
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v37

    .line 39
    .local v37, "parameters":Lcom/tigo/mfsapp/model/Parameters;
    :try_start_0
    const-string v53, "MSISDNInLoginRequired"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v53

    move-object/from16 v0, v37

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/model/Parameters;->setMsisdnInLoginRequired(Z)V

    .line 40
    const-string v53, "LoginRequired"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v53

    move-object/from16 v0, v37

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/model/Parameters;->setLoginRequired(Z)V

    .line 41
    const-string v53, "RegisterDeviceEnabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v53

    move-object/from16 v0, v37

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/model/Parameters;->setRegisterDeviceEnabled(Z)V

    .line 43
    const-string v53, "AskPinOnTransactions"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_0

    .line 44
    const-string v53, "AskPinOnTransactions"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v53

    move-object/from16 v0, v37

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/model/Parameters;->setAskPinOnTransactions(Z)V

    .line 47
    :cond_0
    const-string v53, "HeaderEnrichmentEnabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_1

    .line 48
    const-string v53, "HeaderEnrichmentEnabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v53

    move-object/from16 v0, v37

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/model/Parameters;->setHeaderEnrichmentEnabled(Z)V

    .line 50
    :cond_1
    const-string v53, "HeaderEnrichmentName"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_3

    .line 51
    const-string v53, "HeaderEnrichmentName"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v37

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/model/Parameters;->setHeaderEnrichementName(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {v37 .. v37}, Lcom/tigo/mfsapp/model/Parameters;->getHeaderEnrichementName()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/String;->length()I

    move-result v53

    if-lez v53, :cond_3

    .line 55
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v53

    const v54, 0x7f0602d6

    invoke-virtual/range {v53 .. v54}, Lcom/tigo/mfsapp/app/MfsApp;->getString(I)Ljava/lang/String;

    move-result-object v39

    .line 56
    .local v39, "prefix":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v53

    const v54, 0x7f0602d6

    invoke-virtual/range {v53 .. v54}, Lcom/tigo/mfsapp/app/MfsApp;->getString(I)Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/String;->length()I

    move-result v35

    .line 58
    .local v35, "length_prefix":I
    invoke-virtual/range {p0 .. p0}, Lcom/tigo/mfsapp/service/ParametersResponse;->getHttpResponse()Lorg/apache/http/HttpResponse;

    move-result-object v53

    invoke-virtual/range {v37 .. v37}, Lcom/tigo/mfsapp/model/Parameters;->getHeaderEnrichementName()Ljava/lang/String;

    move-result-object v54

    invoke-interface/range {v53 .. v54}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v24

    .line 59
    .local v24, "headers":[Lorg/apache/http/Header;
    const/4 v4, 0x0

    .line 60
    .local v4, "MSISDN":Ljava/lang/String;
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v53, v0

    if-lez v53, :cond_6

    .line 63
    const/16 v53, 0x0

    aget-object v53, v24, v53

    invoke-interface/range {v53 .. v53}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 65
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v53

    if-lez v53, :cond_2

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_2

    .line 66
    move/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 80
    :cond_2
    :goto_0
    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/tigo/mfsapp/model/Parameters;->setHeaderEnrichementMSISDN(Ljava/lang/String;)V

    .line 84
    .end local v4    # "MSISDN":Ljava/lang/String;
    .end local v24    # "headers":[Lorg/apache/http/Header;
    .end local v35    # "length_prefix":I
    .end local v39    # "prefix":Ljava/lang/String;
    :cond_3
    const-string v53, "HeaderEnrichmentURL"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_4

    .line 85
    sget-object v53, Lcom/tigo/mfsapp/BuildConfig;->APPLY_HEADER_ENRICHMENT:Ljava/lang/Boolean;

    .line 86
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v53

    if-eqz v53, :cond_7

    const-string v53, "http://accessgw.tigo.co.tz:8080/mfsregister/api/"

    .line 85
    :goto_1
    move-object/from16 v0, v37

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/model/Parameters;->setHeaderEnrichmentURL(Ljava/lang/String;)V

    .line 89
    :cond_4
    const-string v53, "HeaderEnrichmentTestEnabled"

    const/16 v54, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v53

    move-object/from16 v0, v37

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/model/Parameters;->setHeaderEnrichmentTestEnabled(Z)V

    .line 90
    const-string v47, "0.0.0"

    .line 91
    .local v47, "value":Ljava/lang/String;
    const-string v53, "HeaderEnrichmentTestVersion"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_5

    .line 93
    const-string v53, "HeaderEnrichmentTestVersion"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v53

    const-string v54, "Android"

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 95
    :cond_5
    move-object/from16 v0, v37

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/model/Parameters;->setHeaderEnrichmentTestVersion(Ljava/lang/String;)V

    .line 97
    const-string v53, "NationalFormat"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v37

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/model/Parameters;->setNationalFormat(Ljava/lang/String;)V

    .line 98
    const-string v53, "InternationalFormat"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v37

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/model/Parameters;->setInternationalFormat(Ljava/lang/String;)V

    .line 99
    const-string v53, "NFDigits"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v53

    move-object/from16 v0, v37

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/model/Parameters;->setNfDigits(I)V

    .line 100
    const-string v53, "INFDigits"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v53

    move-object/from16 v0, v37

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/model/Parameters;->setInfDigits(I)V

    .line 103
    const-string v53, "SupportedLanguages"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v43

    .line 104
    .local v43, "supportedLanguages":Lorg/json/JSONArray;
    invoke-virtual/range {v43 .. v43}, Lorg/json/JSONArray;->length()I

    move-result v53

    move/from16 v0, v53

    new-array v8, v0, [Ljava/lang/String;

    .line 105
    .local v8, "arrSupportedLanguages":[Ljava/lang/String;
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_2
    invoke-virtual/range {v43 .. v43}, Lorg/json/JSONArray;->length()I

    move-result v53

    move/from16 v0, v25

    move/from16 v1, v53

    if-ge v0, v1, :cond_8

    .line 106
    move-object/from16 v0, v43

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v53

    aput-object v53, v8, v25

    .line 105
    add-int/lit8 v25, v25, 0x1

    goto :goto_2

    .line 69
    .end local v8    # "arrSupportedLanguages":[Ljava/lang/String;
    .end local v25    # "i":I
    .end local v43    # "supportedLanguages":Lorg/json/JSONArray;
    .end local v47    # "value":Ljava/lang/String;
    .restart local v4    # "MSISDN":Ljava/lang/String;
    .restart local v24    # "headers":[Lorg/apache/http/Header;
    .restart local v35    # "length_prefix":I
    .restart local v39    # "prefix":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/tigo/mfsapp/service/ParametersResponse;->getHttpResponse()Lorg/apache/http/HttpResponse;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "\'"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v37 .. v37}, Lcom/tigo/mfsapp/model/Parameters;->getHeaderEnrichementName()Ljava/lang/String;

    move-result-object v55

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string v55, "\'"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-interface/range {v53 .. v54}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v24

    .line 70
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v53, v0

    if-lez v53, :cond_2

    .line 73
    const/16 v53, 0x0

    aget-object v53, v24, v53

    invoke-interface/range {v53 .. v53}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 75
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v53

    if-lez v53, :cond_2

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_2

    .line 76
    move/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 86
    .end local v4    # "MSISDN":Ljava/lang/String;
    .end local v24    # "headers":[Lorg/apache/http/Header;
    .end local v35    # "length_prefix":I
    .end local v39    # "prefix":Ljava/lang/String;
    :cond_7
    const-string v53, "HeaderEnrichmentURL"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    goto/16 :goto_1

    .line 108
    .restart local v8    # "arrSupportedLanguages":[Ljava/lang/String;
    .restart local v25    # "i":I
    .restart local v43    # "supportedLanguages":Lorg/json/JSONArray;
    .restart local v47    # "value":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Lcom/tigo/mfsapp/model/Parameters;->setSupportedLanguages([Ljava/lang/String;)V

    .line 110
    const-string v53, "CurrencySymbol"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v37

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/model/Parameters;->setCurrencySymbol(Ljava/lang/String;)V

    .line 111
    const-string v53, "PINCodeDigits"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v53

    move-object/from16 v0, v37

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/model/Parameters;->setPinCodeDigits(I)V

    .line 113
    const-string v53, "Wallets"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v52

    .line 114
    .local v52, "wallets":Lorg/json/JSONArray;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v14, "arrWallets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/Wallet;>;"
    const/16 v25, 0x0

    :goto_3
    invoke-virtual/range {v52 .. v52}, Lorg/json/JSONArray;->length()I

    move-result v53

    move/from16 v0, v25

    move/from16 v1, v53

    if-ge v0, v1, :cond_b

    .line 117
    move-object/from16 v0, v52

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v33

    .line 119
    .local v33, "jsonWallet":Lorg/json/JSONObject;
    new-instance v36, Ljava/util/HashMap;

    invoke-direct/range {v36 .. v36}, Ljava/util/HashMap;-><init>()V

    .line 121
    .local v36, "mapDisplayName":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v53, "DisplayNames"

    move-object/from16 v0, v33

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_a

    .line 122
    const-string v53, "DisplayNames"

    move-object/from16 v0, v33

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    .line 124
    .local v21, "displayNames":Lorg/json/JSONObject;
    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v28

    .line 125
    .local v28, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_4
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_a

    .line 126
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    .line 127
    .local v34, "key":Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    move-object/from16 v2, v53

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 352
    .end local v8    # "arrSupportedLanguages":[Ljava/lang/String;
    .end local v14    # "arrWallets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/Wallet;>;"
    .end local v21    # "displayNames":Lorg/json/JSONObject;
    .end local v25    # "i":I
    .end local v28    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v33    # "jsonWallet":Lorg/json/JSONObject;
    .end local v34    # "key":Ljava/lang/String;
    .end local v36    # "mapDisplayName":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v43    # "supportedLanguages":Lorg/json/JSONArray;
    .end local v47    # "value":Ljava/lang/String;
    .end local v52    # "wallets":Lorg/json/JSONArray;
    :catch_0
    move-exception v22

    .line 353
    .local v22, "e":Lorg/json/JSONException;
    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONException;->printStackTrace()V

    .line 358
    .end local v22    # "e":Lorg/json/JSONException;
    .end local v37    # "parameters":Lcom/tigo/mfsapp/model/Parameters;
    :cond_9
    :goto_5
    return-void

    .line 131
    .restart local v8    # "arrSupportedLanguages":[Ljava/lang/String;
    .restart local v14    # "arrWallets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/Wallet;>;"
    .restart local v25    # "i":I
    .restart local v33    # "jsonWallet":Lorg/json/JSONObject;
    .restart local v36    # "mapDisplayName":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v37    # "parameters":Lcom/tigo/mfsapp/model/Parameters;
    .restart local v43    # "supportedLanguages":Lorg/json/JSONArray;
    .restart local v47    # "value":Ljava/lang/String;
    .restart local v52    # "wallets":Lorg/json/JSONArray;
    :cond_a
    :try_start_1
    new-instance v51, Lcom/tigo/mfsapp/model/Wallet;

    const-string v53, "ID"

    move-object/from16 v0, v33

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    const-string v54, "DisplayName"

    const-string v55, ""

    move-object/from16 v0, v33

    move-object/from16 v1, v54

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v51

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    move-object/from16 v3, v36

    invoke-direct {v0, v1, v2, v3}, Lcom/tigo/mfsapp/model/Wallet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 135
    .local v51, "wallet":Lcom/tigo/mfsapp/model/Wallet;
    move-object/from16 v0, v51

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    add-int/lit8 v25, v25, 0x1

    goto :goto_3

    .line 138
    .end local v33    # "jsonWallet":Lorg/json/JSONObject;
    .end local v36    # "mapDisplayName":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v51    # "wallet":Lcom/tigo/mfsapp/model/Wallet;
    :cond_b
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v53

    const/16 v54, 0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_c

    .line 139
    const/16 v53, 0x0

    move/from16 v0, v53

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Lcom/tigo/mfsapp/model/Wallet;

    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Lcom/tigo/mfsapp/app/MfsApp;->getApplicationName()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Lcom/tigo/mfsapp/model/Wallet;->setName(Ljava/lang/String;)V

    .line 140
    const/16 v53, 0x0

    move/from16 v0, v53

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Lcom/tigo/mfsapp/model/Wallet;

    invoke-static/range {v53 .. v53}, Lcom/tigo/mfsapp/common/AppPreferences;->setSelectedWallet(Lcom/tigo/mfsapp/model/Wallet;)V

    .line 143
    :cond_c
    move-object/from16 v0, v37

    invoke-virtual {v0, v14}, Lcom/tigo/mfsapp/model/Parameters;->setWallets(Ljava/util/ArrayList;)V

    .line 145
    const-string v53, "ShowBalanceHeader"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v53

    move-object/from16 v0, v37

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/model/Parameters;->setShowBalanceHeader(Z)V

    .line 146
    const-string v53, "ShowResultingBalance"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v53

    move-object/from16 v0, v37

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/model/Parameters;->setShowResultingBalance(Z)V

    .line 147
    const-string v53, "ShowTransactionTotalAmount"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v53

    move-object/from16 v0, v37

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/model/Parameters;->setShowTransactionTotalAmount(Z)V

    .line 150
    const-string v53, "VisibleMenuItems"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_e

    .line 151
    const-string v53, "VisibleMenuItems"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v48

    .line 152
    .local v48, "visibleMenuItems":Lorg/json/JSONArray;
    new-instance v11, Ljava/util/ArrayList;

    invoke-virtual/range {v48 .. v48}, Lorg/json/JSONArray;->length()I

    move-result v53

    move/from16 v0, v53

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 153
    .local v11, "arrVisibleMenuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v25, 0x0

    :goto_6
    invoke-virtual/range {v48 .. v48}, Lorg/json/JSONArray;->length()I

    move-result v53

    move/from16 v0, v25

    move/from16 v1, v53

    if-ge v0, v1, :cond_d

    .line 154
    move-object/from16 v0, v48

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    add-int/lit8 v25, v25, 0x1

    goto :goto_6

    .line 156
    :cond_d
    move-object/from16 v0, v37

    invoke-virtual {v0, v11}, Lcom/tigo/mfsapp/model/Parameters;->setVisibleMenuItems(Ljava/util/ArrayList;)V

    .line 160
    .end local v11    # "arrVisibleMenuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v48    # "visibleMenuItems":Lorg/json/JSONArray;
    :cond_e
    const-string v53, "VisibleMenuItemsForAgents"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_10

    .line 161
    const-string v53, "VisibleMenuItemsForAgents"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v49

    .line 162
    .local v49, "visibleMenuItemsForAgents":Lorg/json/JSONArray;
    new-instance v12, Ljava/util/ArrayList;

    invoke-virtual/range {v49 .. v49}, Lorg/json/JSONArray;->length()I

    move-result v53

    move/from16 v0, v53

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 163
    .local v12, "arrVisibleMenuItemsForAgents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v25, 0x0

    :goto_7
    invoke-virtual/range {v49 .. v49}, Lorg/json/JSONArray;->length()I

    move-result v53

    move/from16 v0, v25

    move/from16 v1, v53

    if-ge v0, v1, :cond_f

    .line 164
    move-object/from16 v0, v49

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    add-int/lit8 v25, v25, 0x1

    goto :goto_7

    .line 166
    :cond_f
    move-object/from16 v0, v37

    invoke-virtual {v0, v12}, Lcom/tigo/mfsapp/model/Parameters;->setVisibleMenuItemsForAgents(Ljava/util/ArrayList;)V

    .line 170
    .end local v12    # "arrVisibleMenuItemsForAgents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v49    # "visibleMenuItemsForAgents":Lorg/json/JSONArray;
    :cond_10
    const-string v53, "VisibleMenuItemsForMerchants"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_12

    .line 171
    const-string v53, "VisibleMenuItemsForMerchants"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v50

    .line 172
    .local v50, "visibleMenuItemsForMerchants":Lorg/json/JSONArray;
    new-instance v13, Ljava/util/ArrayList;

    invoke-virtual/range {v50 .. v50}, Lorg/json/JSONArray;->length()I

    move-result v53

    move/from16 v0, v53

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 173
    .local v13, "arrVisibleMenuItemsForMerchants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v25, 0x0

    :goto_8
    invoke-virtual/range {v50 .. v50}, Lorg/json/JSONArray;->length()I

    move-result v53

    move/from16 v0, v25

    move/from16 v1, v53

    if-ge v0, v1, :cond_11

    .line 174
    move-object/from16 v0, v50

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    add-int/lit8 v25, v25, 0x1

    goto :goto_8

    .line 176
    :cond_11
    move-object/from16 v0, v37

    invoke-virtual {v0, v13}, Lcom/tigo/mfsapp/model/Parameters;->setVisibleMenuItemsForMerchants(Ljava/util/ArrayList;)V

    .line 180
    .end local v13    # "arrVisibleMenuItemsForMerchants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v50    # "visibleMenuItemsForMerchants":Lorg/json/JSONArray;
    :cond_12
    const-string v53, "BaseUrls"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    .line 181
    .local v16, "baseUrls":Lorg/json/JSONObject;
    const-string v53, "PaymentLogos"

    move-object/from16 v0, v16

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 182
    .local v38, "paymentLogo":Ljava/lang/String;
    const-string v53, "BankLogos"

    move-object/from16 v0, v16

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 183
    .local v15, "bankLogos":Ljava/lang/String;
    const-string v53, "ReferenceHelpImages"

    move-object/from16 v0, v16

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 185
    .local v40, "referenceHelpImages":Ljava/lang/String;
    invoke-virtual/range {v37 .. v38}, Lcom/tigo/mfsapp/model/Parameters;->setBasePaymentLogosUrl(Ljava/lang/String;)V

    .line 186
    move-object/from16 v0, v37

    invoke-virtual {v0, v15}, Lcom/tigo/mfsapp/model/Parameters;->setBaseBankLogosUrl(Ljava/lang/String;)V

    .line 187
    move-object/from16 v0, v37

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/model/Parameters;->setBaseReferenceHelpImagesUrl(Ljava/lang/String;)V

    .line 189
    const-string v53, "CRNumber"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v37

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/model/Parameters;->setPhoneCustomerRepresentative(Ljava/lang/String;)V

    .line 191
    const-string v53, "CRAsterisk"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_13

    .line 192
    const-string v53, "CRAsterisk"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v37

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/model/Parameters;->setServiceNumberWithAsterisk(Ljava/lang/String;)V

    .line 195
    :cond_13
    const-string v53, "ShowMiniStatement"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v53

    move-object/from16 v0, v37

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/model/Parameters;->setShowMinistatement(Z)V

    .line 197
    const-string v53, "ShowCommissionStatement"

    const/16 v54, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v53

    move-object/from16 v0, v37

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/model/Parameters;->setShowCommissionStatement(Z)V

    .line 198
    const-string v53, "ShowPendingVouchers"

    const/16 v54, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v53

    move-object/from16 v0, v37

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/model/Parameters;->setShowPendingVouchers(Z)V

    .line 199
    const-string v53, "ShowFiltersInMiniStatement"

    const/16 v54, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v53

    move-object/from16 v0, v37

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/model/Parameters;->setShowFiltersInMiniStatement(Z)V

    .line 201
    const-string v53, "ShowSecurityQuestion"

    const/16 v54, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v53

    move-object/from16 v0, v37

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/model/Parameters;->setShowSecurityQuestion(Z)V

    .line 202
    const-string v53, "ShowBarCodeScannerInBillPay"

    const/16 v54, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v53

    move-object/from16 v0, v37

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/model/Parameters;->setShowScanBarCodeInBillPay(Z)V

    .line 206
    const-string v53, "CountryList"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_16

    .line 207
    const-string v53, "CountryList"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v20

    .line 208
    .local v20, "countrys":Lorg/json/JSONArray;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v5, "arrCountrys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/Country;>;"
    const/16 v25, 0x0

    :goto_9
    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->length()I

    move-result v53

    move/from16 v0, v25

    move/from16 v1, v53

    if-ge v0, v1, :cond_15

    .line 211
    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v29

    .line 213
    .local v29, "jsonCountry":Lorg/json/JSONObject;
    new-instance v36, Ljava/util/HashMap;

    invoke-direct/range {v36 .. v36}, Ljava/util/HashMap;-><init>()V

    .line 215
    .restart local v36    # "mapDisplayName":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v53, "DisplayNames"

    move-object/from16 v0, v29

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_14

    .line 216
    const-string v53, "DisplayNames"

    move-object/from16 v0, v29

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    .line 217
    .restart local v21    # "displayNames":Lorg/json/JSONObject;
    const-string v53, "es_SV"

    const-string v54, "es_SV"

    move-object/from16 v0, v21

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v36

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string v53, "en"

    const-string v54, "en"

    move-object/from16 v0, v21

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v36

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .end local v21    # "displayNames":Lorg/json/JSONObject;
    :cond_14
    new-instance v19, Lcom/tigo/mfsapp/model/Country;

    const-string v53, "ID"

    move-object/from16 v0, v29

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v53

    move-object/from16 v0, v19

    move/from16 v1, v53

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/tigo/mfsapp/model/Country;-><init>(ILjava/util/Map;)V

    .line 222
    .local v19, "country":Lcom/tigo/mfsapp/model/Country;
    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    add-int/lit8 v25, v25, 0x1

    goto :goto_9

    .line 225
    .end local v19    # "country":Lcom/tigo/mfsapp/model/Country;
    .end local v29    # "jsonCountry":Lorg/json/JSONObject;
    .end local v36    # "mapDisplayName":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_15
    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Lcom/tigo/mfsapp/model/Parameters;->setCountryList(Ljava/util/ArrayList;)V

    .line 230
    .end local v5    # "arrCountrys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/Country;>;"
    .end local v20    # "countrys":Lorg/json/JSONArray;
    :cond_16
    const-string v53, "IdTypes"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_19

    .line 231
    const-string v53, "IdTypes"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v27

    .line 232
    .local v27, "idTypes":Lorg/json/JSONArray;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v6, "arrIdTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/IdType;>;"
    const/16 v25, 0x0

    :goto_a
    invoke-virtual/range {v27 .. v27}, Lorg/json/JSONArray;->length()I

    move-result v53

    move/from16 v0, v25

    move/from16 v1, v53

    if-ge v0, v1, :cond_18

    .line 235
    move-object/from16 v0, v27

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v30

    .line 237
    .local v30, "jsonIdTypes":Lorg/json/JSONObject;
    new-instance v36, Ljava/util/HashMap;

    invoke-direct/range {v36 .. v36}, Ljava/util/HashMap;-><init>()V

    .line 239
    .restart local v36    # "mapDisplayName":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v53, "DisplayNames"

    move-object/from16 v0, v30

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_17

    .line 240
    const-string v53, "DisplayNames"

    move-object/from16 v0, v30

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    .line 241
    .restart local v21    # "displayNames":Lorg/json/JSONObject;
    const-string v53, "es_SV"

    const-string v54, "es_SV"

    move-object/from16 v0, v21

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v36

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string v53, "en"

    const-string v54, "en"

    move-object/from16 v0, v21

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v36

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .end local v21    # "displayNames":Lorg/json/JSONObject;
    :cond_17
    new-instance v26, Lcom/tigo/mfsapp/model/IdType;

    const-string v53, "ID"

    move-object/from16 v0, v30

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v53

    move-object/from16 v0, v26

    move/from16 v1, v53

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/tigo/mfsapp/model/IdType;-><init>(ILjava/util/Map;)V

    .line 246
    .local v26, "idType":Lcom/tigo/mfsapp/model/IdType;
    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    add-int/lit8 v25, v25, 0x1

    goto :goto_a

    .line 249
    .end local v26    # "idType":Lcom/tigo/mfsapp/model/IdType;
    .end local v30    # "jsonIdTypes":Lorg/json/JSONObject;
    .end local v36    # "mapDisplayName":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_18
    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Lcom/tigo/mfsapp/model/Parameters;->setIdTypes(Ljava/util/ArrayList;)V

    .line 254
    .end local v6    # "arrIdTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/IdType;>;"
    .end local v27    # "idTypes":Lorg/json/JSONArray;
    :cond_19
    const-string v53, "TransactionsTypes"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_1c

    .line 255
    const-string v53, "TransactionsTypes"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v46

    .line 256
    .local v46, "transactionsTypes":Lorg/json/JSONArray;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v10, "arrTransactionsTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/TransactionType;>;"
    const/16 v25, 0x0

    :goto_b
    invoke-virtual/range {v46 .. v46}, Lorg/json/JSONArray;->length()I

    move-result v53

    move/from16 v0, v25

    move/from16 v1, v53

    if-ge v0, v1, :cond_1b

    .line 259
    move-object/from16 v0, v46

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v32

    .line 261
    .local v32, "jsonTransactionType":Lorg/json/JSONObject;
    new-instance v36, Ljava/util/HashMap;

    invoke-direct/range {v36 .. v36}, Ljava/util/HashMap;-><init>()V

    .line 263
    .restart local v36    # "mapDisplayName":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v53, "DisplayNames"

    move-object/from16 v0, v32

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_1a

    .line 264
    const-string v53, "DisplayNames"

    move-object/from16 v0, v32

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    .line 265
    .restart local v21    # "displayNames":Lorg/json/JSONObject;
    const-string v53, "es_SV"

    const-string v54, "es_SV"

    move-object/from16 v0, v21

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v36

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string v53, "en"

    const-string v54, "en"

    move-object/from16 v0, v21

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v36

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .end local v21    # "displayNames":Lorg/json/JSONObject;
    :cond_1a
    new-instance v45, Lcom/tigo/mfsapp/model/TransactionType;

    const-string v53, "ID"

    move-object/from16 v0, v32

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v45

    move-object/from16 v1, v53

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/tigo/mfsapp/model/TransactionType;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 270
    .local v45, "transactionType":Lcom/tigo/mfsapp/model/TransactionType;
    move-object/from16 v0, v45

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    add-int/lit8 v25, v25, 0x1

    goto :goto_b

    .line 273
    .end local v32    # "jsonTransactionType":Lorg/json/JSONObject;
    .end local v36    # "mapDisplayName":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v45    # "transactionType":Lcom/tigo/mfsapp/model/TransactionType;
    :cond_1b
    move-object/from16 v0, v37

    invoke-virtual {v0, v10}, Lcom/tigo/mfsapp/model/Parameters;->setTransactionsTypes(Ljava/util/ArrayList;)V

    .line 276
    .end local v10    # "arrTransactionsTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/TransactionType;>;"
    .end local v46    # "transactionsTypes":Lorg/json/JSONArray;
    :cond_1c
    const-string v53, "DateFormat"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v37

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/model/Parameters;->setDateFormat(Ljava/lang/String;)V

    .line 277
    const-string v53, "TimeFormat"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v37

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/model/Parameters;->setTimeFormat(Ljava/lang/String;)V

    .line 278
    const-string v53, "DecimalDigits"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v53

    move-object/from16 v0, v37

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/model/Parameters;->setDecimalDigits(I)V

    .line 279
    const-string v53, "DotAsThousandsSeparator"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v53

    move-object/from16 v0, v37

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/model/Parameters;->setDotAsThousandsSeparator(Z)V

    .line 281
    const-string v53, "AgentsLookupEnabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v53

    move-object/from16 v0, v37

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/model/Parameters;->setAgentsLookupEnabled(Z)V

    .line 282
    const-string v53, "SubscribersLookupEnabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v53

    move-object/from16 v0, v37

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/model/Parameters;->setSubscribersLookupEnabled(Z)V

    .line 283
    const-string v53, "TotalBalanceInHeaderEnabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v53

    move-object/from16 v0, v37

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/model/Parameters;->setTotalBalanceInHeaderEnabled(Z)V

    .line 285
    const-string v53, "WhatsNew"

    const-string v54, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v37

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/model/Parameters;->setWhatsNewURL(Ljava/lang/String;)V

    .line 287
    const-string v53, "RegisterSms"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_1e

    .line 288
    const-string v53, "RegisterSms"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v41

    .line 289
    .local v41, "registerSMSs":Lorg/json/JSONArray;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 290
    .local v7, "arrRegisterSMSs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v25, 0x0

    :goto_c
    invoke-virtual/range {v41 .. v41}, Lorg/json/JSONArray;->length()I

    move-result v53

    move/from16 v0, v25

    move/from16 v1, v53

    if-ge v0, v1, :cond_1d

    .line 291
    move-object/from16 v0, v41

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v31

    .line 293
    .local v31, "jsonRegister":Lorg/json/JSONObject;
    :try_start_2
    const-string v53, "Language"

    move-object/from16 v0, v31

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    const-string v54, "Message"

    move-object/from16 v0, v31

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 290
    :goto_d
    add-int/lit8 v25, v25, 0x1

    goto :goto_c

    .line 294
    :catch_1
    move-exception v22

    .line 295
    .local v22, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d

    .line 298
    .end local v22    # "e":Ljava/lang/Exception;
    .end local v31    # "jsonRegister":Lorg/json/JSONObject;
    :cond_1d
    move-object/from16 v0, v37

    invoke-virtual {v0, v7}, Lcom/tigo/mfsapp/model/Parameters;->setRegisterSmss(Ljava/util/HashMap;)V

    .line 301
    .end local v7    # "arrRegisterSMSs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v41    # "registerSMSs":Lorg/json/JSONArray;
    :cond_1e
    const-string v53, "AppSupportedVersion"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_1f

    .line 302
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v53

    const-string v54, "AppSupportedVersion"

    move-object/from16 v0, p1

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v54

    const-string v55, "Android"

    invoke-virtual/range {v54 .. v55}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Lcom/tigo/mfsapp/model/Parameters;->setMinAppVersion(Ljava/lang/String;)V

    .line 305
    :cond_1f
    const-string v53, "AskEmailOnRegistering"

    const/16 v54, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v53

    move-object/from16 v0, v37

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/model/Parameters;->setShowEmailFieldInRegistration(Z)V

    .line 307
    const-string v53, "ShouldAskDescriptionInTxs"

    const/16 v54, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v53

    move-object/from16 v0, v37

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/model/Parameters;->setShouldAskDescriptionInTxs(Z)V

    .line 311
    const-string v53, "TopUpAmountValues"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_21

    .line 312
    const-string v53, "TopUpAmountValues"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v44

    .line 314
    .local v44, "topUpAmountValues":Lorg/json/JSONArray;
    if-eqz v44, :cond_21

    .line 315
    new-instance v9, Ljava/util/ArrayList;

    invoke-virtual/range {v44 .. v44}, Lorg/json/JSONArray;->length()I

    move-result v53

    move/from16 v0, v53

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 316
    .local v9, "arrTopUpAmountValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v25, 0x0

    :goto_e
    invoke-virtual/range {v44 .. v44}, Lorg/json/JSONArray;->length()I

    move-result v53

    move/from16 v0, v25

    move/from16 v1, v53

    if-ge v0, v1, :cond_20

    .line 317
    move-object/from16 v0, v44

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v54

    move-wide/from16 v0, v54

    double-to-float v0, v0

    move/from16 v53, v0

    invoke-static/range {v53 .. v53}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    add-int/lit8 v25, v25, 0x1

    goto :goto_e

    .line 319
    :cond_20
    move-object/from16 v0, v37

    invoke-virtual {v0, v9}, Lcom/tigo/mfsapp/model/Parameters;->setTopUpAmountValues(Ljava/util/ArrayList;)V

    .line 323
    .end local v9    # "arrTopUpAmountValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v44    # "topUpAmountValues":Lorg/json/JSONArray;
    :cond_21
    const-string v53, "Carousels"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_22

    .line 324
    const-string v53, "Carousels"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    .line 326
    .local v18, "carruselsJson":Lorg/json/JSONObject;
    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "Carrosouel: "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-static/range {v53 .. v53}, Lcom/tigo/mfsapp/utils/Logger;->error(Ljava/lang/String;)V

    .line 328
    new-instance v23, Lcom/google/gson/Gson;

    invoke-direct/range {v23 .. v23}, Lcom/google/gson/Gson;-><init>()V

    .line 329
    .local v23, "gson":Lcom/google/gson/Gson;
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v53

    const-class v54, Lcom/tigo/mfsapp/model/Carrusels;

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/tigo/mfsapp/model/Carrusels;

    .line 330
    .local v17, "carrusels":Lcom/tigo/mfsapp/model/Carrusels;
    move-object/from16 v0, v37

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/model/Parameters;->setCarrusels(Lcom/tigo/mfsapp/model/Carrusels;)V

    .line 333
    .end local v17    # "carrusels":Lcom/tigo/mfsapp/model/Carrusels;
    .end local v18    # "carruselsJson":Lorg/json/JSONObject;
    .end local v23    # "gson":Lcom/google/gson/Gson;
    :cond_22
    const-string v53, "SelfRegistration"

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_23

    .line 334
    new-instance v53, Lcom/google/gson/Gson;

    invoke-direct/range {v53 .. v53}, Lcom/google/gson/Gson;-><init>()V

    const-string v54, "SelfRegistration"

    move-object/from16 v0, p1

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    const-class v55, Lcom/tigo/mfsapp/model/SelfRegistrationParams;

    invoke-virtual/range {v53 .. v55}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/tigo/mfsapp/model/SelfRegistrationParams;

    .line 335
    .local v42, "selfRegistration":Lcom/tigo/mfsapp/model/SelfRegistrationParams;
    move-object/from16 v0, v37

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/model/Parameters;->setSelfRegistration(Lcom/tigo/mfsapp/model/SelfRegistrationParams;)V

    .line 338
    .end local v42    # "selfRegistration":Lcom/tigo/mfsapp/model/SelfRegistrationParams;
    :cond_23
    const-string v53, "HideFiltersInMaps"

    const/16 v54, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v53

    move-object/from16 v0, v37

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/model/Parameters;->setHideFiltersInMaps(Z)V

    .line 340
    const-string v53, "ZoomInMaps"

    const/16 v54, 0xa

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v53

    move-object/from16 v0, v37

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/model/Parameters;->setZoomInMaps(I)V

    .line 344
    const-string v53, "ShowDeregisterAll"

    const/16 v54, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v53

    move-object/from16 v0, v37

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/model/Parameters;->setShowDeregisterAllDevicesButton(Z)V

    .line 346
    const-string v53, "ShowDeregisterThisInSideBar"

    const/16 v54, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v53

    move-object/from16 v0, v37

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/model/Parameters;->setShowDeregisterThisInSideBar(Z)V

    .line 348
    const-string v53, "ShowDeregisterThisInSettings"

    const/16 v54, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v53

    move-object/from16 v0, v37

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/model/Parameters;->setShowDeregisterThisInSettings(Z)V

    .line 351
    invoke-virtual/range {v37 .. v37}, Lcom/tigo/mfsapp/model/Parameters;->save()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_5
.end method
