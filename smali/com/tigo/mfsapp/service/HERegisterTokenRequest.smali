.class public Lcom/tigo/mfsapp/service/HERegisterTokenRequest;
.super Lcom/tigo/mfsapp/service/JsonRequest;
.source "HERegisterTokenRequest.java"


# instance fields
.field private RELATIVE_URL:Ljava/lang/String;

.field private customURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/tigo/mfsapp/service/JsonRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/tigo/mfsapp/service/HERegisterTokenRequest;->RELATIVE_URL:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public asHttpString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tigo/mfsapp/service/HERegisterTokenRequest;->RELATIVE_URL:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 21
    const-class v0, Lcom/tigo/mfsapp/service/HERegisterTokenResponse;

    return-object v0
.end method

.method public getURLBase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/tigo/mfsapp/service/HERegisterTokenRequest;->customURL:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/tigo/mfsapp/service/JsonRequest;->getURLBase()Ljava/lang/String;

    move-result-object v0

    .line 33
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/service/HERegisterTokenRequest;->customURL:Ljava/lang/String;

    goto :goto_0
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/tigo/mfsapp/service/HERegisterTokenRequest;->customURL:Ljava/lang/String;

    .line 39
    return-void
.end method
