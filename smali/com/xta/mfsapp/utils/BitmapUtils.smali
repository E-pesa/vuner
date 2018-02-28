.class public Lcom/tigo/mfsapp/utils/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 6
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 121
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 122
    .local v2, "height":I
    iget v4, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 123
    .local v4, "width":I
    const/4 v3, 0x1

    .line 125
    .local v3, "inSampleSize":I
    if-gt v2, p2, :cond_0

    if-le v4, p1, :cond_1

    .line 128
    :cond_0
    div-int/lit8 v0, v2, 0x2

    .line 129
    .local v0, "halfHeight":I
    div-int/lit8 v1, v4, 0x2

    .line 134
    .local v1, "halfWidth":I
    :goto_0
    div-int v5, v0, v3

    if-le v5, p2, :cond_1

    div-int v5, v1, v3

    if-le v5, p1, :cond_1

    .line 136
    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 140
    .end local v0    # "halfHeight":I
    .end local v1    # "halfWidth":I
    :cond_1
    return v3
.end method

.method public static decodeSampledBitmap(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I

    .prologue
    const/4 v4, 0x0

    .line 103
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 104
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 105
    invoke-static {p0, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 108
    invoke-static {v1, p2, p3}, Lcom/tigo/mfsapp/utils/BitmapUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 111
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 112
    invoke-static {p0, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 113
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0, p2, p3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 114
    .local v2, "scaledBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 115
    return-object v2
.end method

.method public static decodeSampledBitmap(Ljava/io/InputStream;II)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 74
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 75
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 79
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/io/InputStream;->mark(I)V

    .line 81
    const/4 v4, 0x0

    invoke-static {p0, v4, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 83
    invoke-static {v2, p1, p2}, Lcom/tigo/mfsapp/utils/BitmapUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v4

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 86
    const/4 v4, 0x0

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 88
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    invoke-static {p0, v6, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 95
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0, p1, p2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 96
    .local v3, "scaledBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 97
    return-object v3

    .line 90
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "scaledBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getRoundedBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "inBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "radius"    # I
    .param p2, "backgroundColor"    # I

    .prologue
    .line 20
    mul-int/lit8 v5, p1, 0x2

    .line 21
    .local v5, "outWidth":I
    move v4, v5

    .line 22
    .local v4, "outHeight":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 23
    .local v3, "inWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 25
    .local v2, "inHeight":I
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v4, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 26
    .local v6, "output":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 28
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 29
    .local v7, "paint":Landroid/graphics/Paint;
    new-instance v8, Landroid/graphics/Rect;

    div-int/lit8 v9, v3, 0x2

    sub-int/2addr v9, p1

    div-int/lit8 v10, v2, 0x2

    sub-int/2addr v10, p1

    invoke-direct {v8, v9, v10, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 30
    .local v8, "source":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int v9, p1, v9

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int v10, p1, v10

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v12

    invoke-direct {v1, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 32
    .local v1, "dest":Landroid/graphics/Rect;
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 33
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 34
    invoke-virtual {v7, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    div-int/lit8 v9, v5, 0x2

    int-to-float v9, v9

    div-int/lit8 v10, v4, 0x2

    int-to-float v10, v10

    int-to-float v11, p1

    invoke-virtual {v0, v9, v10, v11, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 36
    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 38
    invoke-virtual {v0, p0, v8, v1, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 40
    return-object v6
.end method

.method public static getRoundedBitmap(Ljava/io/InputStream;II)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "radius"    # I
    .param p2, "backgroundColor"    # I

    .prologue
    .line 45
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 46
    .local v0, "inBitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 48
    .local v1, "output":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 50
    invoke-static {v0, p1, p2}, Lcom/tigo/mfsapp/utils/BitmapUtils;->getRoundedBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 51
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 54
    :cond_0
    return-object v1
.end method

.method public static getRoundedBitmap(Ljava/io/InputStream;IIII)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I
    .param p3, "radius"    # I
    .param p4, "backgroundColor"    # I

    .prologue
    .line 59
    invoke-static {p0, p1, p2}, Lcom/tigo/mfsapp/utils/BitmapUtils;->decodeSampledBitmap(Ljava/io/InputStream;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 60
    .local v0, "inBitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 62
    .local v1, "output":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 64
    invoke-static {v0, p3, p4}, Lcom/tigo/mfsapp/utils/BitmapUtils;->getRoundedBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 65
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 68
    :cond_0
    return-object v1
.end method
