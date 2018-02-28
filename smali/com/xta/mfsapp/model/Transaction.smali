.class public Lcom/tigo/mfsapp/model/Transaction;
.super Ljava/lang/Object;
.source "Transaction.java"


# instance fields
.field private AgentCode:Ljava/lang/String;

.field private AgentName:Ljava/lang/String;

.field private Amount:F

.field private Date:Ljava/lang/String;

.field private Msisdn:Ljava/lang/String;

.field private TxnId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAgentCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Transaction;->AgentCode:Ljava/lang/String;

    return-object v0
.end method

.method public getAgentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Transaction;->AgentName:Ljava/lang/String;

    return-object v0
.end method

.method public getAmount()F
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/tigo/mfsapp/model/Transaction;->Amount:F

    return v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Transaction;->Date:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Transaction;->Msisdn:Ljava/lang/String;

    return-object v0
.end method

.method public getTxnId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Transaction;->TxnId:Ljava/lang/String;

    return-object v0
.end method

.method public setAgentCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "agentCode"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Transaction;->AgentCode:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setAgentName(Ljava/lang/String;)V
    .locals 0
    .param p1, "agentName"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Transaction;->AgentName:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setAmount(F)V
    .locals 0
    .param p1, "amount"    # F

    .prologue
    .line 30
    iput p1, p0, Lcom/tigo/mfsapp/model/Transaction;->Amount:F

    .line 31
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Transaction;->Date:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setMsisdn(Ljava/lang/String;)V
    .locals 0
    .param p1, "msisdn"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Transaction;->Msisdn:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setTxnId(Ljava/lang/String;)V
    .locals 0
    .param p1, "txnId"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Transaction;->TxnId:Ljava/lang/String;

    .line 21
    return-void
.end method
