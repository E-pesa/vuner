.class public Lcom/tigo/mfsapp/model/Bank;
.super Ljava/lang/Object;
.source "Bank.java"


# instance fields
.field private bankName:Ljava/lang/String;

.field private usddNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "bankName"    # Ljava/lang/String;
    .param p2, "usddNumber"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Bank;->bankName:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/tigo/mfsapp/model/Bank;->usddNumber:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getBankName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Bank;->bankName:Ljava/lang/String;

    return-object v0
.end method

.method public getUsddNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Bank;->usddNumber:Ljava/lang/String;

    return-object v0
.end method

.method public setBankName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bankName"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Bank;->bankName:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setUsddNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "usddNumber"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Bank;->usddNumber:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Bank;->bankName:Ljava/lang/String;

    return-object v0
.end method
