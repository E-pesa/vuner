.class public Lcom/tigo/mfsapp/model/PendingVouchers;
.super Ljava/lang/Object;
.source "PendingVouchers.java"


# instance fields
.field private Amount:Ljava/lang/Float;

.field private RecipientLastName:Ljava/lang/String;

.field private RecipientMSISDN:Ljava/lang/String;

.field private RecipientName:Ljava/lang/String;

.field private VoucherDateTime:Ljava/lang/String;

.field private VoucherID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tigo/mfsapp/model/PendingVouchers;->Amount:Ljava/lang/Float;

    return-object v0
.end method

.method public getRecipientLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/tigo/mfsapp/model/PendingVouchers;->RecipientLastName:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientMSISDN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tigo/mfsapp/model/PendingVouchers;->RecipientMSISDN:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tigo/mfsapp/model/PendingVouchers;->RecipientName:Ljava/lang/String;

    return-object v0
.end method

.method public getVoucherDateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tigo/mfsapp/model/PendingVouchers;->VoucherDateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getVoucherID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/tigo/mfsapp/model/PendingVouchers;->VoucherID:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(Ljava/lang/Float;)V
    .locals 0
    .param p1, "amount"    # Ljava/lang/Float;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/tigo/mfsapp/model/PendingVouchers;->Amount:Ljava/lang/Float;

    .line 41
    return-void
.end method

.method public setRecipientLastName(Ljava/lang/String;)V
    .locals 0
    .param p1, "recipientLastName"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/tigo/mfsapp/model/PendingVouchers;->RecipientLastName:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setRecipientMSISDN(Ljava/lang/String;)V
    .locals 0
    .param p1, "recipientMSISDN"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/tigo/mfsapp/model/PendingVouchers;->RecipientMSISDN:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setRecipientName(Ljava/lang/String;)V
    .locals 0
    .param p1, "recipientName"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/tigo/mfsapp/model/PendingVouchers;->RecipientName:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setVoucherDateTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "voucherDateTime"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/tigo/mfsapp/model/PendingVouchers;->VoucherDateTime:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setVoucherID(Ljava/lang/String;)V
    .locals 0
    .param p1, "voucherID"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/tigo/mfsapp/model/PendingVouchers;->VoucherID:Ljava/lang/String;

    .line 21
    return-void
.end method
