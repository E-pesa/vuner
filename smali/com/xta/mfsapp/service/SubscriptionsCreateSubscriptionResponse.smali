.class public Lcom/tigo/mfsapp/service/SubscriptionsCreateSubscriptionResponse;
.super Lcom/tigo/mfsapp/service/JsonResponse;
.source "SubscriptionsCreateSubscriptionResponse.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/tigo/mfsapp/service/JsonResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public processResponse(Lorg/json/JSONObject;Z)V
    .locals 2
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "isSucess"    # Z

    .prologue
    .line 13
    if-eqz p2, :cond_0

    .line 15
    const-string v0, "Subscription create"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_0
    return-void
.end method
