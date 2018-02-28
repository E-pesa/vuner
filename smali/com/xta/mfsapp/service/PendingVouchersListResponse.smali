.class public Lcom/tigo/mfsapp/service/PendingVouchersListResponse;
.super Lcom/tigo/mfsapp/service/JsonResponse;
.source "PendingVouchersListResponse.java"


# instance fields
.field private pendingVouchersList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/PendingVouchers;",
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

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tigo/mfsapp/service/PendingVouchersListResponse;->pendingVouchersList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getPendingVouchersList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/PendingVouchers;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tigo/mfsapp/service/PendingVouchersListResponse;->pendingVouchersList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public processResponse(Lorg/json/JSONObject;Z)V
    .locals 8
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "isSucess"    # Z

    .prologue
    .line 21
    :try_start_0
    const-string v6, "PendingVouchers"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 22
    .local v0, "array":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 24
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 25
    .local v1, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 26
    .local v3, "l":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 29
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 30
    .local v4, "temp":Lorg/json/JSONObject;
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/tigo/mfsapp/model/PendingVouchers;

    invoke-virtual {v1, v6, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tigo/mfsapp/model/PendingVouchers;

    .line 32
    .local v5, "voucher":Lcom/tigo/mfsapp/model/PendingVouchers;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/service/PendingVouchersListResponse;->getPendingVouchersList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 36
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .end local v2    # "i":I
    .end local v3    # "l":I
    .end local v4    # "temp":Lorg/json/JSONObject;
    .end local v5    # "voucher":Lcom/tigo/mfsapp/model/PendingVouchers;
    :catch_0
    move-exception v6

    .line 41
    :cond_0
    return-void
.end method

.method public setPendingVouchersList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/PendingVouchers;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "pendingVouchersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/PendingVouchers;>;"
    iput-object p1, p0, Lcom/tigo/mfsapp/service/PendingVouchersListResponse;->pendingVouchersList:Ljava/util/ArrayList;

    .line 51
    return-void
.end method
