.class public Lme/dm7/barcodescanner/zbar/ZBarScannerView;
.super Lme/dm7/barcodescanner/core/BarcodeScannerView;
.source "ZBarScannerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/dm7/barcodescanner/zbar/ZBarScannerView$ResultHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ZBarScannerView"


# instance fields
.field private mFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lme/dm7/barcodescanner/zbar/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private mResultHandler:Lme/dm7/barcodescanner/zbar/ZBarScannerView$ResultHandler;

.field private mScanner:Lnet/sourceforge/zbar/ImageScanner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "iconv"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lme/dm7/barcodescanner/core/BarcodeScannerView;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-virtual {p0}, Lme/dm7/barcodescanner/zbar/ZBarScannerView;->setupScanner()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lme/dm7/barcodescanner/core/BarcodeScannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    invoke-virtual {p0}, Lme/dm7/barcodescanner/zbar/ZBarScannerView;->setupScanner()V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lme/dm7/barcodescanner/zbar/ZBarScannerView;)Lme/dm7/barcodescanner/zbar/ZBarScannerView$ResultHandler;
    .locals 1
    .param p0, "x0"    # Lme/dm7/barcodescanner/zbar/ZBarScannerView;

    .prologue
    .line 25
    iget-object v0, p0, Lme/dm7/barcodescanner/zbar/ZBarScannerView;->mResultHandler:Lme/dm7/barcodescanner/zbar/ZBarScannerView$ResultHandler;

    return-object v0
.end method

.method static synthetic access$002(Lme/dm7/barcodescanner/zbar/ZBarScannerView;Lme/dm7/barcodescanner/zbar/ZBarScannerView$ResultHandler;)Lme/dm7/barcodescanner/zbar/ZBarScannerView$ResultHandler;
    .locals 0
    .param p0, "x0"    # Lme/dm7/barcodescanner/zbar/ZBarScannerView;
    .param p1, "x1"    # Lme/dm7/barcodescanner/zbar/ZBarScannerView$ResultHandler;

    .prologue
    .line 25
    iput-object p1, p0, Lme/dm7/barcodescanner/zbar/ZBarScannerView;->mResultHandler:Lme/dm7/barcodescanner/zbar/ZBarScannerView$ResultHandler;

    return-object p1
.end method


# virtual methods
.method public getFormats()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lme/dm7/barcodescanner/zbar/BarcodeFormat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lme/dm7/barcodescanner/zbar/ZBarScannerView;->mFormats:Ljava/util/List;

    if-nez v0, :cond_0

    .line 61
    sget-object v0, Lme/dm7/barcodescanner/zbar/BarcodeFormat;->ALL_FORMATS:Ljava/util/List;

    .line 63
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lme/dm7/barcodescanner/zbar/ZBarScannerView;->mFormats:Ljava/util/List;

    goto :goto_0
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 21
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 79
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/dm7/barcodescanner/zbar/ZBarScannerView;->mResultHandler:Lme/dm7/barcodescanner/zbar/ZBarScannerView$ResultHandler;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    .line 150
    :goto_0
    return-void

    .line 84
    :cond_0
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    .line 85
    .local v7, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v11

    .line 86
    .local v11, "size":Landroid/hardware/Camera$Size;
    iget v0, v11, Landroid/hardware/Camera$Size;->width:I

    move/from16 v16, v0

    .line 87
    .local v16, "width":I
    iget v5, v11, Landroid/hardware/Camera$Size;->height:I

    .line 89
    .local v5, "height":I
    invoke-virtual/range {p0 .. p0}, Lme/dm7/barcodescanner/zbar/ZBarScannerView;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lme/dm7/barcodescanner/core/DisplayUtils;->getScreenOrientation(Landroid/content/Context;)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 90
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v10, v0, [B

    .line 91
    .local v10, "rotatedData":[B
    const/16 v18, 0x0

    .local v18, "y":I
    :goto_1
    move/from16 v0, v18

    if-ge v0, v5, :cond_2

    .line 92
    const/16 v17, 0x0

    .local v17, "x":I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_1

    .line 93
    mul-int v19, v17, v5

    add-int v19, v19, v5

    sub-int v19, v19, v18

    add-int/lit8 v19, v19, -0x1

    mul-int v20, v18, v16

    add-int v20, v20, v17

    aget-byte v20, p1, v20

    aput-byte v20, v10, v19

    .line 92
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 91
    :cond_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 95
    .end local v17    # "x":I
    :cond_2
    move/from16 v15, v16

    .line 96
    .local v15, "tmp":I
    move/from16 v16, v5

    .line 97
    move v5, v15

    .line 98
    move-object/from16 p1, v10

    .line 101
    .end local v10    # "rotatedData":[B
    .end local v15    # "tmp":I
    .end local v18    # "y":I
    :cond_3
    new-instance v2, Lnet/sourceforge/zbar/Image;

    const-string v19, "Y800"

    move/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v2, v0, v5, v1}, Lnet/sourceforge/zbar/Image;-><init>(IILjava/lang/String;)V

    .line 102
    .local v2, "barcode":Lnet/sourceforge/zbar/Image;
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lnet/sourceforge/zbar/Image;->setData([B)V

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/dm7/barcodescanner/zbar/ZBarScannerView;->mScanner:Lnet/sourceforge/zbar/ImageScanner;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lnet/sourceforge/zbar/ImageScanner;->scanImage(Lnet/sourceforge/zbar/Image;)I

    move-result v9

    .line 106
    .local v9, "result":I
    if-eqz v9, :cond_7

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/dm7/barcodescanner/zbar/ZBarScannerView;->mScanner:Lnet/sourceforge/zbar/ImageScanner;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lnet/sourceforge/zbar/ImageScanner;->getResults()Lnet/sourceforge/zbar/SymbolSet;

    move-result-object v14

    .line 108
    .local v14, "syms":Lnet/sourceforge/zbar/SymbolSet;
    new-instance v8, Lme/dm7/barcodescanner/zbar/Result;

    invoke-direct {v8}, Lme/dm7/barcodescanner/zbar/Result;-><init>()V

    .line 109
    .local v8, "rawResult":Lme/dm7/barcodescanner/zbar/Result;
    invoke-virtual {v14}, Lnet/sourceforge/zbar/SymbolSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lnet/sourceforge/zbar/Symbol;

    .line 115
    .local v12, "sym":Lnet/sourceforge/zbar/Symbol;
    sget v19, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v20, 0x13

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_6

    .line 116
    new-instance v13, Ljava/lang/String;

    invoke-virtual {v12}, Lnet/sourceforge/zbar/Symbol;->getDataBytes()[B

    move-result-object v19

    sget-object v20, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v13, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 120
    .local v13, "symData":Ljava/lang/String;
    :goto_3
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_4

    .line 121
    invoke-virtual {v8, v13}, Lme/dm7/barcodescanner/zbar/Result;->setContents(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v12}, Lnet/sourceforge/zbar/Symbol;->getType()I

    move-result v19

    invoke-static/range {v19 .. v19}, Lme/dm7/barcodescanner/zbar/BarcodeFormat;->getFormatById(I)Lme/dm7/barcodescanner/zbar/BarcodeFormat;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lme/dm7/barcodescanner/zbar/Result;->setBarcodeFormat(Lme/dm7/barcodescanner/zbar/BarcodeFormat;)V

    .line 127
    .end local v12    # "sym":Lnet/sourceforge/zbar/Symbol;
    .end local v13    # "symData":Ljava/lang/String;
    :cond_5
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 128
    .local v4, "handler":Landroid/os/Handler;
    new-instance v19, Lme/dm7/barcodescanner/zbar/ZBarScannerView$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Lme/dm7/barcodescanner/zbar/ZBarScannerView$1;-><init>(Lme/dm7/barcodescanner/zbar/ZBarScannerView;Lme/dm7/barcodescanner/zbar/Result;)V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 146
    .end local v2    # "barcode":Lnet/sourceforge/zbar/Image;
    .end local v4    # "handler":Landroid/os/Handler;
    .end local v5    # "height":I
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "parameters":Landroid/hardware/Camera$Parameters;
    .end local v8    # "rawResult":Lme/dm7/barcodescanner/zbar/Result;
    .end local v9    # "result":I
    .end local v11    # "size":Landroid/hardware/Camera$Size;
    .end local v14    # "syms":Lnet/sourceforge/zbar/SymbolSet;
    .end local v16    # "width":I
    :catch_0
    move-exception v3

    .line 148
    .local v3, "e":Ljava/lang/RuntimeException;
    const-string v19, "ZBarScannerView"

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 118
    .end local v3    # "e":Ljava/lang/RuntimeException;
    .restart local v2    # "barcode":Lnet/sourceforge/zbar/Image;
    .restart local v5    # "height":I
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v7    # "parameters":Landroid/hardware/Camera$Parameters;
    .restart local v8    # "rawResult":Lme/dm7/barcodescanner/zbar/Result;
    .restart local v9    # "result":I
    .restart local v11    # "size":Landroid/hardware/Camera$Size;
    .restart local v12    # "sym":Lnet/sourceforge/zbar/Symbol;
    .restart local v14    # "syms":Lnet/sourceforge/zbar/SymbolSet;
    .restart local v16    # "width":I
    :cond_6
    :try_start_1
    invoke-virtual {v12}, Lnet/sourceforge/zbar/Symbol;->getData()Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "symData":Ljava/lang/String;
    goto :goto_3

    .line 144
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "rawResult":Lme/dm7/barcodescanner/zbar/Result;
    .end local v12    # "sym":Lnet/sourceforge/zbar/Symbol;
    .end local v13    # "symData":Ljava/lang/String;
    .end local v14    # "syms":Lnet/sourceforge/zbar/SymbolSet;
    :cond_7
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public resumeCameraPreview(Lme/dm7/barcodescanner/zbar/ZBarScannerView$ResultHandler;)V
    .locals 0
    .param p1, "resultHandler"    # Lme/dm7/barcodescanner/zbar/ZBarScannerView$ResultHandler;

    .prologue
    .line 153
    iput-object p1, p0, Lme/dm7/barcodescanner/zbar/ZBarScannerView;->mResultHandler:Lme/dm7/barcodescanner/zbar/ZBarScannerView$ResultHandler;

    .line 154
    invoke-super {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->resumeCameraPreview()V

    .line 155
    return-void
.end method

.method public setFormats(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lme/dm7/barcodescanner/zbar/BarcodeFormat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "formats":Ljava/util/List;, "Ljava/util/List<Lme/dm7/barcodescanner/zbar/BarcodeFormat;>;"
    iput-object p1, p0, Lme/dm7/barcodescanner/zbar/ZBarScannerView;->mFormats:Ljava/util/List;

    .line 52
    invoke-virtual {p0}, Lme/dm7/barcodescanner/zbar/ZBarScannerView;->setupScanner()V

    .line 53
    return-void
.end method

.method public setResultHandler(Lme/dm7/barcodescanner/zbar/ZBarScannerView$ResultHandler;)V
    .locals 0
    .param p1, "resultHandler"    # Lme/dm7/barcodescanner/zbar/ZBarScannerView$ResultHandler;

    .prologue
    .line 56
    iput-object p1, p0, Lme/dm7/barcodescanner/zbar/ZBarScannerView;->mResultHandler:Lme/dm7/barcodescanner/zbar/ZBarScannerView$ResultHandler;

    .line 57
    return-void
.end method

.method public setupScanner()V
    .locals 6

    .prologue
    const/4 v4, 0x3

    const/4 v5, 0x0

    .line 67
    new-instance v2, Lnet/sourceforge/zbar/ImageScanner;

    invoke-direct {v2}, Lnet/sourceforge/zbar/ImageScanner;-><init>()V

    iput-object v2, p0, Lme/dm7/barcodescanner/zbar/ZBarScannerView;->mScanner:Lnet/sourceforge/zbar/ImageScanner;

    .line 68
    iget-object v2, p0, Lme/dm7/barcodescanner/zbar/ZBarScannerView;->mScanner:Lnet/sourceforge/zbar/ImageScanner;

    const/16 v3, 0x100

    invoke-virtual {v2, v5, v3, v4}, Lnet/sourceforge/zbar/ImageScanner;->setConfig(III)V

    .line 69
    iget-object v2, p0, Lme/dm7/barcodescanner/zbar/ZBarScannerView;->mScanner:Lnet/sourceforge/zbar/ImageScanner;

    const/16 v3, 0x101

    invoke-virtual {v2, v5, v3, v4}, Lnet/sourceforge/zbar/ImageScanner;->setConfig(III)V

    .line 71
    iget-object v2, p0, Lme/dm7/barcodescanner/zbar/ZBarScannerView;->mScanner:Lnet/sourceforge/zbar/ImageScanner;

    invoke-virtual {v2, v5, v5, v5}, Lnet/sourceforge/zbar/ImageScanner;->setConfig(III)V

    .line 72
    invoke-virtual {p0}, Lme/dm7/barcodescanner/zbar/ZBarScannerView;->getFormats()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/dm7/barcodescanner/zbar/BarcodeFormat;

    .line 73
    .local v0, "format":Lme/dm7/barcodescanner/zbar/BarcodeFormat;
    iget-object v2, p0, Lme/dm7/barcodescanner/zbar/ZBarScannerView;->mScanner:Lnet/sourceforge/zbar/ImageScanner;

    invoke-virtual {v0}, Lme/dm7/barcodescanner/zbar/BarcodeFormat;->getId()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v5, v4}, Lnet/sourceforge/zbar/ImageScanner;->setConfig(III)V

    goto :goto_0

    .line 75
    .end local v0    # "format":Lme/dm7/barcodescanner/zbar/BarcodeFormat;
    :cond_0
    return-void
.end method
