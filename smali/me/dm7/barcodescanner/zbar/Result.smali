.class public Lme/dm7/barcodescanner/zbar/Result;
.super Ljava/lang/Object;
.source "Result.java"


# instance fields
.field private mBarcodeFormat:Lme/dm7/barcodescanner/zbar/BarcodeFormat;

.field private mContents:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBarcodeFormat()Lme/dm7/barcodescanner/zbar/BarcodeFormat;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lme/dm7/barcodescanner/zbar/Result;->mBarcodeFormat:Lme/dm7/barcodescanner/zbar/BarcodeFormat;

    return-object v0
.end method

.method public getContents()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lme/dm7/barcodescanner/zbar/Result;->mContents:Ljava/lang/String;

    return-object v0
.end method

.method public setBarcodeFormat(Lme/dm7/barcodescanner/zbar/BarcodeFormat;)V
    .locals 0
    .param p1, "format"    # Lme/dm7/barcodescanner/zbar/BarcodeFormat;

    .prologue
    .line 12
    iput-object p1, p0, Lme/dm7/barcodescanner/zbar/Result;->mBarcodeFormat:Lme/dm7/barcodescanner/zbar/BarcodeFormat;

    .line 13
    return-void
.end method

.method public setContents(Ljava/lang/String;)V
    .locals 0
    .param p1, "contents"    # Ljava/lang/String;

    .prologue
    .line 8
    iput-object p1, p0, Lme/dm7/barcodescanner/zbar/Result;->mContents:Ljava/lang/String;

    .line 9
    return-void
.end method
