.class public interface abstract Lcom/tigo/mfsapp/utils/EncryptionUtil$GenerateKeyResult;
.super Ljava/lang/Object;
.source "EncryptionUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/utils/EncryptionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GenerateKeyResult"
.end annotation


# virtual methods
.method public abstract onFail()V
.end method

.method public abstract onSuccess(Ljavax/crypto/SecretKey;)V
.end method
