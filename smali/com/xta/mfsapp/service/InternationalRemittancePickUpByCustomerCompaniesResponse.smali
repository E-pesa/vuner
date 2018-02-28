.class public Lcom/tigo/mfsapp/service/InternationalRemittancePickUpByCustomerCompaniesResponse;
.super Lcom/tigo/mfsapp/service/JsonResponse;
.source "InternationalRemittancePickUpByCustomerCompaniesResponse.java"


# instance fields
.field private remittancePartners:Lcom/tigo/mfsapp/model/RemittancePickUp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tigo/mfsapp/service/JsonResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getRemittancePartners()Lcom/tigo/mfsapp/model/RemittancePickUp;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/tigo/mfsapp/service/InternationalRemittancePickUpByCustomerCompaniesResponse;->remittancePartners:Lcom/tigo/mfsapp/model/RemittancePickUp;

    return-object v0
.end method

.method public processResponse(Lorg/json/JSONObject;Z)V
    .locals 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "isSucess"    # Z

    .prologue
    .line 28
    :try_start_0
    const-string v1, "RemittancePartners"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 33
    .local v0, "gson":Lcom/google/gson/Gson;
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/tigo/mfsapp/model/RemittancePickUp;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/model/RemittancePickUp;

    iput-object v1, p0, Lcom/tigo/mfsapp/service/InternationalRemittancePickUpByCustomerCompaniesResponse;->remittancePartners:Lcom/tigo/mfsapp/model/RemittancePickUp;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .end local v0    # "gson":Lcom/google/gson/Gson;
    :cond_0
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setRemittancePartners(Lcom/tigo/mfsapp/model/RemittancePickUp;)V
    .locals 0
    .param p1, "remittancePartners"    # Lcom/tigo/mfsapp/model/RemittancePickUp;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/tigo/mfsapp/service/InternationalRemittancePickUpByCustomerCompaniesResponse;->remittancePartners:Lcom/tigo/mfsapp/model/RemittancePickUp;

    .line 20
    return-void
.end method
