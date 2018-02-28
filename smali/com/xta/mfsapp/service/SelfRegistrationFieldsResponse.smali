.class public Lcom/tigo/mfsapp/service/SelfRegistrationFieldsResponse;
.super Lcom/tigo/mfsapp/service/JsonResponse;
.source "SelfRegistrationFieldsResponse.java"


# instance fields
.field private fields:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/SelfRegistrationField;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/tigo/mfsapp/service/JsonResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getFields()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/SelfRegistrationField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lcom/tigo/mfsapp/service/SelfRegistrationFieldsResponse;->fields:Ljava/util/ArrayList;

    return-object v0
.end method

.method public processResponse(Lorg/json/JSONObject;Z)V
    .locals 17
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "isSucess"    # Z

    .prologue
    .line 28
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/tigo/mfsapp/service/SelfRegistrationFieldsResponse;->fields:Ljava/util/ArrayList;

    .line 29
    new-instance v13, Lcom/google/gson/Gson;

    invoke-direct {v13}, Lcom/google/gson/Gson;-><init>()V

    .line 30
    .local v13, "parser":Lcom/google/gson/Gson;
    if-eqz p2, :cond_8

    const-string v14, "RegisterFields"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 32
    :try_start_0
    const-string v14, "RegisterFields"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 34
    .local v3, "fields":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v4, v14, :cond_8

    .line 35
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 36
    .local v2, "field":Lorg/json/JSONObject;
    new-instance v5, Lcom/tigo/mfsapp/model/SelfRegistrationField;

    invoke-direct {v5}, Lcom/tigo/mfsapp/model/SelfRegistrationField;-><init>()V

    .line 38
    .local v5, "item":Lcom/tigo/mfsapp/model/SelfRegistrationField;
    const-string v14, "Id"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->setId(Ljava/lang/String;)V

    .line 39
    const-string v14, "Mandatory"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    const-string v14, "Mandatory"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    :goto_1
    invoke-virtual {v5, v14}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->setMandatory(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 41
    :try_start_1
    const-string v14, "MaxLength"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    const-string v14, "MaxLength"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v7

    .line 45
    .local v7, "lengthaux":I
    :goto_2
    :try_start_2
    invoke-virtual {v5, v7}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->setMaxLength(I)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 47
    :try_start_3
    const-string v14, "MinLength"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    const-string v14, "MinLength"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v7

    .line 51
    :goto_3
    :try_start_4
    invoke-virtual {v5, v7}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->setMinLength(I)V

    .line 53
    const-string v14, "Repeat"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    const-string v14, "Repeat"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    :goto_4
    invoke-virtual {v5, v14}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->setRepeat(Z)V

    .line 54
    const-string v14, "Type"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->setType(Ljava/lang/String;)V

    .line 56
    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->setOptions([Lcom/tigo/mfsapp/model/SelfRegistrationField$FieldOptions;)V

    .line 59
    const-string v14, "Options"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    const-string v14, "Options"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 66
    const-string v14, "Options"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 67
    .local v10, "options":Lorg/json/JSONArray;
    if-eqz v10, :cond_5

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-lez v14, :cond_5

    .line 69
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v14

    new-array v12, v14, [Lcom/tigo/mfsapp/model/SelfRegistrationField$FieldOptions;

    .line 70
    .local v12, "opts":[Lcom/tigo/mfsapp/model/SelfRegistrationField$FieldOptions;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_5
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v6, v14, :cond_4

    .line 72
    new-instance v14, Lcom/tigo/mfsapp/model/SelfRegistrationField$FieldOptions;

    invoke-direct {v14}, Lcom/tigo/mfsapp/model/SelfRegistrationField$FieldOptions;-><init>()V

    aput-object v14, v12, v6

    .line 74
    invoke-virtual {v10, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "Name"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 77
    .local v11, "optname":Lorg/json/JSONObject;
    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    const-class v15, Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    invoke-virtual {v13, v14, v15}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    .line 78
    .local v9, "name":Lcom/tigo/mfsapp/model/ReferenceNumberKey;
    aget-object v14, v12, v6

    invoke-virtual {v14, v9}, Lcom/tigo/mfsapp/model/SelfRegistrationField$FieldOptions;->setName(Lcom/tigo/mfsapp/model/ReferenceNumberKey;)V

    .line 81
    aget-object v14, v12, v6

    invoke-virtual {v10, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string v16, "Value"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/tigo/mfsapp/model/SelfRegistrationField$FieldOptions;->setValue(Ljava/lang/String;)V

    .line 70
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 39
    .end local v6    # "j":I
    .end local v7    # "lengthaux":I
    .end local v9    # "name":Lcom/tigo/mfsapp/model/ReferenceNumberKey;
    .end local v10    # "options":Lorg/json/JSONArray;
    .end local v11    # "optname":Lorg/json/JSONObject;
    .end local v12    # "opts":[Lcom/tigo/mfsapp/model/SelfRegistrationField$FieldOptions;
    :cond_0
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 41
    :cond_1
    const/4 v7, -0x1

    goto/16 :goto_2

    .line 42
    :catch_0
    move-exception v1

    .line 43
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v7, -0x1

    .restart local v7    # "lengthaux":I
    goto/16 :goto_2

    .line 47
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    const/4 v7, -0x1

    goto/16 :goto_3

    .line 48
    :catch_1
    move-exception v1

    .line 49
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    const/4 v7, -0x1

    goto/16 :goto_3

    .line 53
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 83
    .restart local v6    # "j":I
    .restart local v10    # "options":Lorg/json/JSONArray;
    .restart local v12    # "opts":[Lcom/tigo/mfsapp/model/SelfRegistrationField$FieldOptions;
    :cond_4
    invoke-virtual {v5, v12}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->setOptions([Lcom/tigo/mfsapp/model/SelfRegistrationField$FieldOptions;)V

    .line 87
    .end local v6    # "j":I
    .end local v10    # "options":Lorg/json/JSONArray;
    .end local v12    # "opts":[Lcom/tigo/mfsapp/model/SelfRegistrationField$FieldOptions;
    :cond_5
    const-string v14, "Name"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    const-string v14, "Name"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 88
    const-string v14, "Name"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 90
    .local v9, "name":Lorg/json/JSONObject;
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    const-class v15, Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    invoke-virtual {v13, v14, v15}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    .line 92
    .local v8, "n":Lcom/tigo/mfsapp/model/ReferenceNumberKey;
    invoke-virtual {v5, v8}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->setName(Lcom/tigo/mfsapp/model/ReferenceNumberKey;)V

    .line 95
    .end local v8    # "n":Lcom/tigo/mfsapp/model/ReferenceNumberKey;
    .end local v9    # "name":Lorg/json/JSONObject;
    :cond_6
    const-string v14, "FieldValue"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 96
    const-string v14, "FieldValue"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->setFieldValue(Ljava/lang/String;)V

    .line 98
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tigo/mfsapp/service/SelfRegistrationFieldsResponse;->fields:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    .line 34
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 101
    .end local v2    # "field":Lorg/json/JSONObject;
    .end local v3    # "fields":Lorg/json/JSONArray;
    .end local v4    # "i":I
    .end local v5    # "item":Lcom/tigo/mfsapp/model/SelfRegistrationField;
    .end local v7    # "lengthaux":I
    :catch_2
    move-exception v1

    .line 102
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 105
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_8
    return-void
.end method
