.class public Lcom/tigo/mfsapp/model/SendInternationalRemittance;
.super Ljava/lang/Object;
.source "SendInternationalRemittance.java"


# instance fields
.field private AmountForeignCurrency:Ljava/lang/String;

.field private AmountLocalCurrency:Ljava/lang/String;

.field private ReceiverCountry:Ljava/lang/String;

.field private ReceiverID:Ljava/lang/String;

.field private ReceiverName:Ljava/lang/String;

.field private TotalLocalCurrency:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmountForeignCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tigo/mfsapp/model/SendInternationalRemittance;->AmountForeignCurrency:Ljava/lang/String;

    return-object v0
.end method

.method public getAmountLocalCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tigo/mfsapp/model/SendInternationalRemittance;->AmountLocalCurrency:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tigo/mfsapp/model/SendInternationalRemittance;->ReceiverCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tigo/mfsapp/model/SendInternationalRemittance;->ReceiverID:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/tigo/mfsapp/model/SendInternationalRemittance;->ReceiverName:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalLocalCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tigo/mfsapp/model/SendInternationalRemittance;->TotalLocalCurrency:Ljava/lang/String;

    return-object v0
.end method

.method public setAmountForeignCurrency(Ljava/lang/String;)V
    .locals 0
    .param p1, "amountForeignCurrency"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/tigo/mfsapp/model/SendInternationalRemittance;->AmountForeignCurrency:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setAmountLocalCurrency(Ljava/lang/String;)V
    .locals 0
    .param p1, "amountLocalCurrency"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/tigo/mfsapp/model/SendInternationalRemittance;->AmountLocalCurrency:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setReceiverCountry(Ljava/lang/String;)V
    .locals 0
    .param p1, "receiverCountry"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/tigo/mfsapp/model/SendInternationalRemittance;->ReceiverCountry:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setReceiverID(Ljava/lang/String;)V
    .locals 0
    .param p1, "receiverID"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/tigo/mfsapp/model/SendInternationalRemittance;->ReceiverID:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setReceiverName(Ljava/lang/String;)V
    .locals 0
    .param p1, "receiverName"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/tigo/mfsapp/model/SendInternationalRemittance;->ReceiverName:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setTotalLocalCurrency(Ljava/lang/String;)V
    .locals 0
    .param p1, "totalLocalCurrency"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/tigo/mfsapp/model/SendInternationalRemittance;->TotalLocalCurrency:Ljava/lang/String;

    .line 70
    return-void
.end method
