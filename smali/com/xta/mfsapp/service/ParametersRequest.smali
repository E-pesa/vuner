.class public Lcom/tigo/mfsapp/service/ParametersRequest;
.super Lcom/tigo/mfsapp/service/JsonRequest;
.source "ParametersRequest.java"


# static fields
.field private static final RELATIVE_URL:Ljava/lang/String; = "parameters"


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/tigo/mfsapp/service/JsonRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 15
    return-void
.end method


# virtual methods
.method public asHttpString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string v0, "parameters"

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "GET"

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
    .line 20
    const-class v0, Lcom/tigo/mfsapp/service/ParametersResponse;

    return-object v0
.end method
