.class public Lcom/tigo/mfsapp/service/SelfRegistrationCancelResponse;
.super Lcom/tigo/mfsapp/service/JsonResponse;
.source "SelfRegistrationCancelResponse.java"


# instance fields
.field private successfullyCanceled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/tigo/mfsapp/service/JsonResponse;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tigo/mfsapp/service/SelfRegistrationCancelResponse;->successfullyCanceled:Z

    return-void
.end method


# virtual methods
.method public isSuccessfullyCanceled()Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/tigo/mfsapp/service/SelfRegistrationCancelResponse;->successfullyCanceled:Z

    return v0
.end method

.method public processResponse(Lorg/json/JSONObject;Z)V
    .locals 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "isSuccess"    # Z

    .prologue
    .line 21
    if-eqz p2, :cond_0

    const-string v1, "Status"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    :try_start_0
    const-string v1, "Status"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ERROR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tigo/mfsapp/service/SelfRegistrationCancelResponse;->successfullyCanceled:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :cond_0
    :goto_0
    return-void

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
