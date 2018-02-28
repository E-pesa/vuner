.class public Lcom/tigo/mfsapp/service/InternationalRemittancePickUpByCustomerResponse;
.super Lcom/tigo/mfsapp/service/JsonResponse;
.source "InternationalRemittancePickUpByCustomerResponse.java"


# instance fields
.field private response:Lcom/tigo/mfsapp/model/RemittancePickUp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/tigo/mfsapp/service/JsonResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getResponse()Lcom/tigo/mfsapp/model/RemittancePickUp;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/tigo/mfsapp/service/InternationalRemittancePickUpByCustomerResponse;->response:Lcom/tigo/mfsapp/model/RemittancePickUp;

    return-object v0
.end method

.method public processResponse(Lorg/json/JSONObject;Z)V
    .locals 1
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "isSucess"    # Z

    .prologue
    .line 21
    :try_start_0
    new-instance v0, Lcom/tigo/mfsapp/model/RemittancePickUp;

    invoke-direct {v0}, Lcom/tigo/mfsapp/model/RemittancePickUp;-><init>()V

    iput-object v0, p0, Lcom/tigo/mfsapp/service/InternationalRemittancePickUpByCustomerResponse;->response:Lcom/tigo/mfsapp/model/RemittancePickUp;
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
