.class public Lcom/tigo/mfsapp/model/MerchantPaymet;
.super Ljava/lang/Object;
.source "MerchantPaymet.java"


# instance fields
.field private Amount:F

.field private Fee:F

.field private MerchantID:Ljava/lang/String;

.field private MerchantName:Ljava/lang/String;

.field private ProductPicture:Ljava/lang/String;

.field private Total:F

.field private TransactionDatetime:Ljava/lang/String;

.field private TransactionDescription:Ljava/lang/String;

.field private TransactionID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()F
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/tigo/mfsapp/model/MerchantPaymet;->Amount:F

    return v0
.end method

.method public getFee()F
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/tigo/mfsapp/model/MerchantPaymet;->Fee:F

    return v0
.end method

.method public getMerchantID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/tigo/mfsapp/model/MerchantPaymet;->MerchantID:Ljava/lang/String;

    return-object v0
.end method

.method public getMerchantName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tigo/mfsapp/model/MerchantPaymet;->MerchantName:Ljava/lang/String;

    return-object v0
.end method

.method public getProductPicture()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tigo/mfsapp/model/MerchantPaymet;->ProductPicture:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal()F
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/tigo/mfsapp/model/MerchantPaymet;->Total:F

    return v0
.end method

.method public getTransactionDatetime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/tigo/mfsapp/model/MerchantPaymet;->TransactionDatetime:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tigo/mfsapp/model/MerchantPaymet;->TransactionDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tigo/mfsapp/model/MerchantPaymet;->TransactionID:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(F)V
    .locals 0
    .param p1, "amount"    # F

    .prologue
    .line 62
    iput p1, p0, Lcom/tigo/mfsapp/model/MerchantPaymet;->Amount:F

    .line 63
    return-void
.end method

.method public setFee(F)V
    .locals 0
    .param p1, "fee"    # F

    .prologue
    .line 72
    iput p1, p0, Lcom/tigo/mfsapp/model/MerchantPaymet;->Fee:F

    .line 73
    return-void
.end method

.method public setMerchantID(Ljava/lang/String;)V
    .locals 0
    .param p1, "merchantID"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/tigo/mfsapp/model/MerchantPaymet;->MerchantID:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setMerchantName(Ljava/lang/String;)V
    .locals 0
    .param p1, "merchantName"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/tigo/mfsapp/model/MerchantPaymet;->MerchantName:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setProductPicture(Ljava/lang/String;)V
    .locals 0
    .param p1, "productPicture"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/tigo/mfsapp/model/MerchantPaymet;->ProductPicture:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setTotal(F)V
    .locals 0
    .param p1, "total"    # F

    .prologue
    .line 82
    iput p1, p0, Lcom/tigo/mfsapp/model/MerchantPaymet;->Total:F

    .line 83
    return-void
.end method

.method public setTransactionDatetime(Ljava/lang/String;)V
    .locals 0
    .param p1, "transactionDatetime"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/tigo/mfsapp/model/MerchantPaymet;->TransactionDatetime:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setTransactionDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "transactionDescription"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/tigo/mfsapp/model/MerchantPaymet;->TransactionDescription:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setTransactionID(Ljava/lang/String;)V
    .locals 0
    .param p1, "transactionID"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/tigo/mfsapp/model/MerchantPaymet;->TransactionID:Ljava/lang/String;

    .line 93
    return-void
.end method
