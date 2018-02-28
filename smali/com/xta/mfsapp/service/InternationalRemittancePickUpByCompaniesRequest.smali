.class public Lcom/tigo/mfsapp/service/InternationalRemittancePickUpByCompaniesRequest;
.super Lcom/tigo/mfsapp/service/JsonRequest;
.source "InternationalRemittancePickUpByCompaniesRequest.java"


# static fields
.field private static final RELATIVE_URL:Ljava/lang/String; = "tigo/remittancepartners"


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/tigo/mfsapp/service/JsonRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 13
    return-void
.end method


# virtual methods
.method public asHttpString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "tigo/remittancepartners"

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
    .line 18
    const-class v0, Lcom/tigo/mfsapp/service/InternationalRemittancePickUpByCustomerCompaniesResponse;

    return-object v0
.end method
