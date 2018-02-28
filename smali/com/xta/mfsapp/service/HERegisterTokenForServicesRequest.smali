.class public Lcom/tigo/mfsapp/service/HERegisterTokenForServicesRequest;
.super Lcom/tigo/mfsapp/service/JsonRequest;
.source "HERegisterTokenForServicesRequest.java"


# static fields
.field private static final RELATIVE_URL:Ljava/lang/String; = "register/hetoken"


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/tigo/mfsapp/service/JsonRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 16
    return-void
.end method


# virtual methods
.method public asHttpString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, "register/hetoken"

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
    const-class v0, Lcom/tigo/mfsapp/service/HERegisterTokenForServicesResponse;

    return-object v0
.end method

.method public getURLBase()Ljava/lang/String;
    .locals 3

    .prologue
    .line 31
    invoke-super {p0}, Lcom/tigo/mfsapp/service/JsonRequest;->getURLBase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/tigo/mfsapp/service/JsonRequest;->getURLBase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    const-string v2, "https://"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 32
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/tigo/mfsapp/service/JsonRequest;->getURLBase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
