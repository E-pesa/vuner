.class public Lcom/tigo/mfsapp/service/SelfRegistrationFieldsRequest;
.super Lcom/tigo/mfsapp/service/JsonRequest;
.source "SelfRegistrationFieldsRequest.java"


# static fields
.field private static final RELATIVE_URL:Ljava/lang/String; = "selfregistration/fields"


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/tigo/mfsapp/service/JsonRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 17
    return-void
.end method


# virtual methods
.method public asHttpString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "selfregistration/fields"

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
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
    .line 22
    const-class v0, Lcom/tigo/mfsapp/service/SelfRegistrationFieldsResponse;

    return-object v0
.end method
