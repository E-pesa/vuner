.class public Lme/dm7/barcodescanner/core/CameraPreview;
.super Landroid/view/SurfaceView;
.source "CameraPreview.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraPreview"


# instance fields
.field autoFocusCB:Landroid/hardware/Camera$AutoFocusCallback;

.field private doAutoFocus:Ljava/lang/Runnable;

.field private mAutoFocus:Z

.field private mAutoFocusHandler:Landroid/os/Handler;

.field private mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

.field private mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private mPreviewing:Z

.field private mShouldScaleToFill:Z

.field private mSurfaceCreated:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lme/dm7/barcodescanner/core/CameraWrapper;Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "cameraWrapper"    # Lme/dm7/barcodescanner/core/CameraWrapper;
    .param p4, "previewCallback"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    const/4 v1, 0x1

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput-boolean v1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mPreviewing:Z

    .line 26
    iput-boolean v1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mAutoFocus:Z

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mSurfaceCreated:Z

    .line 28
    iput-boolean v1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mShouldScaleToFill:Z

    .line 290
    new-instance v0, Lme/dm7/barcodescanner/core/CameraPreview$1;

    invoke-direct {v0, p0}, Lme/dm7/barcodescanner/core/CameraPreview$1;-><init>(Lme/dm7/barcodescanner/core/CameraPreview;)V

    iput-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->doAutoFocus:Ljava/lang/Runnable;

    .line 299
    new-instance v0, Lme/dm7/barcodescanner/core/CameraPreview$2;

    invoke-direct {v0, p0}, Lme/dm7/barcodescanner/core/CameraPreview$2;-><init>(Lme/dm7/barcodescanner/core/CameraPreview;)V

    iput-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->autoFocusCB:Landroid/hardware/Camera$AutoFocusCallback;

    .line 38
    invoke-virtual {p0, p3, p4}, Lme/dm7/barcodescanner/core/CameraPreview;->init(Lme/dm7/barcodescanner/core/CameraWrapper;Landroid/hardware/Camera$PreviewCallback;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lme/dm7/barcodescanner/core/CameraWrapper;Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cameraWrapper"    # Lme/dm7/barcodescanner/core/CameraWrapper;
    .param p3, "previewCallback"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    const/4 v1, 0x1

    .line 32
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 25
    iput-boolean v1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mPreviewing:Z

    .line 26
    iput-boolean v1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mAutoFocus:Z

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mSurfaceCreated:Z

    .line 28
    iput-boolean v1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mShouldScaleToFill:Z

    .line 290
    new-instance v0, Lme/dm7/barcodescanner/core/CameraPreview$1;

    invoke-direct {v0, p0}, Lme/dm7/barcodescanner/core/CameraPreview$1;-><init>(Lme/dm7/barcodescanner/core/CameraPreview;)V

    iput-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->doAutoFocus:Ljava/lang/Runnable;

    .line 299
    new-instance v0, Lme/dm7/barcodescanner/core/CameraPreview$2;

    invoke-direct {v0, p0}, Lme/dm7/barcodescanner/core/CameraPreview$2;-><init>(Lme/dm7/barcodescanner/core/CameraPreview;)V

    iput-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->autoFocusCB:Landroid/hardware/Camera$AutoFocusCallback;

    .line 33
    invoke-virtual {p0, p2, p3}, Lme/dm7/barcodescanner/core/CameraPreview;->init(Lme/dm7/barcodescanner/core/CameraWrapper;Landroid/hardware/Camera$PreviewCallback;)V

    .line 34
    return-void
.end method

.method static synthetic access$000(Lme/dm7/barcodescanner/core/CameraPreview;)Lme/dm7/barcodescanner/core/CameraWrapper;
    .locals 1
    .param p0, "x0"    # Lme/dm7/barcodescanner/core/CameraPreview;

    .prologue
    .line 20
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    return-object v0
.end method

.method static synthetic access$100(Lme/dm7/barcodescanner/core/CameraPreview;)Z
    .locals 1
    .param p0, "x0"    # Lme/dm7/barcodescanner/core/CameraPreview;

    .prologue
    .line 20
    iget-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mPreviewing:Z

    return v0
.end method

.method static synthetic access$200(Lme/dm7/barcodescanner/core/CameraPreview;)Z
    .locals 1
    .param p0, "x0"    # Lme/dm7/barcodescanner/core/CameraPreview;

    .prologue
    .line 20
    iget-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mAutoFocus:Z

    return v0
.end method

.method static synthetic access$300(Lme/dm7/barcodescanner/core/CameraPreview;)Z
    .locals 1
    .param p0, "x0"    # Lme/dm7/barcodescanner/core/CameraPreview;

    .prologue
    .line 20
    iget-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mSurfaceCreated:Z

    return v0
.end method

.method static synthetic access$400(Lme/dm7/barcodescanner/core/CameraPreview;)V
    .locals 0
    .param p0, "x0"    # Lme/dm7/barcodescanner/core/CameraPreview;

    .prologue
    .line 20
    invoke-direct {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->scheduleAutoFocus()V

    return-void
.end method

.method private adjustViewSize(Landroid/hardware/Camera$Size;)V
    .locals 6
    .param p1, "cameraSize"    # Landroid/hardware/Camera$Size;

    .prologue
    .line 133
    new-instance v3, Landroid/graphics/Point;

    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {p0, v3}, Lme/dm7/barcodescanner/core/CameraPreview;->convertSizeToLandscapeOrientation(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    .line 134
    .local v1, "previewSize":Landroid/graphics/Point;
    iget v3, p1, Landroid/hardware/Camera$Size;->width:I

    int-to-float v3, v3

    iget v4, p1, Landroid/hardware/Camera$Size;->height:I

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 135
    .local v0, "cameraRatio":F
    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 137
    .local v2, "screenRatio":F
    cmpl-float v3, v2, v0

    if-lez v3, :cond_0

    .line 138
    iget v3, v1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v3, v4}, Lme/dm7/barcodescanner/core/CameraPreview;->setViewSize(II)V

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    div-float/2addr v4, v0

    float-to-int v4, v4

    invoke-direct {p0, v3, v4}, Lme/dm7/barcodescanner/core/CameraPreview;->setViewSize(II)V

    goto :goto_0
.end method

.method private convertSizeToLandscapeOrientation(Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 3
    .param p1, "size"    # Landroid/graphics/Point;

    .prologue
    .line 146
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getDisplayOrientation()I

    move-result v0

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    .line 149
    .end local p1    # "size":Landroid/graphics/Point;
    :goto_0
    return-object p1

    .restart local p1    # "size":Landroid/graphics/Point;
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->y:I

    iget v2, p1, Landroid/graphics/Point;->x:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    move-object p1, v0

    goto :goto_0
.end method

.method private getOptimalPreviewSize()Landroid/hardware/Camera$Size;
    .locals 22

    .prologue
    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/dm7/barcodescanner/core/CameraPreview;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 226
    const/4 v8, 0x0

    .line 267
    :cond_0
    :goto_0
    return-object v8

    .line 229
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/dm7/barcodescanner/core/CameraPreview;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lme/dm7/barcodescanner/core/CameraWrapper;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v13

    .line 230
    .local v13, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-virtual/range {p0 .. p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getWidth()I

    move-result v15

    .line 231
    .local v15, "w":I
    invoke-virtual/range {p0 .. p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getHeight()I

    move-result v4

    .line 232
    .local v4, "h":I
    invoke-virtual/range {p0 .. p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lme/dm7/barcodescanner/core/DisplayUtils;->getScreenOrientation(Landroid/content/Context;)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 233
    move v9, v4

    .line 234
    .local v9, "portraitWidth":I
    move v4, v15

    .line 235
    move v15, v9

    .line 238
    .end local v9    # "portraitWidth":I
    :cond_2
    const-wide v2, 0x3fb999999999999aL    # 0.1

    .line 239
    .local v2, "ASPECT_TOLERANCE":D
    int-to-double v0, v15

    move-wide/from16 v18, v0

    int-to-double v0, v4

    move-wide/from16 v20, v0

    div-double v16, v18, v20

    .line 240
    .local v16, "targetRatio":D
    if-nez v13, :cond_3

    const/4 v8, 0x0

    goto :goto_0

    .line 242
    :cond_3
    const/4 v8, 0x0

    .line 243
    .local v8, "optimalSize":Landroid/hardware/Camera$Size;
    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 245
    .local v6, "minDiff":D
    move v14, v4

    .line 248
    .local v14, "targetHeight":I
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/Camera$Size;

    .line 249
    .local v12, "size":Landroid/hardware/Camera$Size;
    iget v0, v12, Landroid/hardware/Camera$Size;->width:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    iget v0, v12, Landroid/hardware/Camera$Size;->height:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v10, v18, v20

    .line 250
    .local v10, "ratio":D
    sub-double v18, v10, v16

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    const-wide v20, 0x3fb999999999999aL    # 0.1

    cmpl-double v18, v18, v20

    if-gtz v18, :cond_4

    .line 251
    iget v0, v12, Landroid/hardware/Camera$Size;->height:I

    move/from16 v18, v0

    sub-int v18, v18, v14

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    cmpg-double v18, v18, v6

    if-gez v18, :cond_4

    .line 252
    move-object v8, v12

    .line 253
    iget v0, v12, Landroid/hardware/Camera$Size;->height:I

    move/from16 v18, v0

    sub-int v18, v18, v14

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move/from16 v0, v18

    int-to-double v6, v0

    goto :goto_1

    .line 258
    .end local v10    # "ratio":D
    .end local v12    # "size":Landroid/hardware/Camera$Size;
    :cond_5
    if-nez v8, :cond_0

    .line 259
    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 260
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/Camera$Size;

    .line 261
    .restart local v12    # "size":Landroid/hardware/Camera$Size;
    iget v0, v12, Landroid/hardware/Camera$Size;->height:I

    move/from16 v18, v0

    sub-int v18, v18, v14

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    cmpg-double v18, v18, v6

    if-gez v18, :cond_6

    .line 262
    move-object v8, v12

    .line 263
    iget v0, v12, Landroid/hardware/Camera$Size;->height:I

    move/from16 v18, v0

    sub-int v18, v18, v14

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move/from16 v0, v18

    int-to-double v6, v0

    goto :goto_2
.end method

.method private scheduleAutoFocus()V
    .locals 4

    .prologue
    .line 306
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mAutoFocusHandler:Landroid/os/Handler;

    iget-object v1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->doAutoFocus:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 307
    return-void
.end method

.method private setViewSize(II)V
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 155
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 158
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getDisplayOrientation()I

    move-result v8

    rem-int/lit16 v8, v8, 0xb4

    if-nez v8, :cond_1

    .line 159
    move v7, p1

    .line 160
    .local v7, "tmpWidth":I
    move v6, p2

    .line 166
    .local v6, "tmpHeight":I
    :goto_0
    iget-boolean v8, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mShouldScaleToFill:Z

    if-eqz v8, :cond_0

    .line 167
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 168
    .local v3, "parentWidth":I
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 169
    .local v2, "parentHeight":I
    int-to-float v8, v3

    int-to-float v9, v7

    div-float v5, v8, v9

    .line 170
    .local v5, "ratioWidth":F
    int-to-float v8, v2

    int-to-float v9, v6

    div-float v4, v8, v9

    .line 174
    .local v4, "ratioHeight":F
    cmpl-float v8, v5, v4

    if-lez v8, :cond_2

    .line 175
    move v0, v5

    .line 180
    .local v0, "compensation":F
    :goto_1
    int-to-float v8, v7

    mul-float/2addr v8, v0

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 181
    int-to-float v8, v6

    mul-float/2addr v8, v0

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 184
    .end local v0    # "compensation":F
    .end local v2    # "parentHeight":I
    .end local v3    # "parentWidth":I
    .end local v4    # "ratioHeight":F
    .end local v5    # "ratioWidth":F
    :cond_0
    iput v7, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 185
    iput v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 186
    invoke-virtual {p0, v1}, Lme/dm7/barcodescanner/core/CameraPreview;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    return-void

    .line 162
    .end local v6    # "tmpHeight":I
    .end local v7    # "tmpWidth":I
    :cond_1
    move v7, p2

    .line 163
    .restart local v7    # "tmpWidth":I
    move v6, p1

    .restart local v6    # "tmpHeight":I
    goto :goto_0

    .line 177
    .restart local v2    # "parentHeight":I
    .restart local v3    # "parentWidth":I
    .restart local v4    # "ratioHeight":F
    .restart local v5    # "ratioWidth":F
    :cond_2
    move v0, v4

    .restart local v0    # "compensation":F
    goto :goto_1
.end method


# virtual methods
.method public getDisplayOrientation()I
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 190
    iget-object v6, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    if-nez v6, :cond_0

    .line 221
    :goto_0
    return v3

    .line 195
    :cond_0
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 196
    .local v2, "info":Landroid/hardware/Camera$CameraInfo;
    iget-object v6, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    iget v6, v6, Lme/dm7/barcodescanner/core/CameraWrapper;->mCameraId:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 197
    invoke-static {v3, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 202
    :goto_1
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 203
    .local v5, "wm":Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 205
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v4

    .line 206
    .local v4, "rotation":I
    const/4 v0, 0x0

    .line 207
    .local v0, "degrees":I
    packed-switch v4, :pswitch_data_0

    .line 215
    :goto_2
    iget v6, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 216
    iget v6, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v6, v0

    rem-int/lit16 v3, v6, 0x168

    .line 217
    .local v3, "result":I
    rsub-int v6, v3, 0x168

    rem-int/lit16 v3, v6, 0x168

    goto :goto_0

    .line 199
    .end local v0    # "degrees":I
    .end local v1    # "display":Landroid/view/Display;
    .end local v3    # "result":I
    .end local v4    # "rotation":I
    .end local v5    # "wm":Landroid/view/WindowManager;
    :cond_1
    iget-object v6, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    iget v6, v6, Lme/dm7/barcodescanner/core/CameraWrapper;->mCameraId:I

    invoke-static {v6, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    goto :goto_1

    .line 208
    .restart local v0    # "degrees":I
    .restart local v1    # "display":Landroid/view/Display;
    .restart local v4    # "rotation":I
    .restart local v5    # "wm":Landroid/view/WindowManager;
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_2

    .line 209
    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_2

    .line 210
    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_2

    .line 211
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_2

    .line 219
    :cond_2
    iget v6, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v6, v0

    add-int/lit16 v6, v6, 0x168

    rem-int/lit16 v3, v6, 0x168

    .restart local v3    # "result":I
    goto :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public init(Lme/dm7/barcodescanner/core/CameraWrapper;Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .param p1, "cameraWrapper"    # Lme/dm7/barcodescanner/core/CameraWrapper;
    .param p2, "previewCallback"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    .line 42
    invoke-virtual {p0, p1, p2}, Lme/dm7/barcodescanner/core/CameraPreview;->setCamera(Lme/dm7/barcodescanner/core/CameraWrapper;Landroid/hardware/Camera$PreviewCallback;)V

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mAutoFocusHandler:Landroid/os/Handler;

    .line 44
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 45
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 46
    return-void
.end method

.method public safeAutoFocus()V
    .locals 3

    .prologue
    .line 102
    :try_start_0
    iget-object v1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    iget-object v1, v1, Lme/dm7/barcodescanner/core/CameraWrapper;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lme/dm7/barcodescanner/core/CameraPreview;->autoFocusCB:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 106
    .local v0, "re":Ljava/lang/RuntimeException;
    invoke-direct {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->scheduleAutoFocus()V

    goto :goto_0
.end method

.method public setAutoFocus(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 271
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mPreviewing:Z

    if-eqz v0, :cond_0

    .line 272
    iget-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mAutoFocus:Z

    if-ne p1, v0, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    iput-boolean p1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mAutoFocus:Z

    .line 276
    iget-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mAutoFocus:Z

    if-eqz v0, :cond_3

    .line 277
    iget-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mSurfaceCreated:Z

    if-eqz v0, :cond_2

    .line 278
    const-string v0, "CameraPreview"

    const-string v1, "Starting autofocus"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->safeAutoFocus()V

    goto :goto_0

    .line 281
    :cond_2
    invoke-direct {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->scheduleAutoFocus()V

    goto :goto_0

    .line 284
    :cond_3
    const-string v0, "CameraPreview"

    const-string v1, "Cancelling autofocus"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    iget-object v0, v0, Lme/dm7/barcodescanner/core/CameraWrapper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    goto :goto_0
.end method

.method public setCamera(Lme/dm7/barcodescanner/core/CameraWrapper;Landroid/hardware/Camera$PreviewCallback;)V
    .locals 0
    .param p1, "cameraWrapper"    # Lme/dm7/barcodescanner/core/CameraWrapper;
    .param p2, "previewCallback"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    .line 49
    iput-object p1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    .line 50
    iput-object p2, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 51
    return-void
.end method

.method public setShouldScaleToFill(Z)V
    .locals 0
    .param p1, "scaleToFill"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mShouldScaleToFill:Z

    .line 55
    return-void
.end method

.method public setupCameraParameters()V
    .locals 4

    .prologue
    .line 125
    invoke-direct {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getOptimalPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 126
    .local v0, "optimalSize":Landroid/hardware/Camera$Size;
    iget-object v2, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    iget-object v2, v2, Lme/dm7/barcodescanner/core/CameraWrapper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 127
    .local v1, "parameters":Landroid/hardware/Camera$Parameters;
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 128
    iget-object v2, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    iget-object v2, v2, Lme/dm7/barcodescanner/core/CameraWrapper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 129
    invoke-direct {p0, v0}, Lme/dm7/barcodescanner/core/CameraPreview;->adjustViewSize(Landroid/hardware/Camera$Size;)V

    .line 130
    return-void
.end method

.method public showCameraPreview()V
    .locals 3

    .prologue
    .line 78
    iget-object v1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    if-eqz v1, :cond_0

    .line 80
    :try_start_0
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 81
    const/4 v1, 0x1

    iput-boolean v1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mPreviewing:Z

    .line 82
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->setupCameraParameters()V

    .line 83
    iget-object v1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    iget-object v1, v1, Lme/dm7/barcodescanner/core/CameraWrapper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 84
    iget-object v1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    iget-object v1, v1, Lme/dm7/barcodescanner/core/CameraWrapper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getDisplayOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 85
    iget-object v1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    iget-object v1, v1, Lme/dm7/barcodescanner/core/CameraWrapper;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 86
    iget-object v1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    iget-object v1, v1, Lme/dm7/barcodescanner/core/CameraWrapper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 87
    iget-boolean v1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mAutoFocus:Z

    if-eqz v1, :cond_0

    .line 88
    iget-boolean v1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mSurfaceCreated:Z

    if-eqz v1, :cond_1

    .line 89
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->safeAutoFocus()V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    invoke-direct {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->scheduleAutoFocus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CameraPreview"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public stopCameraPreview()V
    .locals 3

    .prologue
    .line 111
    iget-object v1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    if-eqz v1, :cond_0

    .line 113
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mPreviewing:Z

    .line 114
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 115
    iget-object v1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    iget-object v1, v1, Lme/dm7/barcodescanner/core/CameraWrapper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 116
    iget-object v1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    iget-object v1, v1, Lme/dm7/barcodescanner/core/CameraWrapper;->mCamera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 117
    iget-object v1, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    iget-object v1, v1, Lme/dm7/barcodescanner/core/CameraWrapper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CameraPreview"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 64
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->stopCameraPreview()V

    .line 68
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->showCameraPreview()V

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mSurfaceCreated:Z

    .line 60
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/dm7/barcodescanner/core/CameraPreview;->mSurfaceCreated:Z

    .line 74
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/CameraPreview;->stopCameraPreview()V

    .line 75
    return-void
.end method
