.class public Lcom/tigo/mfsapp/billpayment/BillPaymentFavorite;
.super Ljava/lang/Object;
.source "BillPaymentFavorite.java"

# interfaces
.implements Lcom/tigo/mfsapp/utils/EncryptedStorge$Encryptable;


# static fields
.field public static final KEY_BILL_PAYMENT_FAVORITE:Ljava/lang/String; = "BILL_PAYMENT_FAVORITE"
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "KEY_BILL_PAYMENT_FAVORITE"
    .end annotation
.end field


# instance fields
.field private final amount:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "amount"
    .end annotation
.end field

.field private final companyId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "companyId"
    .end annotation
.end field

.field private final description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field private final referenceNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "referenceNumber"
    .end annotation
.end field

.field private final referenceType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "referenceType"
    .end annotation
.end field

.field private final transactionDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "transactionDescription"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "companyId"    # Ljava/lang/String;
    .param p2, "referenceType"    # Ljava/lang/String;
    .param p3, "referenceNumber"    # Ljava/lang/String;
    .param p4, "amount"    # Ljava/lang/String;
    .param p5, "description"    # Ljava/lang/String;
    .param p6, "transactionDescription"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentFavorite;->companyId:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentFavorite;->referenceNumber:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentFavorite;->referenceType:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentFavorite;->amount:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentFavorite;->description:Ljava/lang/String;

    .line 32
    iput-object p6, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentFavorite;->transactionDescription:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public getAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentFavorite;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentFavorite;->companyId:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentFavorite;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getReferenceNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentFavorite;->referenceNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getReferenceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentFavorite;->referenceType:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentFavorite;->transactionDescription:Ljava/lang/String;

    return-object v0
.end method

.method public toJson()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 69
    .local v1, "parser":Lcom/google/gson/Gson;
    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "json":Ljava/lang/String;
    return-object v0
.end method
