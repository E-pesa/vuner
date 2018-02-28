.class public Lorg/spongycastle/crypto/params/NTRUEncryptionKeyParameters;
.super Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
.source "NTRUEncryptionKeyParameters.java"


# instance fields
.field protected final params:Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;


# direct methods
.method public constructor <init>(ZLorg/spongycastle/crypto/params/NTRUEncryptionParameters;)V
    .locals 0
    .param p1, "privateKey"    # Z
    .param p2, "params"    # Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 11
    iput-object p2, p0, Lorg/spongycastle/crypto/params/NTRUEncryptionKeyParameters;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;

    .line 12
    return-void
.end method


# virtual methods
.method public getParameters()Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lorg/spongycastle/crypto/params/NTRUEncryptionKeyParameters;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;

    return-object v0
.end method
