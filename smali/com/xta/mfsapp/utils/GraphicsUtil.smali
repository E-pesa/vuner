.class public Lcom/tigo/mfsapp/utils/GraphicsUtil;
.super Ljava/lang/Object;
.source "GraphicsUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 12
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 126
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 127
    .local v2, "height":I
    iget v8, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 128
    .local v8, "width":I
    const/4 v3, 0x1

    .line 130
    .local v3, "inSampleSize":I
    if-gt v2, p2, :cond_0

    if-le v8, p1, :cond_2

    .line 132
    :cond_0
    div-int/lit8 v0, v2, 0x2

    .line 133
    .local v0, "halfHeight":I
    div-int/lit8 v1, v8, 0x2

    .line 134
    .local v1, "halfWidth":I
    :goto_0
    div-int v9, v0, v3

    if-le v9, p2, :cond_1

    div-int v9, v1, v3

    if-le v9, p1, :cond_1

    .line 136
    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 138
    :cond_1
    mul-int v9, v8, v2

    div-int/2addr v9, v3

    int-to-long v4, v9

    .line 139
    .local v4, "totalPixels":J
    mul-int v9, p1, p2

    mul-int/lit8 v9, v9, 0x2

    int-to-long v6, v9

    .line 141
    .local v6, "totalReqPixelsCap":J
    :goto_1
    cmp-long v9, v4, v6

    if-lez v9, :cond_2

    .line 143
    mul-int/lit8 v3, v3, 0x2

    .line 144
    const-wide/16 v10, 0x2

    div-long/2addr v4, v10

    goto :goto_1

    .line 148
    .end local v0    # "halfHeight":I
    .end local v1    # "halfWidth":I
    .end local v4    # "totalPixels":J
    .end local v6    # "totalReqPixelsCap":J
    :cond_2
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Calculate Sample Size: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 149
    return v3
.end method

.method public static getRoundedShape(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "scaleBitmapImage"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 22
    const/4 v0, 0x0

    .line 25
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tigo/mfsapp/app/MfsApp;->getScreenSize()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v4, v5, 0x4

    .line 27
    .local v4, "targetSide":I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 29
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 30
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 31
    .local v3, "paint":Landroid/graphics/Paint;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 32
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 33
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setDither(Z)V

    .line 35
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 36
    const v5, -0xbdbdbe

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v9

    invoke-virtual {v1, v5, v6, v7, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 40
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 41
    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, p0, v5, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "paint":Landroid/graphics/Paint;
    .end local v4    # "targetSide":I
    :goto_0
    return-object v0

    .line 43
    :catch_0
    move-exception v2

    .line 45
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "GraphicsUtil - Method rounded bitmap"

    invoke-static {v5, v2}, Lcom/tigo/mfsapp/utils/Logger;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static getUriFromIntent(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "selectedImageUri"    # Landroid/net/Uri;

    .prologue
    .line 67
    const/4 v6, 0x0

    .line 68
    .local v6, "bitMap":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 71
    .local v9, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 72
    .local v2, "filePathColumn":[Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/app/MfsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 73
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 75
    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 76
    .local v7, "column_index":I
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 77
    .local v10, "tempPath":Ljava/lang/String;
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, v9, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, v9, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, v9, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 84
    invoke-static {v10, v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 85
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/app/MfsApp;->getScreenSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/app/MfsApp;->getScreenSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v9, v0, v1}, Lcom/tigo/mfsapp/utils/GraphicsUtil;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    iput v0, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 87
    invoke-static {v10, v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 88
    invoke-static {v6}, Lcom/tigo/mfsapp/utils/GraphicsUtil;->resizeBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 98
    .end local v2    # "filePathColumn":[Ljava/lang/String;
    .end local v7    # "column_index":I
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "tempPath":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 93
    :catch_0
    move-exception v0

    goto :goto_0

    .line 89
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static resizeBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "scaleBitmapImage"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x1

    .line 103
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 104
    .local v0, "imageHeight":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 105
    .local v1, "imageWidth":I
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/app/MfsApp;->getScreenSize()Landroid/graphics/Point;

    move-result-object v4

    iget v2, v4, Landroid/graphics/Point;->y:I

    .line 106
    .local v2, "screenHeight":I
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/app/MfsApp;->getScreenSize()Landroid/graphics/Point;

    move-result-object v4

    iget v3, v4, Landroid/graphics/Point;->x:I

    .line 108
    .local v3, "screenWidth":I
    if-le v0, v2, :cond_1

    if-le v1, v3, :cond_1

    .line 110
    invoke-static {p0, v3, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 120
    .end local p0    # "scaleBitmapImage":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 112
    .restart local p0    # "scaleBitmapImage":Landroid/graphics/Bitmap;
    :cond_1
    if-le v0, v2, :cond_2

    .line 114
    invoke-static {p0, v1, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 116
    :cond_2
    if-le v1, v3, :cond_0

    .line 118
    invoke-static {p0, v3, v0, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method

.method public static rotateBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "scaleBitmapImage"    # Landroid/graphics/Bitmap;
    .param p1, "angle"    # F

    .prologue
    .line 52
    const/4 v7, 0x0

    .line 55
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 56
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 57
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 62
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    :goto_0
    return-object v7

    .line 58
    :catch_0
    move-exception v8

    .line 60
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "GraphicsUtil - Method rotate bitmap"

    invoke-static {v0, v8}, Lcom/tigo/mfsapp/utils/Logger;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
