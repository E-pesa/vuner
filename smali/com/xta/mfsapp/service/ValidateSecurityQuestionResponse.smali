.class public Lcom/tigo/mfsapp/service/ValidateSecurityQuestionResponse;
.super Lcom/tigo/mfsapp/service/JsonResponse;
.source "ValidateSecurityQuestionResponse.java"


# instance fields
.field private statusOK:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/tigo/mfsapp/service/JsonResponse;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tigo/mfsapp/service/ValidateSecurityQuestionResponse;->statusOK:Z

    return-void
.end method


# virtual methods
.method public isStatusOK()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/tigo/mfsapp/service/ValidateSecurityQuestionResponse;->statusOK:Z

    return v0
.end method

.method public processResponse(Lorg/json/JSONObject;Z)V
    .locals 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "isSucess"    # Z

    .prologue
    .line 13
    if-eqz p2, :cond_0

    .line 17
    :try_start_0
    const-string v1, "Status"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/tigo/mfsapp/service/ValidateSecurityQuestionResponse;->statusOK:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :cond_0
    :goto_0
    return-void

    .line 19
    :catch_0
    move-exception v0

    .line 21
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
