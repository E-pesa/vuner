.class public Lcom/tigo/mfsapp/model/EcommerceProduct;
.super Ljava/lang/Object;
.source "EcommerceProduct.java"


# instance fields
.field private name:Ljava/lang/String;

.field private sku:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sku"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/tigo/mfsapp/model/EcommerceProduct;->name:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/tigo/mfsapp/model/EcommerceProduct;->sku:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/tigo/mfsapp/model/EcommerceProduct;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSku()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/tigo/mfsapp/model/EcommerceProduct;->sku:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/tigo/mfsapp/model/EcommerceProduct;->name:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setSku(Ljava/lang/String;)V
    .locals 0
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/tigo/mfsapp/model/EcommerceProduct;->sku:Ljava/lang/String;

    .line 34
    return-void
.end method
