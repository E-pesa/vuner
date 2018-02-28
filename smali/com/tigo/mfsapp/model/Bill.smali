.class public Lcom/tigo/mfsapp/model/Bill;
.super Ljava/lang/Object;
.source "Bill.java"


# instance fields
.field private AmountToPay:F

.field private DueDate:Ljava/lang/String;

.field private DynamicParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private ReferenceNumber:Ljava/lang/String;

.field private dynParamsString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmountToPay()F
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/tigo/mfsapp/model/Bill;->AmountToPay:F

    return v0
.end method

.method public getDueDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Bill;->DueDate:Ljava/lang/String;

    return-object v0
.end method

.method public getDynParamsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Bill;->dynParamsString:Ljava/lang/String;

    return-object v0
.end method

.method public getDynamicParameters()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Bill;->DynamicParameters:Ljava/util/HashMap;

    return-object v0
.end method

.method public getReferenceNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Bill;->ReferenceNumber:Ljava/lang/String;

    return-object v0
.end method

.method public setAmountToPay(F)V
    .locals 0
    .param p1, "amountToPay"    # F

    .prologue
    .line 20
    iput p1, p0, Lcom/tigo/mfsapp/model/Bill;->AmountToPay:F

    .line 21
    return-void
.end method

.method public setDueDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "dueDate"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Bill;->DueDate:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setDynParamsString(Ljava/lang/String;)V
    .locals 0
    .param p1, "dynParamsString"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Bill;->dynParamsString:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setDynamicParameters(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "dynamicParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Float;>;"
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Bill;->DynamicParameters:Ljava/util/HashMap;

    .line 51
    return-void
.end method

.method public setReferenceNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "referenceNumber"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Bill;->ReferenceNumber:Ljava/lang/String;

    .line 41
    return-void
.end method
