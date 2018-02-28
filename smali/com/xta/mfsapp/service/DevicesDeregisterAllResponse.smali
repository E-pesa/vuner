.class public Lcom/tigo/mfsapp/service/DevicesDeregisterAllResponse;
.super Lcom/tigo/mfsapp/service/JsonResponse;
.source "DevicesDeregisterAllResponse.java"


# instance fields
.field private statusOK:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/tigo/mfsapp/service/JsonResponse;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tigo/mfsapp/service/DevicesDeregisterAllResponse;->statusOK:Z

    return-void
.end method


# virtual methods
.method public isStatusOK()Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/tigo/mfsapp/service/DevicesDeregisterAllResponse;->statusOK:Z

    return v0
.end method

.method public processResponse(Lorg/json/JSONObject;Z)V
    .locals 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "isSucess"    # Z

    .prologue
    .line 12
    if-eqz p2, :cond_0

    .line 16
    :try_start_0
    const-string v1, "Status"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/tigo/mfsapp/service/DevicesDeregisterAllResponse;->statusOK:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :cond_0
    :goto_0
    return-void

    .line 18
    :catch_0
    move-exception v0

    .line 20
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
