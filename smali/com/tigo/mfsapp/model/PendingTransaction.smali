.class public Lcom/tigo/mfsapp/model/PendingTransaction;
.super Ljava/lang/Object;
.source "PendingTransaction.java"


# instance fields
.field private AgentCode:Ljava/lang/String;

.field private AgentName:Ljava/lang/String;

.field private Amount:Ljava/lang/String;

.field private Date:Ljava/lang/String;

.field private Msisdn:Ljava/lang/String;

.field private TxnId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "txnId"    # Ljava/lang/String;
    .param p2, "amount"    # Ljava/lang/String;
    .param p3, "msisdn"    # Ljava/lang/String;
    .param p4, "date"    # Ljava/lang/String;
    .param p5, "agentCode"    # Ljava/lang/String;
    .param p6, "agentName"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/tigo/mfsapp/model/PendingTransaction;->TxnId:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/tigo/mfsapp/model/PendingTransaction;->Amount:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/tigo/mfsapp/model/PendingTransaction;->Msisdn:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/tigo/mfsapp/model/PendingTransaction;->Date:Ljava/lang/String;

    .line 22
    iput-object p5, p0, Lcom/tigo/mfsapp/model/PendingTransaction;->AgentCode:Ljava/lang/String;

    .line 23
    iput-object p6, p0, Lcom/tigo/mfsapp/model/PendingTransaction;->AgentName:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public getAgentCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/tigo/mfsapp/model/PendingTransaction;->AgentCode:Ljava/lang/String;

    return-object v0
.end method

.method public getAgentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/tigo/mfsapp/model/PendingTransaction;->AgentName:Ljava/lang/String;

    return-object v0
.end method

.method public getAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tigo/mfsapp/model/PendingTransaction;->Amount:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tigo/mfsapp/model/PendingTransaction;->Date:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/tigo/mfsapp/model/PendingTransaction;->Msisdn:Ljava/lang/String;

    return-object v0
.end method

.method public getTxnId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/tigo/mfsapp/model/PendingTransaction;->TxnId:Ljava/lang/String;

    return-object v0
.end method

.method public setAgentCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "agentCode"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/tigo/mfsapp/model/PendingTransaction;->AgentCode:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setAgentName(Ljava/lang/String;)V
    .locals 0
    .param p1, "agentName"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/tigo/mfsapp/model/PendingTransaction;->AgentName:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setAmount(Ljava/lang/String;)V
    .locals 0
    .param p1, "amount"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/tigo/mfsapp/model/PendingTransaction;->Amount:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/tigo/mfsapp/model/PendingTransaction;->Date:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setMsisdn(Ljava/lang/String;)V
    .locals 0
    .param p1, "msisdn"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/tigo/mfsapp/model/PendingTransaction;->Msisdn:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setTxnId(Ljava/lang/String;)V
    .locals 0
    .param p1, "txnId"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/tigo/mfsapp/model/PendingTransaction;->TxnId:Ljava/lang/String;

    .line 34
    return-void
.end method
