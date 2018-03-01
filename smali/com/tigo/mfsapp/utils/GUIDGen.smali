.class public Lcom/tigo/mfsapp/utils/GUIDGen;
.super Ljava/lang/Object;
.source "GUIDGen.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNew()Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x64

    .line 9
    const-string v2, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"

    .line 10
    .local v2, "kGUIDAlphabet":Ljava/lang/String;
    const/16 v3, 0x64

    .line 11
    .local v3, "kGUIDLength":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 12
    .local v0, "GUID":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/security/SecureRandom;

    invoke-direct {v6}, Ljava/security/SecureRandom;-><init>()V

    .line 13
    .local v6, "random":Ljava/security/SecureRandom;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v8, :cond_0

    .line 15
    const-string v7, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    .line 16
    .local v4, "maxNumber":I
    invoke-virtual {v6, v4}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v5

    .line 17
    .local v5, "randNum":I
    const-string v7, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"

    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 20
    .end local v4    # "maxNumber":I
    .end local v5    # "randNum":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method
