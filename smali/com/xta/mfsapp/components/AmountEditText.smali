.class public Lcom/tigo/mfsapp/components/AmountEditText;
.super Lcom/tigo/mfsapp/components/CustomEditText;
.source "AmountEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/components/AmountEditText$CurrencyFormatInputFilter;
    }
.end annotation


# static fields
.field private static final ERROR_TEXT_COLOR:I

.field private static final NORMAL_TEXT_COLOR:I


# instance fields
.field private final typingColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/16 v0, 0x88

    .line 46
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/tigo/mfsapp/components/AmountEditText;->NORMAL_TEXT_COLOR:I

    .line 47
    const/16 v0, 0xff

    invoke-static {v0, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/tigo/mfsapp/components/AmountEditText;->ERROR_TEXT_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/tigo/mfsapp/components/CustomEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/AmountEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/tigo/mfsapp/components/AmountEditText;->typingColor:I

    .line 55
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/AmountEditText;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/AmountEditText;->setNormalConfiguration()V

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/AmountEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/16 v1, 0x2002

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 59
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/AmountEditText;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/AmountEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-array v1, v4, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Lcom/tigo/mfsapp/components/AmountEditText$CurrencyFormatInputFilter;

    invoke-direct {v3, p0}, Lcom/tigo/mfsapp/components/AmountEditText$CurrencyFormatInputFilter;-><init>(Lcom/tigo/mfsapp/components/AmountEditText;)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 60
    :cond_1
    invoke-virtual {p0, v4}, Lcom/tigo/mfsapp/components/AmountEditText;->setAutoTrimFeature(Z)V

    .line 61
    invoke-virtual {p0, v4}, Lcom/tigo/mfsapp/components/AmountEditText;->setAutoTrimFeature(Z)V

    .line 62
    return-void
.end method


# virtual methods
.method public drawTextToBitmap(ILjava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "bitmapResource"    # I
    .param p2, "gText"    # Ljava/lang/String;
    .param p3, "color"    # I

    .prologue
    const/4 v10, 0x1

    .line 90
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/AmountEditText;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 91
    .local v5, "resources":Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v6, v9, Landroid/util/DisplayMetrics;->density:F

    .line 92
    .local v6, "scale":F
    invoke-static {v5, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 94
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    .line 95
    .local v1, "bitmapConfig":Landroid/graphics/Bitmap$Config;
    if-nez v1, :cond_0

    .line 97
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 99
    :cond_0
    invoke-virtual {v0, v1, v10}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 101
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 102
    .local v3, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v10}, Landroid/graphics/Paint;-><init>(I)V

    .line 103
    .local v4, "paint":Landroid/graphics/Paint;
    invoke-virtual {v4, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    const/high16 v9, 0x41100000    # 9.0f

    mul-float/2addr v9, v6

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 106
    sget-object v9, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 107
    sget-object v9, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 109
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 111
    .local v2, "bounds":Landroid/graphics/Rect;
    const/4 v9, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v4, p2, v9, v10, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 112
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    div-int/lit8 v7, v9, 0x2

    .line 113
    .local v7, "x":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v10

    add-int/2addr v9, v10

    div-int/lit8 v8, v9, 0x2

    .line 115
    .local v8, "y":I
    int-to-float v9, v7

    int-to-float v10, v8

    invoke-virtual {v3, p2, v9, v10, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 117
    return-object v0
.end method

.method public setErrorConfiguration(II)V
    .locals 4
    .param p1, "errorHintText"    # I
    .param p2, "errorImage"    # I

    .prologue
    .line 83
    invoke-super {p0, p1, p2}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    .line 84
    const v1, 0x7f020038

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Parameters;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/tigo/mfsapp/components/AmountEditText;->ERROR_TEXT_COLOR:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/tigo/mfsapp/components/AmountEditText;->drawTextToBitmap(ILjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 85
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/AmountEditText;->getLeftImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 86
    return-void
.end method

.method public setNormalConfiguration()V
    .locals 4

    .prologue
    .line 70
    invoke-super {p0}, Lcom/tigo/mfsapp/components/CustomEditText;->setNormalConfiguration()V

    .line 72
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/AmountEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 73
    iget v1, p0, Lcom/tigo/mfsapp/components/AmountEditText;->typingColor:I

    .line 76
    .local v1, "color":I
    :goto_0
    const v2, 0x7f020037

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Parameters;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v1}, Lcom/tigo/mfsapp/components/AmountEditText;->drawTextToBitmap(ILjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 77
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/AmountEditText;->getLeftImageView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 78
    return-void

    .line 75
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "color":I
    :cond_0
    sget v1, Lcom/tigo/mfsapp/components/AmountEditText;->NORMAL_TEXT_COLOR:I

    .restart local v1    # "color":I
    goto :goto_0
.end method
