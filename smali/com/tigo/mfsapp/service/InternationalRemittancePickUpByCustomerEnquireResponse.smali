.class public Lcom/tigo/mfsapp/service/InternationalRemittancePickUpByCustomerEnquireResponse;
.super Lcom/tigo/mfsapp/service/JsonResponse;
.source "InternationalRemittancePickUpByCustomerEnquireResponse.java"


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
    const/4 v0, 0x0

    return-object v0
.end method

.method public processResponse(Lorg/json/JSONObject;Z)V
    .locals 0
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "isSucess"    # Z

    .prologue
    .line 28
    return-void
.end method
