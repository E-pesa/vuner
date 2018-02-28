.class public Lcom/tigo/mfsapp/model/Payment;
.super Ljava/lang/Object;
.source "Payment.java"


# instance fields
.field private Amount:F

.field private CompanyID:Ljava/lang/String;

.field private DateTime:Ljava/lang/String;

.field private ReferenceNumber:Ljava/lang/String;

.field private TransactionID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()F
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/tigo/mfsapp/model/Payment;->Amount:F

    return v0
.end method

.method public getCompanyID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Payment;->CompanyID:Ljava/lang/String;

    return-object v0
.end method

.method public getDateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Payment;->DateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getReferenceNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Payment;->ReferenceNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Payment;->TransactionID:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(F)V
    .locals 0
    .param p1, "amount"    # F

    .prologue
    .line 59
    iput p1, p0, Lcom/tigo/mfsapp/model/Payment;->Amount:F

    .line 60
    return-void
.end method

.method public setCompanyID(Ljava/lang/String;)V
    .locals 0
    .param p1, "companyID"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Payment;->CompanyID:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setDateTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "dateTime"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Payment;->DateTime:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setReferenceNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "referenceNumber"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Payment;->ReferenceNumber:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setTransactionID(Ljava/lang/String;)V
    .locals 0
    .param p1, "transactionID"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Payment;->TransactionID:Ljava/lang/String;

    .line 30
    return-void
.end method
