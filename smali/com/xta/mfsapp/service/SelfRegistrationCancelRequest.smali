.class public Lcom/tigo/mfsapp/service/SelfRegistrationCancelRequest;
.super Lcom/tigo/mfsapp/service/JsonRequest;
.source "SelfRegistrationCancelRequest.java"


# static fields
.field private static final RELATIVE_URL:Ljava/lang/String; = "selfregistration/canceled"


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/tigo/mfsapp/service/JsonRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 14
    return-void
.end method

.method public static parseRequestPayload()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method


# virtual methods
.method public asHttpString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string v0, "selfregistration/canceled"

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
    .line 19
    const-class v0, Lcom/tigo/mfsapp/service/SelfRegistrationCancelResponse;

    return-object v0
.end method
