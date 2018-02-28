.class public Lcom/tigo/mfsapp/model/MiniStatementInfo;
.super Ljava/lang/Object;
.source "MiniStatementInfo.java"


# instance fields
.field amount:Ljava/lang/String;

.field date:Ljava/lang/String;

.field fee:Ljava/lang/String;

.field from:Ljava/lang/String;

.field status:Ljava/lang/String;

.field to:Ljava/lang/String;

.field to_entity:Ljava/lang/String;

.field total:Ljava/lang/String;

.field transactionId:Ljava/lang/String;

.field type:Ljava/lang/String;

.field wallet:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/tigo/mfsapp/model/MiniStatementInfo;->from:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/tigo/mfsapp/model/MiniStatementInfo;->to:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/tigo/mfsapp/model/MiniStatementInfo;->amount:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/tigo/mfsapp/model/MiniStatementInfo;->fee:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/tigo/mfsapp/model/MiniStatementInfo;->total:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/tigo/mfsapp/model/MiniStatementInfo;->date:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/tigo/mfsapp/model/MiniStatementInfo;->wallet:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/tigo/mfsapp/model/MiniStatementInfo;->type:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public getAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tigo/mfsapp/model/MiniStatementInfo;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/tigo/mfsapp/model/MiniStatementInfo;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getFee()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/tigo/mfsapp/model/MiniStatementInfo;->fee:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tigo/mfsapp/model/MiniStatementInfo;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tigo/mfsapp/model/MiniStatementInfo;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/tigo/mfsapp/model/MiniStatementInfo;->to:Ljava/lang/String;

    return-object v0
.end method

.method public getTo_entity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tigo/mfsapp/model/MiniStatementInfo;->to_entity:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/tigo/mfsapp/model/MiniStatementInfo;->total:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/tigo/mfsapp/model/MiniStatementInfo;->transactionId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/tigo/mfsapp/model/MiniStatementInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getWallet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/tigo/mfsapp/model/MiniStatementInfo;->wallet:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(Ljava/lang/String;)V
    .locals 0
    .param p1, "amount"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/tigo/mfsapp/model/MiniStatementInfo;->amount:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/tigo/mfsapp/model/MiniStatementInfo;->date:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setFee(Ljava/lang/String;)V
    .locals 0
    .param p1, "fee"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/tigo/mfsapp/model/MiniStatementInfo;->fee:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/tigo/mfsapp/model/MiniStatementInfo;->from:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/tigo/mfsapp/model/MiniStatementInfo;->status:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setTo(Ljava/lang/String;)V
    .locals 0
    .param p1, "to"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/tigo/mfsapp/model/MiniStatementInfo;->to:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setTo_entity(Ljava/lang/String;)V
    .locals 0
    .param p1, "to_entity"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/tigo/mfsapp/model/MiniStatementInfo;->to_entity:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setTotal(Ljava/lang/String;)V
    .locals 0
    .param p1, "total"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/tigo/mfsapp/model/MiniStatementInfo;->total:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setTransactionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "transactionId"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/tigo/mfsapp/model/MiniStatementInfo;->transactionId:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/tigo/mfsapp/model/MiniStatementInfo;->type:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setWallet(Ljava/lang/String;)V
    .locals 0
    .param p1, "wallet"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/tigo/mfsapp/model/MiniStatementInfo;->wallet:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/tigo/mfsapp/model/MiniStatementInfo;->to:Ljava/lang/String;

    return-object v0
.end method
