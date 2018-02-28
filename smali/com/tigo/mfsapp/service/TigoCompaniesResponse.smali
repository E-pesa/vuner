.class public Lcom/tigo/mfsapp/service/TigoCompaniesResponse;
.super Lcom/tigo/mfsapp/service/JsonResponse;
.source "TigoCompaniesResponse.java"


# instance fields
.field private companies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/Company;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/tigo/mfsapp/service/JsonResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getTigoCompanies()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/Company;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/tigo/mfsapp/service/TigoCompaniesResponse;->companies:Ljava/util/ArrayList;

    return-object v0
.end method

.method public processResponse(Lorg/json/JSONObject;Z)V
    .locals 19
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "isSucess"    # Z

    .prologue
    .line 25
    if-eqz p2, :cond_2

    .line 29
    :try_start_0
    const-string v17, "Companies"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 30
    .local v8, "jsonArray":Lorg/json/JSONArray;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tigo/mfsapp/service/TigoCompaniesResponse;->companies:Ljava/util/ArrayList;

    .line 32
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/tigo/mfsapp/app/MfsApp;->getBaseContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 33
    .local v15, "res":Landroid/content/res/Resources;
    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 35
    .local v3, "conf":Landroid/content/res/Configuration;
    iget-object v0, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    .line 37
    .local v12, "localeCode":Ljava/lang/String;
    new-instance v14, Lcom/google/gson/Gson;

    invoke-direct {v14}, Lcom/google/gson/Gson;-><init>()V

    .line 39
    .local v14, "parser":Lcom/google/gson/Gson;
    const/16 v16, 0x0

    .local v16, "x":I
    :goto_0
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    .line 41
    move/from16 v0, v16

    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 48
    .local v7, "item":Lorg/json/JSONObject;
    new-instance v2, Lcom/tigo/mfsapp/model/Company;

    invoke-direct {v2}, Lcom/tigo/mfsapp/model/Company;-><init>()V

    .line 49
    .local v2, "company":Lcom/tigo/mfsapp/model/Company;
    const-string v17, "CoID"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/tigo/mfsapp/model/Company;->setId(Ljava/lang/String;)V

    .line 50
    const-string v17, "CatID"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/tigo/mfsapp/model/Company;->setCategoryId(Ljava/lang/String;)V

    .line 51
    const-string v17, "AR"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/tigo/mfsapp/model/Company;->setAmountRequired(Z)V

    .line 52
    const-string v17, "CD"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/tigo/mfsapp/model/Company;->setCompanyDescription(Ljava/lang/String;)V

    .line 53
    const-string v17, "CD"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/tigo/mfsapp/model/Company;->setCompanyName(Ljava/lang/String;)V

    .line 54
    const-string v17, "LN"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/tigo/mfsapp/model/Company;->setLogoName(Ljava/lang/String;)V

    .line 55
    const-string v17, "RNHIN"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/tigo/mfsapp/model/Company;->setReferneceNumberHelpImageName(Ljava/lang/String;)V

    .line 57
    const-string v17, "RNK"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    const-string v17, "RNK"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v17

    if-nez v17, :cond_1

    .line 60
    :try_start_1
    const-string v17, "RNK"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 61
    .local v13, "obj":Lorg/json/JSONObject;
    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v17

    const-class v18, Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    .line 62
    .local v11, "l":Lcom/tigo/mfsapp/model/ReferenceNumberKey;
    invoke-virtual {v2, v11}, Lcom/tigo/mfsapp/model/Company;->addReferneceNumberKey(Lcom/tigo/mfsapp/model/ReferenceNumberKey;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    .end local v11    # "l":Lcom/tigo/mfsapp/model/ReferenceNumberKey;
    .end local v13    # "obj":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    :try_start_2
    const-string v17, "BC_SRP"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/tigo/mfsapp/model/Company;->setBC_SRP(Ljava/lang/String;)V

    .line 82
    const-string v17, "BC_POS"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/tigo/mfsapp/model/Company;->setBC_POS(I)V

    .line 83
    const-string v17, "BC_LEN"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/tigo/mfsapp/model/Company;->setBC_LEN(I)V

    .line 84
    const-string v17, "BC_ENABLED"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/tigo/mfsapp/model/Company;->setBC_ENABLED(Z)V

    .line 85
    const-string v17, "AM_SRP"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/tigo/mfsapp/model/Company;->setAM_SRP(Ljava/lang/String;)V

    .line 86
    const-string v17, "AM_POS"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/tigo/mfsapp/model/Company;->setAM_POS(I)V

    .line 87
    const-string v17, "AM_INT"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/tigo/mfsapp/model/Company;->setAM_INT(I)V

    .line 88
    const-string v17, "AM_DEC"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/tigo/mfsapp/model/Company;->setAM_DEC(I)V

    .line 90
    const-string v17, "AM_EDITABLE"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/tigo/mfsapp/model/Company;->setAM_EDITABLE(Z)V

    .line 91
    const-string v17, "VB_ENABLED"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/tigo/mfsapp/model/Company;->setVB_ENABLED(Z)V

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tigo/mfsapp/service/TigoCompaniesResponse;->companies:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 63
    :catch_0
    move-exception v5

    .line 65
    .local v5, "e":Ljava/lang/Exception;
    const-string v17, "RNK"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 67
    .local v10, "jsonreferences":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v6, v0, :cond_0

    .line 69
    invoke-virtual {v10, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 70
    .local v9, "jsonreference":Lorg/json/JSONObject;
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v17

    const-class v18, Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    .line 71
    .restart local v11    # "l":Lcom/tigo/mfsapp/model/ReferenceNumberKey;
    invoke-virtual {v2, v11}, Lcom/tigo/mfsapp/model/Company;->addReferneceNumberKey(Lcom/tigo/mfsapp/model/ReferenceNumberKey;)V

    .line 67
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 74
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "i":I
    .end local v9    # "jsonreference":Lorg/json/JSONObject;
    .end local v10    # "jsonreferences":Lorg/json/JSONArray;
    .end local v11    # "l":Lcom/tigo/mfsapp/model/ReferenceNumberKey;
    :cond_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Company "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Company;->getId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " does not have RNK, applying defaults"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/tigo/mfsapp/utils/Logger;->debug(Ljava/lang/String;)V

    .line 75
    const-string v4, "{\"en\":\"Reference\",\"es_HN\":\"Referencia\",\"Type\":\"Text\",\"IdType\":\"1\",\"MinLength\":1,\"MaxLength\":1000}"

    .line 76
    .local v4, "def":Ljava/lang/String;
    const-class v17, Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    move-object/from16 v0, v17

    invoke-virtual {v14, v4, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    .line 77
    .restart local v11    # "l":Lcom/tigo/mfsapp/model/ReferenceNumberKey;
    invoke-virtual {v2, v11}, Lcom/tigo/mfsapp/model/Company;->addReferneceNumberKey(Lcom/tigo/mfsapp/model/ReferenceNumberKey;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 96
    .end local v2    # "company":Lcom/tigo/mfsapp/model/Company;
    .end local v3    # "conf":Landroid/content/res/Configuration;
    .end local v4    # "def":Ljava/lang/String;
    .end local v7    # "item":Lorg/json/JSONObject;
    .end local v8    # "jsonArray":Lorg/json/JSONArray;
    .end local v11    # "l":Lcom/tigo/mfsapp/model/ReferenceNumberKey;
    .end local v12    # "localeCode":Ljava/lang/String;
    .end local v14    # "parser":Lcom/google/gson/Gson;
    .end local v15    # "res":Landroid/content/res/Resources;
    .end local v16    # "x":I
    :catch_1
    move-exception v5

    .line 98
    .local v5, "e":Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    .line 102
    .end local v5    # "e":Lorg/json/JSONException;
    :cond_2
    return-void
.end method
