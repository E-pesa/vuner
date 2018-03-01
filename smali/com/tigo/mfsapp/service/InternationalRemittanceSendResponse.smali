.class public Lcom/tigo/mfsapp/service/InternationalRemittanceSendResponse;
.super Lcom/tigo/mfsapp/service/JsonResponse;
.source "InternationalRemittanceSendResponse.java"


# instance fields
.field private response:Lcom/tigo/mfsapp/model/SendInternationalRemittance;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/tigo/mfsapp/service/JsonResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getResponse()Lcom/tigo/mfsapp/model/SendInternationalRemittance;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/tigo/mfsapp/service/InternationalRemittanceSendResponse;->response:Lcom/tigo/mfsapp/model/SendInternationalRemittance;

    return-object v0
.end method

.method public processResponse(Lorg/json/JSONObject;Z)V
    .locals 2
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "isSucess"    # Z

    .prologue
    .line 21
    :try_start_0
    new-instance v0, Lcom/tigo/mfsapp/model/SendInternationalRemittance;

    invoke-direct {v0}, Lcom/tigo/mfsapp/model/SendInternationalRemittance;-><init>()V

    iput-object v0, p0, Lcom/tigo/mfsapp/service/InternationalRemittanceSendResponse;->response:Lcom/tigo/mfsapp/model/SendInternationalRemittance;

    .line 22
    iget-object v0, p0, Lcom/tigo/mfsapp/service/InternationalRemittanceSendResponse;->response:Lcom/tigo/mfsapp/model/SendInternationalRemittance;

    const-string v1, "ReceiverID"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/model/SendInternationalRemittance;->setReceiverID(Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/tigo/mfsapp/service/InternationalRemittanceSendResponse;->response:Lcom/tigo/mfsapp/model/SendInternationalRemittance;

    const-string v1, "ReceiverName"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/model/SendInternationalRemittance;->setReceiverName(Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/tigo/mfsapp/service/InternationalRemittanceSendResponse;->response:Lcom/tigo/mfsapp/model/SendInternationalRemittance;

    const-string v1, "AmountForeignCurrency"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/model/SendInternationalRemittance;->setAmountForeignCurrency(Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/tigo/mfsapp/service/InternationalRemittanceSendResponse;->response:Lcom/tigo/mfsapp/model/SendInternationalRemittance;

    const-string v1, "AmountLocalCurrency"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/model/SendInternationalRemittance;->setAmountLocalCurrency(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/tigo/mfsapp/service/InternationalRemittanceSendResponse;->response:Lcom/tigo/mfsapp/model/SendInternationalRemittance;

    const-string v1, "TotalLocalCurrency"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/model/SendInternationalRemittance;->setTotalLocalCurrency(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    goto :goto_0
.end method
