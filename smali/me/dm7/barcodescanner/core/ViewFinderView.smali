.class public Lme/dm7/barcodescanner/core/ViewFinderView;
.super Landroid/view/View;
.source "ViewFinderView.java"

# interfaces
.implements Lme/dm7/barcodescanner/core/IViewFinder;


# static fields
.field private static final ANIMATION_DELAY:J = 0x50L

.field private static final LANDSCAPE_HEIGHT_RATIO:F = 0.625f

.field private static final LANDSCAPE_WIDTH_HEIGHT_RATIO:F = 1.4f

.field private static final MIN_DIMENSION_DIFF:I = 0x32

.field private static final POINT_SIZE:I = 0xa

.field private static final PORTRAIT_WIDTH_HEIGHT_RATIO:F = 0.75f

.field private static final PORTRAIT_WIDTH_RATIO:F = 0.75f

.field private static final SCANNER_ALPHA:[I

.field private static final SQUARE_DIMENSION_RATIO:F = 0.625f

.field private static final TAG:Ljava/lang/String; = "ViewFinderView"


# instance fields
.field protected mBorderLineLength:I

.field protected mBorderPaint:Landroid/graphics/Paint;

.field private final mDefaultBorderColor:I

.field private final mDefaultBorderLineLength:I

.field private final mDefaultBorderStrokeWidth:I

.field private final mDefaultLaserColor:I

.field private final mDefaultMaskColor:I

.field protected mFinderMaskPaint:Landroid/graphics/Paint;

.field private mFramingRect:Landroid/graphics/Rect;

.field protected mLaserPaint:Landroid/graphics/Paint;

.field protected mSquareViewFinder:Z

.field private scannerAlpha:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lme/dm7/barcodescanner/core/ViewFinderView;->SCANNER_ALPHA:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x40
        0x80
        0xc0
        0xff
        0xc0
        0x80
        0x40
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lme/dm7/barcodescanner/core/R$color;->viewfinder_laser:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mDefaultLaserColor:I

    .line 32
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lme/dm7/barcodescanner/core/R$color;->viewfinder_mask:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mDefaultMaskColor:I

    .line 33
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lme/dm7/barcodescanner/core/R$color;->viewfinder_border:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mDefaultBorderColor:I

    .line 34
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lme/dm7/barcodescanner/core/R$integer;->viewfinder_border_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mDefaultBorderStrokeWidth:I

    .line 35
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lme/dm7/barcodescanner/core/R$integer;->viewfinder_border_length:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mDefaultBorderLineLength:I

    .line 45
    invoke-direct {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->init()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lme/dm7/barcodescanner/core/R$color;->viewfinder_laser:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mDefaultLaserColor:I

    .line 32
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lme/dm7/barcodescanner/core/R$color;->viewfinder_mask:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mDefaultMaskColor:I

    .line 33
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lme/dm7/barcodescanner/core/R$color;->viewfinder_border:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mDefaultBorderColor:I

    .line 34
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lme/dm7/barcodescanner/core/R$integer;->viewfinder_border_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mDefaultBorderStrokeWidth:I

    .line 35
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lme/dm7/barcodescanner/core/R$integer;->viewfinder_border_length:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mDefaultBorderLineLength:I

    .line 50
    invoke-direct {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->init()V

    .line 51
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mLaserPaint:Landroid/graphics/Paint;

    .line 56
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mLaserPaint:Landroid/graphics/Paint;

    iget v1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mDefaultLaserColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mLaserPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mFinderMaskPaint:Landroid/graphics/Paint;

    .line 61
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mFinderMaskPaint:Landroid/graphics/Paint;

    iget v1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mDefaultMaskColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mBorderPaint:Landroid/graphics/Paint;

    .line 65
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mDefaultBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 67
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mDefaultBorderStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 69
    iget v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mDefaultBorderLineLength:I

    iput v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mBorderLineLength:I

    .line 70
    return-void
.end method


# virtual methods
.method public drawLaser(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 141
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v8

    .line 144
    .local v8, "framingRect":Landroid/graphics/Rect;
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mLaserPaint:Landroid/graphics/Paint;

    sget-object v1, Lme/dm7/barcodescanner/core/ViewFinderView;->SCANNER_ALPHA:[I

    iget v2, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->scannerAlpha:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 145
    iget v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->scannerAlpha:I

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lme/dm7/barcodescanner/core/ViewFinderView;->SCANNER_ALPHA:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->scannerAlpha:I

    .line 146
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, v8, Landroid/graphics/Rect;->top:I

    add-int v9, v0, v1

    .line 147
    .local v9, "middle":I
    iget v0, v8, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    add-int/lit8 v0, v9, -0x1

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    add-int/lit8 v0, v9, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mLaserPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 149
    const-wide/16 v2, 0x50

    iget v0, v8, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v0, -0xa

    iget v0, v8, Landroid/graphics/Rect;->top:I

    add-int/lit8 v5, v0, -0xa

    iget v0, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v6, v0, 0xa

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v7, v0, 0xa

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lme/dm7/barcodescanner/core/ViewFinderView;->postInvalidateDelayed(JIIII)V

    .line 154
    return-void
.end method

.method public drawViewFinderBorder(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 125
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v6

    .line 127
    .local v6, "framingRect":Landroid/graphics/Rect;
    iget v0, v6, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v1, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    iget v0, v6, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x1

    iget v4, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mBorderLineLength:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 128
    iget v0, v6, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v1, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    iget v0, v6, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x1

    iget v3, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mBorderLineLength:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    iget-object v5, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 130
    iget v0, v6, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v1, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v2, v0

    iget v0, v6, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    iget v4, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mBorderLineLength:I

    sub-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 131
    iget v0, v6, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v1, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v2, v0

    iget v0, v6, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x1

    iget v3, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mBorderLineLength:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 133
    iget v0, v6, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v1, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x1

    iget v4, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mBorderLineLength:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 134
    iget v0, v6, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v1, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    iget v3, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mBorderLineLength:I

    sub-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    iget-object v5, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 136
    iget v0, v6, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v1, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v2, v0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    iget v4, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mBorderLineLength:I

    sub-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 137
    iget v0, v6, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v1, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v2, v0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    iget v3, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mBorderLineLength:I

    sub-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 138
    return-void
.end method

.method public drawViewFinderMask(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 114
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v10

    .line 115
    .local v10, "width":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v9

    .line 116
    .local v9, "height":I
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v8

    .line 118
    .local v8, "framingRect":Landroid/graphics/Rect;
    int-to-float v3, v10

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget-object v5, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mFinderMaskPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 119
    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mFinderMaskPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 120
    iget v0, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    int-to-float v5, v10

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v6, v0

    iget-object v7, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mFinderMaskPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 121
    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v2, v0

    int-to-float v3, v10

    int-to-float v4, v9

    iget-object v5, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mFinderMaskPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 122
    return-void
.end method

.method public getFramingRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mFramingRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 104
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-virtual {p0, p1}, Lme/dm7/barcodescanner/core/ViewFinderView;->drawViewFinderMask(Landroid/graphics/Canvas;)V

    .line 109
    invoke-virtual {p0, p1}, Lme/dm7/barcodescanner/core/ViewFinderView;->drawViewFinderBorder(Landroid/graphics/Canvas;)V

    .line 110
    invoke-virtual {p0, p1}, Lme/dm7/barcodescanner/core/ViewFinderView;->drawLaser(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "xNew"    # I
    .param p2, "yNew"    # I
    .param p3, "xOld"    # I
    .param p4, "yOld"    # I

    .prologue
    .line 158
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->updateFramingRect()V

    .line 159
    return-void
.end method

.method public setBorderColor(I)V
    .locals 1
    .param p1, "borderColor"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    return-void
.end method

.method public setBorderLineLength(I)V
    .locals 0
    .param p1, "borderLineLength"    # I

    .prologue
    .line 85
    iput p1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mBorderLineLength:I

    .line 86
    return-void
.end method

.method public setBorderStrokeWidth(I)V
    .locals 2
    .param p1, "borderStrokeWidth"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mBorderPaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 83
    return-void
.end method

.method public setLaserColor(I)V
    .locals 1
    .param p1, "laserColor"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mLaserPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    return-void
.end method

.method public setMaskColor(I)V
    .locals 1
    .param p1, "maskColor"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mFinderMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    return-void
.end method

.method public setSquareViewFinder(Z)V
    .locals 0
    .param p1, "set"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mSquareViewFinder:Z

    .line 91
    return-void
.end method

.method public setupViewFinder()V
    .locals 0

    .prologue
    .line 94
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->updateFramingRect()V

    .line 95
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->invalidate()V

    .line 96
    return-void
.end method

.method public declared-synchronized updateFramingRect()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x3f400000    # 0.75f

    const/high16 v8, 0x3f200000    # 0.625f

    .line 162
    monitor-enter p0

    :try_start_0
    new-instance v4, Landroid/graphics/Point;

    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getHeight()I

    move-result v7

    invoke-direct {v4, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    .line 165
    .local v4, "viewResolution":Landroid/graphics/Point;
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lme/dm7/barcodescanner/core/DisplayUtils;->getScreenOrientation(Landroid/content/Context;)I

    move-result v2

    .line 167
    .local v2, "orientation":I
    iget-boolean v6, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mSquareViewFinder:Z

    if-eqz v6, :cond_3

    .line 168
    if-eq v2, v10, :cond_2

    .line 169
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    float-to-int v0, v6

    .line 170
    .local v0, "height":I
    move v5, v0

    .line 185
    .local v5, "width":I
    :goto_0
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getWidth()I

    move-result v6

    if-le v5, v6, :cond_0

    .line 186
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getWidth()I

    move-result v6

    add-int/lit8 v5, v6, -0x32

    .line 189
    :cond_0
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getHeight()I

    move-result v6

    if-le v0, v6, :cond_1

    .line 190
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getHeight()I

    move-result v6

    add-int/lit8 v0, v6, -0x32

    .line 193
    :cond_1
    iget v6, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v5

    div-int/lit8 v1, v6, 0x2

    .line 194
    .local v1, "leftOffset":I
    iget v6, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v0

    div-int/lit8 v3, v6, 0x2

    .line 195
    .local v3, "topOffset":I
    new-instance v6, Landroid/graphics/Rect;

    add-int v7, v1, v5

    add-int v8, v3, v0

    invoke-direct {v6, v1, v3, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v6, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mFramingRect:Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    monitor-exit p0

    return-void

    .line 172
    .end local v0    # "height":I
    .end local v1    # "leftOffset":I
    .end local v3    # "topOffset":I
    .end local v5    # "width":I
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    float-to-int v5, v6

    .line 173
    .restart local v5    # "width":I
    move v0, v5

    .restart local v0    # "height":I
    goto :goto_0

    .line 176
    .end local v0    # "height":I
    .end local v5    # "width":I
    :cond_3
    if-eq v2, v10, :cond_4

    .line 177
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    float-to-int v0, v6

    .line 178
    .restart local v0    # "height":I
    const v6, 0x3fb33333    # 1.4f

    int-to-float v7, v0

    mul-float/2addr v6, v7

    float-to-int v5, v6

    .restart local v5    # "width":I
    goto :goto_0

    .line 180
    .end local v0    # "height":I
    .end local v5    # "width":I
    :cond_4
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getWidth()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v9

    float-to-int v5, v6

    .line 181
    .restart local v5    # "width":I
    int-to-float v6, v5

    mul-float/2addr v6, v9

    float-to-int v0, v6

    .restart local v0    # "height":I
    goto :goto_0

    .line 162
    .end local v0    # "height":I
    .end local v2    # "orientation":I
    .end local v4    # "viewResolution":Landroid/graphics/Point;
    .end local v5    # "width":I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method
