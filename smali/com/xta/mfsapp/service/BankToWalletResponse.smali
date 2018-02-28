.class public Lcom/tigo/mfsapp/service/BankToWalletResponse;
.super Lcom/tigo/mfsapp/service/JsonResponse;
.source "BankToWalletResponse.java"


# instance fields
.field private final banks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/Bank;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/tigo/mfsapp/service/JsonResponse;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tigo/mfsapp/service/BankToWalletResponse;->banks:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getBanks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/Bank;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tigo/mfsapp/service/BankToWalletResponse;->banks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public processResponse(Lorg/json/JSONObject;Z)V
    .locals 5
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "isSucess"    # Z

    .prologue
    .line 19
    if-eqz p2, :cond_0

    .line 23
    :try_start_0
    const-string v4, "BanksToWallet"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 25
    .local v3, "jsonBanks":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 27
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 29
    .local v2, "jsonBank":Lorg/json/JSONObject;
    new-instance v0, Lcom/tigo/mfsapp/model/Bank;

    invoke-direct {v0}, Lcom/tigo/mfsapp/model/Bank;-><init>()V

    .line 30
    .local v0, "bank":Lcom/tigo/mfsapp/model/Bank;
    const-string v4, "BankName"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/tigo/mfsapp/model/Bank;->setBankName(Ljava/lang/String;)V

    .line 31
    const-string v4, "UssdNumber"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/tigo/mfsapp/model/Bank;->setUsddNumber(Ljava/lang/String;)V

    .line 33
    iget-object v4, p0, Lcom/tigo/mfsapp/service/BankToWalletResponse;->banks:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35
    .end local v0    # "bank":Lcom/tigo/mfsapp/model/Bank;
    .end local v1    # "i":I
    .end local v2    # "jsonBank":Lorg/json/JSONObject;
    .end local v3    # "jsonBanks":Lorg/json/JSONArray;
    :catch_0
    move-exception v4

    .line 40
    :cond_0
    return-void
.end method
