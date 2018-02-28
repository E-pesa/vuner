.class public Lcom/tigo/mfsapp/service/BalancefeeResponse;
.super Lcom/tigo/mfsapp/service/JsonResponse;
.source "BalancefeeResponse.java"


# instance fields
.field private fee:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tigo/mfsapp/service/JsonResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getFee()F
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/tigo/mfsapp/service/BalancefeeResponse;->fee:F

     return-void
.end method
