.class public Lcom/tigo/mfsapp/service/InterestPaymentResponse;
.super Lcom/tigo/mfsapp/service/JsonResponse;
.source "InterestPaymentResponse.java"


# instance fields
.field private final interestPayments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/InterestPaymentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private selected:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/tigo/mfsapp/service/JsonResponse;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tigo/mfsapp/service/InterestPaymentResponse;->interestPayments:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getInterestPayments()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/InterestPaymentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/tigo/mfsapp/service/InterestPaymentResponse;->interestPayments:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSelected()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tigo/mfsapp/service/InterestPaymentResponse;->selected:Ljava/lang/String;

    return-object v0
.end method

.method public processResponse(Lorg/json/JSONObject;Z)V
    .locals 5
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "isSucess"    # Z

    .prologue
    .line 20
    if-eqz p2, :cond_0

    .line 25
    :try_start_0
    const-string v4, "Selection"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tigo/mfsapp/service/InterestPaymentResponse;->selected:Ljava/lang/String;

    .line 27
    const-string v4, "Options"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 29
    .local v3, "jsonInterestPayments":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 31
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 33
    .local v2, "jsonInterestPayment":Lorg/json/JSONObject;
    new-instance v1, Lcom/tigo/mfsapp/model/InterestPaymentInfo;

    invoke-direct {v1}, Lcom/tigo/mfsapp/model/InterestPaymentInfo;-><init>()V

    .line 35
    .local v1, "interestPayment":Lcom/tigo/mfsapp/model/InterestPaymentInfo;
    const-string v4, "ID"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/tigo/mfsapp/model/InterestPaymentInfo;->setId(Ljava/lang/String;)V

    .line 36
    const-string v4, "TITLE"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/tigo/mfsapp/model/InterestPaymentInfo;->setTitle(Ljava/lang/String;)V

    .line 37
    const-string v4, "VALUE"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/tigo/mfsapp/model/InterestPaymentInfo;->setDescription(Ljava/lang/String;)V

    .line 39
    iget-object v4, p0, Lcom/tigo/mfsapp/service/InterestPaymentResponse;->interestPayments:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    .end local v0    # "i":I
    .end local v1    # "interestPayment":Lcom/tigo/mfsapp/model/InterestPaymentInfo;
    .end local v2    # "jsonInterestPayment":Lorg/json/JSONObject;
    .end local v3    # "jsonInterestPayments":Lorg/json/JSONArray;
    :catch_0
    move-exception v4

    .line 46
    :cond_0
    return-void
.end method
