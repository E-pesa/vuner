.class public Lcom/tigo/mfsapp/service/InternationalRemittanceConfirmResponse;
.super Lcom/tigo/mfsapp/service/JsonResponse;
.source "InternationalRemittanceConfirmResponse.java"


# instance fields
.field private TransactionID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/tigo/mfsapp/service/JsonResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getTransactionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tigo/mfsapp/service/InternationalRemittanceConfirmResponse;->TransactionID:Ljava/lang/String;

    return-object v0
.end method

.method public processResponse(Lorg/json/JSONObject;Z)V
    .locals 1
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "isSucess"    # Z

    .prologue
    .line 14
    :try_start_0
    const-string v0, "TransactionID"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/service/InternationalRemittanceConfirmResponse;->setTransactionID(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :goto_0
    return-void

    .line 16
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setTransactionID(Ljava/lang/String;)V
    .locals 0
    .param p1, "transactionID"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/tigo/mfsapp/service/InternationalRemittanceConfirmResponse;->TransactionID:Ljava/lang/String;

    .line 31
    return-void
.end method
