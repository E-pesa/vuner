.class public Lme/dm7/barcodescanner/core/CameraUtils;
.super Ljava/lang/Object;
.source "CameraUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCameraInstance()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 10
    invoke-static {}, Lme/dm7/barcodescanner/core/CameraUtils;->getDefaultCameraId()I

    move-result v0

    invoke-static {v0}, Lme/dm7/barcodescanner/core/CameraUtils;->getCameraInstance(I)Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method

.method public static getCameraInstance(I)Landroid/hardware/Camera;
    .locals 2
    .param p0, "cameraId"    # I

    .prologue
    .line 30
    const/4 v0, 0x0

    .line 32
    .local v0, "c":Landroid/hardware/Camera;
    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    .line 33
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    .line 41
    :goto_0
    return-object v0

    .line 35
    :cond_0
    invoke-static {p0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 38
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getDefaultCameraId()I
    .locals 5

    .prologue
    .line 15
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v3

    .line 16
    .local v3, "numberOfCameras":I
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 17
    .local v0, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    const/4 v1, -0x1

    .line 18
    .local v1, "defaultCameraId":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 19
    move v1, v2

    .line 20
    invoke-static {v2, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 21
    iget v4, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v4, :cond_0

    .line 25
    .end local v2    # "i":I
    :goto_1
    return v2

    .line 18
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 25
    goto :goto_1
.end method

.method public static isFlashSupported(Landroid/hardware/Camera;)Z
    .locals 6
    .param p0, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    if-eqz p0, :cond_2

    .line 47
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 49
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    .line 61
    .end local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    :goto_0
    return v2

    .line 53
    .restart local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 54
    .local v1, "supportedFlashModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v4, :cond_3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, "off"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    move v2, v3

    .line 55
    goto :goto_0

    .end local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    .end local v1    # "supportedFlashModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    move v2, v3

    .line 58
    goto :goto_0

    .restart local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    .restart local v1    # "supportedFlashModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    move v2, v4

    .line 61
    goto :goto_0
.end method
