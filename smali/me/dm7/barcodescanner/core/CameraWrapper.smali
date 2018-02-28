.class public Lme/dm7/barcodescanner/core/CameraWrapper;
.super Ljava/lang/Object;
.source "CameraWrapper.java"


# instance fields
.field public final mCamera:Landroid/hardware/Camera;

.field public final mCameraId:I


# direct methods
.method private constructor <init>(Landroid/hardware/Camera;I)V
    .locals 2
    .param p1, "camera"    # Landroid/hardware/Camera;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "cameraId"    # I

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    if-nez p1, :cond_0

    .line 12
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Camera cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_0
    iput-object p1, p0, Lme/dm7/barcodescanner/core/CameraWrapper;->mCamera:Landroid/hardware/Camera;

    .line 15
    iput p2, p0, Lme/dm7/barcodescanner/core/CameraWrapper;->mCameraId:I

    .line 16
    return-void
.end method

.method public static getWrapper(Landroid/hardware/Camera;I)Lme/dm7/barcodescanner/core/CameraWrapper;
    .locals 1
    .param p0, "camera"    # Landroid/hardware/Camera;
    .param p1, "cameraId"    # I

    .prologue
    .line 19
    if-nez p0, :cond_0

    .line 20
    const/4 v0, 0x0

    .line 22
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lme/dm7/barcodescanner/core/CameraWrapper;

    invoke-direct {v0, p0, p1}, Lme/dm7/barcodescanner/core/CameraWrapper;-><init>(Landroid/hardware/Camera;I)V

    goto :goto_0
.end method
