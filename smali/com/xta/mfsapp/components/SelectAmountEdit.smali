.class public Lcom/tigo/mfsapp/components/SelectAmountEdit;
.super Landroid/widget/FrameLayout;
.source "SelectAmountEdit.java"


# static fields
.field private static final NORMAL_TEXT_COLOR:I


# instance fields
.field private adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private amountView:Landroid/widget/Spinner;

.field private leftImageView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x88

    .line 26
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/tigo/mfsapp/components/SelectAmountEdit;->NORMAL_TEXT_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/SelectAmountEdit;->init()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/SelectAmountEdit;->init()V

    .line 78
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

    .line 92
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/SelectAmountEdit;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 93
    .local v5, "resources":Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v6, v9, Landroid/util/DisplayMetrics;->density:F

    .line 94
    .local v6, "scale":F
    invoke-static {v5, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 96
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    .line 97
    .local v1, "bitmapConfig":Landroid/graphics/Bitmap$Config;
    if-nez v1, :cond_0

    .line 99
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 101
    :cond_0
    invoke-virtual {v0, v1, v10}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 103
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 104
    .local v3, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v10}, Landroid/graphics/Paint;-><init>(I)V

    .line 105
    .local v4, "paint":Landroid/graphics/Paint;
    invoke-virtual {v4, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    const/high16 v9, 0x41100000    # 9.0f

    mul-float/2addr v9, v6

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 108
    sget-object v9, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 109
    sget-object v9, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 111
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 113
    .local v2, "bounds":Landroid/graphics/Rect;
    const/4 v9, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v4, p2, v9, v10, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 114
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    div-int/lit8 v7, v9, 0x2

    .line 115
    .local v7, "x":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v10

    add-int/2addr v9, v10

    div-int/lit8 v8, v9, 0x2

    .line 117
    .local v8, "y":I
    int-to-float v9, v7

    int-to-float v10, v8

    invoke-virtual {v3, p2, v9, v10, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 119
    return-object v0
.end method

.method public getAmountView()Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tigo/mfsapp/components/SelectAmountEdit;->amountView:Landroid/widget/Spinner;

    return-object v0
.end method

.method public init()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 41
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/SelectAmountEdit;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0300b4

    invoke-virtual {v4, v5, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0d0271

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 42
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3, v9, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 43
    const v4, 0x7f0d0272

    invoke-virtual {p0, v4}, Lcom/tigo/mfsapp/components/SelectAmountEdit;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/tigo/mfsapp/components/SelectAmountEdit;->amountView:Landroid/widget/Spinner;

    .line 45
    const v4, 0x7f0d00af

    invoke-virtual {p0, v4}, Lcom/tigo/mfsapp/components/SelectAmountEdit;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/tigo/mfsapp/components/SelectAmountEdit;->leftImageView:Landroid/widget/ImageView;

    .line 47
    sget v1, Lcom/tigo/mfsapp/components/SelectAmountEdit;->NORMAL_TEXT_COLOR:I

    .line 48
    .local v1, "color":I
    const v4, 0x7f020037

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/Parameters;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v1}, Lcom/tigo/mfsapp/components/SelectAmountEdit;->drawTextToBitmap(ILjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 49
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/tigo/mfsapp/components/SelectAmountEdit;->leftImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 51
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/tigo/mfsapp/components/SelectAmountEdit;->setVisibility(I)V

    .line 53
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/SelectAmountEdit;->isInEditMode()Z

    move-result v4

    if-nez v4, :cond_0

    .line 55
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Parameters;->getTopUpAmountValues()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Parameters;->getTopUpAmountValues()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 58
    invoke-virtual {p0, v9}, Lcom/tigo/mfsapp/components/SelectAmountEdit;->setVisibility(I)V

    .line 60
    const/4 v2, 0x0

    .line 62
    .local v2, "selection":I
    new-instance v4, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/SelectAmountEdit;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x109000a

    const v7, 0x1020014

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tigo/mfsapp/model/Parameters;->getTopUpAmountValues()Ljava/util/ArrayList;

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iput-object v4, p0, Lcom/tigo/mfsapp/components/SelectAmountEdit;->adapter:Landroid/widget/ArrayAdapter;

    .line 63
    iget-object v4, p0, Lcom/tigo/mfsapp/components/SelectAmountEdit;->adapter:Landroid/widget/ArrayAdapter;

    const v5, 0x1090009

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 65
    iget-object v4, p0, Lcom/tigo/mfsapp/components/SelectAmountEdit;->amountView:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/tigo/mfsapp/components/SelectAmountEdit;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 67
    const/4 v4, -0x1

    if-le v2, v4, :cond_0

    .line 68
    iget-object v4, p0, Lcom/tigo/mfsapp/components/SelectAmountEdit;->amountView:Landroid/widget/Spinner;

    invoke-virtual {v4, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 71
    .end local v2    # "selection":I
    :cond_0
    invoke-virtual {p0, v9, v9, v9, v9}, Lcom/tigo/mfsapp/components/SelectAmountEdit;->setPadding(IIII)V

    .line 72
    return-void
.end method

.method public setAmountView(Landroid/widget/Spinner;)V
    .locals 0
    .param p1, "amountView"    # Landroid/widget/Spinner;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/tigo/mfsapp/components/SelectAmountEdit;->amountView:Landroid/widget/Spinner;

    .line 88
    return-void
.end method
