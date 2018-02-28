.class public Lcom/tigo/mfsapp/banktranfer/BankTransferFavorite;
.super Ljava/lang/Object;
.source "BankTransferFavorite.java"

# interfaces
.implements Lcom/tigo/mfsapp/utils/EncryptedStorge$Encryptable;


# static fields
.field public static final KEY_BANK_TRANSFER_FAVORITE:Ljava/lang/String; = "BANK_TRANSFER_FAVORITE"


# instance fields
.field private final BID:Ljava/lang/String;

.field private final BN:Ljava/lang/String;

.field private final accountNumber:Ljava/lang/String;

.field private final amount:Ljava/lang/String;

.field private final description:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "BN"    # Ljava/lang/String;
    .param p2, "BID"    # Ljava/lang/String;
    .param p3, "accountNumber"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "amount"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/tigo/mfsapp/banktranfer/BankTransferFavorite;->BN:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/tigo/mfsapp/banktranfer/BankTransferFavorite;->BID:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/tigo/mfsapp/banktranfer/BankTransferFavorite;->accountNumber:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/tigo/mfsapp/banktranfer/BankTransferFavorite;->description:Ljava/lang/String;

    .line 23
    iput-object p5, p0, Lcom/tigo/mfsapp/banktranfer/BankTransferFavorite;->amount:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public getAccountNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tigo/mfsapp/banktranfer/BankTransferFavorite;->accountNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/tigo/mfsapp/banktranfer/BankTransferFavorite;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public getBID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tigo/mfsapp/banktranfer/BankTransferFavorite;->BID:Ljava/lang/String;

    return-object v0
.end method

.method public getBN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/tigo/mfsapp/banktranfer/BankTransferFavorite;->BN:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tigo/mfsapp/banktranfer/BankTransferFavorite;->description:Ljava/lang/String;

    return-object v0
.end method

.method public isEqualToBankInfo(Lcom/tigo/mfsapp/adapters/BankInfo;)Z
    .locals 2
    .param p1, "bankInfo"    # Lcom/tigo/mfsapp/adapters/BankInfo;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tigo/mfsapp/banktranfer/BankTransferFavorite;->BID:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tigo/mfsapp/adapters/BankInfo;->getBID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tigo/mfsapp/banktranfer/BankTransferFavorite;->accountNumber:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tigo/mfsapp/adapters/BankInfo;->getAccountNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tigo/mfsapp/banktranfer/BankTransferFavorite;->amount:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tigo/mfsapp/adapters/BankInfo;->getAmount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tigo/mfsapp/banktranfer/BankTransferFavorite;->description:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tigo/mfsapp/adapters/BankInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toJson()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 60
    .local v1, "parser":Lcom/google/gson/Gson;
    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "json":Ljava/lang/String;
    return-object v0
.end method
