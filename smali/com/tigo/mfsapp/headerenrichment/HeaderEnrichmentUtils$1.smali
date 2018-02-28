.class final Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$1;
.super Ljava/lang/Object;
.source "HeaderEnrichmentUtils.java"

# interfaces
.implements Lcom/tigo/mfsapp/service/Connection$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils;->checkIfHELoginIsNeeded(Landroid/support/v4/app/FragmentActivity;Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$headerEnrichmentListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/support/v4/app/FragmentActivity;

.field final synthetic val$listener:Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$headerEnrichmentListener;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$headerEnrichmentListener;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$1;->val$listener:Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$headerEnrichmentListener;

    iput-object p2, p0, Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$1;->val$activity:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didReceiveHttpError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Request;)V
    .locals 0
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "request"    # Lcom/tigo/mfsapp/service/Request;

    .prologue
    .line 122
    return-void
.end method

.method public didResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 5
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 60
    instance-of v3, p2, Lcom/tigo/mfsapp/service/HERegisterTokenResponse;

    if-eqz v3, :cond_2

    move-object v2, p2

    .line 61
    check-cast v2, Lcom/tigo/mfsapp/service/HERegisterTokenResponse;

    .line 63
    .local v2, "res":Lcom/tigo/mfsapp/service/HERegisterTokenResponse;
    invoke-virtual {v2}, Lcom/tigo/mfsapp/service/HERegisterTokenResponse;->isRegistrationSuccessfull()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 65
    const/4 v1, 0x0

    .line 67
    .local v1, "encoded":Ljava/lang/String;
    :try_start_0
    const-string v3, ""

    invoke-static {v3}, Lcom/tigo/mfsapp/common/AppPreferences;->getGUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils;->sha256Digest(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 72
    :goto_0
    invoke-virtual {p1, v1}, Lcom/tigo/mfsapp/service/Connection;->requestHeaderEnrichmentTokenForServices(Ljava/lang/String;)V

    .line 117
    .end local v1    # "encoded":Ljava/lang/String;
    .end local v2    # "res":Lcom/tigo/mfsapp/service/HERegisterTokenResponse;
    :cond_0
    :goto_1
    return-void

    .line 68
    .restart local v1    # "encoded":Ljava/lang/String;
    .restart local v2    # "res":Lcom/tigo/mfsapp/service/HERegisterTokenResponse;
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/security/SignatureException;
    invoke-virtual {v0}, Ljava/security/SignatureException;->printStackTrace()V

    goto :goto_0

    .line 75
    .end local v0    # "e":Ljava/security/SignatureException;
    .end local v1    # "encoded":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$1;->val$listener:Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$headerEnrichmentListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$1;->val$activity:Landroid/support/v4/app/FragmentActivity;

    if-eqz v3, :cond_0

    .line 76
    iget-object v3, p0, Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$1;->val$activity:Landroid/support/v4/app/FragmentActivity;

    new-instance v4, Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$1$1;

    invoke-direct {v4, p0}, Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$1$1;-><init>(Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$1;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 86
    .end local v2    # "res":Lcom/tigo/mfsapp/service/HERegisterTokenResponse;
    :cond_2
    instance-of v3, p2, Lcom/tigo/mfsapp/service/HERegisterTokenForServicesResponse;

    if-eqz v3, :cond_0

    move-object v2, p2

    .line 88
    check-cast v2, Lcom/tigo/mfsapp/service/HERegisterTokenForServicesResponse;

    .line 89
    .local v2, "res":Lcom/tigo/mfsapp/service/HERegisterTokenForServicesResponse;
    invoke-virtual {v2}, Lcom/tigo/mfsapp/service/HERegisterTokenForServicesResponse;->isSuccessfullyObtainedToken()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 94
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/tigo/mfsapp/common/AppPreferences;->setRegisteredDevice(Z)V

    .line 95
    iget-object v3, p0, Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$1;->val$listener:Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$headerEnrichmentListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$1;->val$activity:Landroid/support/v4/app/FragmentActivity;

    if-eqz v3, :cond_0

    .line 96
    iget-object v3, p0, Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$1;->val$activity:Landroid/support/v4/app/FragmentActivity;

    new-instance v4, Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$1$2;

    invoke-direct {v4, p0}, Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$1$2;-><init>(Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$1;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 106
    :cond_3
    iget-object v3, p0, Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$1;->val$listener:Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$headerEnrichmentListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$1;->val$activity:Landroid/support/v4/app/FragmentActivity;

    if-eqz v3, :cond_0

    .line 107
    iget-object v3, p0, Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$1;->val$activity:Landroid/support/v4/app/FragmentActivity;

    new-instance v4, Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$1$3;

    invoke-direct {v4, p0}, Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$1$3;-><init>(Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$1;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1
.end method
