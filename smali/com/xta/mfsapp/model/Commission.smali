.class public Lcom/tigo/mfsapp/model/Commission;
.super Ljava/lang/Object;
.source "Commission.java"


# instance fields
.field private TransactionCommission:Ljava/lang/String;

.field private TransactionDate:Ljava/lang/String;

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
.method public getTransactionCommission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Commission;->TransactionCommission:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Commission;->TransactionDate:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Commission;->TransactionDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Commission;->TransactionID:Ljava/lang/String;

    return-object v0
.end method

.method public setTransactionCommission(Ljava/lang/String;)V
    .locals 0
    .param p1, "transactionCommission"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Commission;->TransactionCommission:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setTransactionDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "transactionDate"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Commission;->TransactionDate:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setTransactionDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "transactionDescription"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Commission;->TransactionDescription:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setTransactionID(Ljava/lang/String;)V
    .locals 0
    .param p1, "transactionID"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Commission;->TransactionID:Ljava/lang/String;

    .line 49
    return-void
.end method
