.class public Lcom/tigo/mfsapp/scancode/CameraPreview;
.super Landroid/view/SurfaceView;
.source "CameraPreview.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private final autoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

.field private final mCamera:Landroid/hardware/Camera;

.field private final mHolder:Landroid/view/SurfaceHolder;

.field private final previewCallback:Landroid/hardware/Camera$PreviewCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;Landroid/hardware/Camera$AutoFocusCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "camera"    # Landroid/hardware/Camera;
    .param p3, "previewCb"    # Landroid/hardware/Camera$PreviewCallback;
    .param p4, "autoFocusCb"    # Landroid/hardware/Camera$AutoFocusCallback;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object p2, p0, Lcom/tigo/mfsapp/scancode/CameraPreview;->mCamera:Landroid/hardware/Camera;

    .line 23
    iput-object p3, p0, Lcom/tigo/mfsapp/scancode/CameraPreview;->previewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 24
    iput-object p4, p0, Lcom/tigo/mfsapp/scancode/CameraPreview;->autoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 36
    invoke-virtual {p0}, Lcom/tigo/mfsapp/scancode/CameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/scancode/CameraPreview;->mHolder:Landroid/view/SurfaceHolder;

    .line 37
    iget-object v0, p0, Lcom/tigo/mfsapp/scancode/CameraPreview;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 40
    iget-object v0, p0, Lcom/tigo/mfsapp/scancode/CameraPreview;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 41
    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 68
    iget-object v1, p0, Lcom/tigo/mfsapp/scancode/CameraPreview;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    if-nez v1, :cond_0

    .line 96
    :goto_0
    return-void

    .line 77
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/tigo/mfsapp/scancode/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 86
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/tigo/mfsapp/scancode/CameraPreview;->mCamera:Landroid/hardware/Camera;

    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 88
    iget-object v1, p0, Lcom/tigo/mfsapp/scancode/CameraPreview;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/tigo/mfsapp/scancode/CameraPreview;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 89
    iget-object v1, p0, Lcom/tigo/mfsapp/scancode/CameraPreview;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/tigo/mfsapp/scancode/CameraPreview;->previewCallback:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 90
    iget-object v1, p0, Lcom/tigo/mfsapp/scancode/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 91
    iget-object v1, p0, Lcom/tigo/mfsapp/scancode/CameraPreview;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/tigo/mfsapp/scancode/CameraPreview;->autoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DBG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error starting camera preview: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 78
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/tigo/mfsapp/scancode/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DBG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error setting camera preview: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 60
    return-void
.end method
