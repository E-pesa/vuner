.class Lme/dm7/barcodescanner/zbar/ZBarScannerView$1;
.super Ljava/lang/Object;
.source "ZBarScannerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/dm7/barcodescanner/zbar/ZBarScannerView;->onPreviewFrame([BLandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/dm7/barcodescanner/zbar/ZBarScannerView;

.field final synthetic val$rawResult:Lme/dm7/barcodescanner/zbar/Result;


# direct methods
.method constructor <init>(Lme/dm7/barcodescanner/zbar/ZBarScannerView;Lme/dm7/barcodescanner/zbar/Result;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lme/dm7/barcodescanner/zbar/ZBarScannerView$1;->this$0:Lme/dm7/barcodescanner/zbar/ZBarScannerView;

    iput-object p2, p0, Lme/dm7/barcodescanner/zbar/ZBarScannerView$1;->val$rawResult:Lme/dm7/barcodescanner/zbar/Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 134
    iget-object v1, p0, Lme/dm7/barcodescanner/zbar/ZBarScannerView$1;->this$0:Lme/dm7/barcodescanner/zbar/ZBarScannerView;

    invoke-static {v1}, Lme/dm7/barcodescanner/zbar/ZBarScannerView;->access$000(Lme/dm7/barcodescanner/zbar/ZBarScannerView;)Lme/dm7/barcodescanner/zbar/ZBarScannerView$ResultHandler;

    move-result-object v0

    .line 135
    .local v0, "tmpResultHandler":Lme/dm7/barcodescanner/zbar/ZBarScannerView$ResultHandler;
    iget-object v1, p0, Lme/dm7/barcodescanner/zbar/ZBarScannerView$1;->this$0:Lme/dm7/barcodescanner/zbar/ZBarScannerView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lme/dm7/barcodescanner/zbar/ZBarScannerView;->access$002(Lme/dm7/barcodescanner/zbar/ZBarScannerView;Lme/dm7/barcodescanner/zbar/ZBarScannerView$ResultHandler;)Lme/dm7/barcodescanner/zbar/ZBarScannerView$ResultHandler;

    .line 137
    iget-object v1, p0, Lme/dm7/barcodescanner/zbar/ZBarScannerView$1;->this$0:Lme/dm7/barcodescanner/zbar/ZBarScannerView;

    invoke-virtual {v1}, Lme/dm7/barcodescanner/zbar/ZBarScannerView;->stopCameraPreview()V

    .line 138
    if-eqz v0, :cond_0

    .line 139
    iget-object v1, p0, Lme/dm7/barcodescanner/zbar/ZBarScannerView$1;->val$rawResult:Lme/dm7/barcodescanner/zbar/Result;

    invoke-interface {v0, v1}, Lme/dm7/barcodescanner/zbar/ZBarScannerView$ResultHandler;->handleResult(Lme/dm7/barcodescanner/zbar/Result;)V

    .line 141
    :cond_0
    return-void
.end method
