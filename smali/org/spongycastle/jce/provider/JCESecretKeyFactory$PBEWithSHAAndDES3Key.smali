.class public Lorg/spongycastle/jce/provider/JCESecretKeyFactory$PBEWithSHAAndDES3Key;
.super Lorg/spongycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;
.source "JCESecretKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/JCESecretKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithSHAAndDES3Key"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    .line 335
    const-string v1, "PBEwithSHAandDES3Key-CBC"

    sget-object v2, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd3_KeyTripleDES_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const/4 v4, 0x2

    const/16 v6, 0xc0

    const/16 v7, 0x40

    move-object v0, p0

    move v5, v3

    invoke-direct/range {v0 .. v7}, Lorg/spongycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;-><init>(Ljava/lang/String;Lorg/spongycastle/asn1/DERObjectIdentifier;ZIIII)V

    .line 336
    return-void
.end method