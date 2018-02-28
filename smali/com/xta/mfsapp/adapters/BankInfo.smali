.class public Lcom/tigo/mfsapp/adapters/BankInfo;
.super Ljava/lang/Object;
.source "BankInfo.java"


# instance fields
.field private BID:Ljava/lang/String;

.field private BN:Ljava/lang/String;

.field private LIN:Ljava/lang/String;

.field private RNHIN:Ljava/lang/String;

.field private accountNumber:Ljava/lang/String;

.field private amount:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private isFavorite:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "BN"    # Ljava/lang/String;
    .param p2, "BID"    # Ljava/lang/String;
    .param p3, "LIN"    # Ljava/lang/String;
    .param p4, "RNHIN"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/adapters/BankInfo;->isFavorite:Ljava/lang/Boolean;

    .line 19
    iput-object p1, p0, Lcom/tigo/mfsapp/adapters/BankInfo;->BN:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/tigo/mfsapp/adapters/BankInfo;->BID:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/tigo/mfsapp/adapters/BankInfo;->LIN:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/tigo/mfsapp/adapters/BankInfo;->RNHIN:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 108
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 109
    .local v0, "builder":Lcom/google/gson/Gson;
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "json":Ljava/lang/String;
    const-class v2, Lcom/tigo/mfsapp/adapters/BankInfo;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public getAccountNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/tigo/mfsapp/adapters/BankInfo;->accountNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/tigo/mfsapp/adapters/BankInfo;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public getBID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tigo/mfsapp/adapters/BankInfo;->BID:Ljava/lang/String;

    return-object v0
.end method

.method public getBN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tigo/mfsapp/adapters/BankInfo;->BN:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/tigo/mfsapp/adapters/BankInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getIsFavorite()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tigo/mfsapp/adapters/BankInfo;->isFavorite:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLIN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tigo/mfsapp/adapters/BankInfo;->LIN:Ljava/lang/String;

    return-object v0
.end method

.method public getRNHIN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tigo/mfsapp/adapters/BankInfo;->RNHIN:Ljava/lang/String;

    return-object v0
.end method

.method public setAccountNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountNumber"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/tigo/mfsapp/adapters/BankInfo;->accountNumber:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setAmount(Ljava/lang/String;)V
    .locals 0
    .param p1, "amount"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/tigo/mfsapp/adapters/BankInfo;->amount:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setBID(Ljava/lang/String;)V
    .locals 0
    .param p1, "bID"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/tigo/mfsapp/adapters/BankInfo;->BID:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setBN(Ljava/lang/String;)V
    .locals 0
    .param p1, "bN"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/tigo/mfsapp/adapters/BankInfo;->BN:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/tigo/mfsapp/adapters/BankInfo;->description:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setIsFavorite(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isF"    # Ljava/lang/Boolean;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/tigo/mfsapp/adapters/BankInfo;->isFavorite:Ljava/lang/Boolean;

    .line 93
    return-void
.end method

.method public setLIN(Ljava/lang/String;)V
    .locals 0
    .param p1, "lIN"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/tigo/mfsapp/adapters/BankInfo;->LIN:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setRNHIN(Ljava/lang/String;)V
    .locals 0
    .param p1, "rNHIN"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/tigo/mfsapp/adapters/BankInfo;->RNHIN:Ljava/lang/String;

    .line 53
    return-void
.end method
