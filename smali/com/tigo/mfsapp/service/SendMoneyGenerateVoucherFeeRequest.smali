.class public Lcom/tigo/mfsapp/service/SendMoneyGenerateVoucherFeeRequest;
.super Lcom/tigo/mfsapp/service/JsonRequest;
.source "SendMoneyGenerateVoucherFeeRequest.java"


# static fields
.field private static final RELATIVE_URL:Ljava/lang/String; = "wallet/fee/genvaucher"


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


# virtual methods
.method public asHttpString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string v0, "wallet/fee/genvaucher"

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "POST"

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
    const-class v0, Lcom/tigo/mfsapp/service/SendMoneyGenerateVoucherFeeResponse;

    return-object v0
.end method
