.class public Lcom/tigo/mfsapp/service/GetSecurityQuestionResponse;
.super Lcom/tigo/mfsapp/service/JsonResponse;
.source "GetSecurityQuestionResponse.java"


# instance fields
.field private arrSecurityQuestion:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/SecurityQuestion;",
            ">;"
        }
    .end annotation
.end field

.field private userQuestionID:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/tigo/mfsapp/service/JsonResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getArrSecurityQuestion()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/SecurityQuestion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tigo/mfsapp/service/GetSecurityQuestionResponse;->arrSecurityQuestion:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUserQuestionID()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/tigo/mfsapp/service/GetSecurityQuestionResponse;->userQuestionID:I

    return v0
.end method

.method public processResponse(Lorg/json/JSONObject;Z)V
    .locals 10
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "isSucess"    # Z

    .prologue
    .line 20
    if-eqz p2, :cond_0

    .line 24
    :try_start_0
    const-string v5, "UserQuestionID"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/tigo/mfsapp/service/GetSecurityQuestionResponse;->userQuestionID:I

    .line 26
    const-string v5, "SecurityQuestions"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 28
    .local v4, "securityQuestions":Lorg/json/JSONArray;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/tigo/mfsapp/service/GetSecurityQuestionResponse;->arrSecurityQuestion:Ljava/util/ArrayList;

    .line 30
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 32
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 33
    .local v2, "jsonSecurityQuestion":Lorg/json/JSONObject;
    new-instance v3, Lcom/tigo/mfsapp/model/SecurityQuestion;

    const-string v5, "QuestionID"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    new-instance v6, Lcom/tigo/mfsapp/model/DisplayNames;

    const-string v7, "DisplayName"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "es_SV"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "DisplayName"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "en"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/tigo/mfsapp/model/DisplayNames;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v5, v6}, Lcom/tigo/mfsapp/model/SecurityQuestion;-><init>(ILcom/tigo/mfsapp/model/DisplayNames;)V

    .line 34
    .local v3, "securityQuestion":Lcom/tigo/mfsapp/model/SecurityQuestion;
    iget-object v5, p0, Lcom/tigo/mfsapp/service/GetSecurityQuestionResponse;->arrSecurityQuestion:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    .end local v1    # "i":I
    .end local v2    # "jsonSecurityQuestion":Lorg/json/JSONObject;
    .end local v3    # "securityQuestion":Lcom/tigo/mfsapp/model/SecurityQuestion;
    .end local v4    # "securityQuestions":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 42
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method
