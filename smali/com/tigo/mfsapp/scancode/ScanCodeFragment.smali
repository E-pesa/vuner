.class public Lcom/tigo/mfsapp/scancode/ScanCodeFragment;
.super Lcom/tigo/mfsapp/common/BaseFragment;
.source "ScanCodeFragment.java"


# instance fields
.field autoFocusCB:Landroid/hardware/Camera$AutoFocusCallback;

.field private autoFocusHandler:Landroid/os/Handler;

.field private barcodeScanned:Z

.field private company:Lcom/tigo/mfsapp/model/Company;

.field private final doAutoFocus:Ljava/lang/Runnable;

.field private listener:Lcom/tigo/mfsapp/scancode/ScanCodeListener;

.field private mCamera:Landroid/hardware/Camera;

.field private mPreview:Lcom/tigo/mfsapp/scancode/CameraPreview;

.field previewCb:Landroid/hardware/Camera$PreviewCallback;

.field private previewing:Z

.field private scanner:Lnet/sourceforge/zbar/ImageScanner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "iconv"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFragment;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->barcodeScanned:Z

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->previewing:Z

    .line 106
    new-instance v0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment$1;

    invoke-direct {v0, p0}, Lcom/tigo/mfsapp/scancode/ScanCodeFragment$1;-><init>(Lcom/tigo/mfsapp/scancode/ScanCodeFragment;)V

    iput-object v0, p0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->doAutoFocus:Ljava/lang/Runnable;

    .line 115
    new-instance v0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment$2;

    invoke-direct {v0, p0}, Lcom/tigo/mfsapp/scancode/ScanCodeFragment$2;-><init>(Lcom/tigo/mfsapp/scancode/ScanCodeFragment;)V

    iput-object v0, p0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->previewCb:Landroid/hardware/Camera$PreviewCallback;

    .line 144
    new-instance v0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment$3;

    invoke-direct {v0, p0}, Lcom/tigo/mfsapp/scancode/ScanCodeFragment$3;-><init>(Lcom/tigo/mfsapp/scancode/ScanCodeFragment;)V

    iput-object v0, p0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->autoFocusCB:Landroid/hardware/Camera$AutoFocusCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/tigo/mfsapp/scancode/ScanCodeFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/scancode/ScanCodeFragment;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->previewing:Z

    return v0
.end method

.method static synthetic access$100(Lcom/tigo/mfsapp/scancode/ScanCodeFragment;)Landroid/hardware/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/scancode/ScanCodeFragment;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tigo/mfsapp/scancode/ScanCodeFragment;)Lnet/sourceforge/zbar/ImageScanner;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/scancode/ScanCodeFragment;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->scanner:Lnet/sourceforge/zbar/ImageScanner;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tigo/mfsapp/scancode/ScanCodeFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/scancode/ScanCodeFragment;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->barcodeScanned:Z

    return v0
.end method

.method static synthetic access$400(Lcom/tigo/mfsapp/scancode/ScanCodeFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/scancode/ScanCodeFragment;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->doAutoFocus:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tigo/mfsapp/scancode/ScanCodeFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/scancode/ScanCodeFragment;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->autoFocusHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getCameraInstance()Landroid/hardware/Camera;
    .locals 2

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 87
    .local v0, "c":Landroid/hardware/Camera;
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    .line 88
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private releaseCamera()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 96
    iget-object v0, p0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->mPreview:Lcom/tigo/mfsapp/scancode/CameraPreview;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->previewing:Z

    .line 100
    iget-object v0, p0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 101
    iget-object v0, p0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 102
    iput-object v2, p0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->mCamera:Landroid/hardware/Camera;

    .line 104
    :cond_0
    return-void
.end method


# virtual methods
.method public handleDecode(Ljava/lang/String;)V
    .locals 13
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 154
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->barcodeScanned:Z

    .line 156
    iget-object v9, p0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->listener:Lcom/tigo/mfsapp/scancode/ScanCodeListener;

    if-eqz v9, :cond_0

    .line 158
    iget-object v9, p0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v9}, Lcom/tigo/mfsapp/model/Company;->getBC_SRP()Ljava/lang/String;

    move-result-object v7

    .line 159
    .local v7, "search":Ljava/lang/String;
    iget-object v9, p0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v9}, Lcom/tigo/mfsapp/model/Company;->getBC_POS()I

    move-result v8

    .line 160
    .local v8, "start":I
    iget-object v9, p0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v9}, Lcom/tigo/mfsapp/model/Company;->getBC_LEN()I

    move-result v5

    .line 161
    .local v5, "len":I
    const-string v9, "Barcode scanned: %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tigo/mfsapp/utils/Logger;->debug(Ljava/lang/String;)V

    .line 162
    const-string v9, "Barcode parameters - search: %s, start: %d, len: %d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    const/4 v11, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tigo/mfsapp/utils/Logger;->debug(Ljava/lang/String;)V

    .line 163
    invoke-static {p1, v7, v8, v5}, Lcom/tigo/mfsapp/utils/Utils;->getReceiptFromBar(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    .line 165
    .local v6, "result":Ljava/lang/String;
    iget-object v9, p0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v9}, Lcom/tigo/mfsapp/model/Company;->getAM_SRP()Ljava/lang/String;

    move-result-object v4

    .line 166
    .local v4, "amountSearch":Ljava/lang/String;
    iget-object v9, p0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v9}, Lcom/tigo/mfsapp/model/Company;->getAM_POS()I

    move-result v3

    .line 167
    .local v3, "amountPos":I
    iget-object v9, p0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v9}, Lcom/tigo/mfsapp/model/Company;->getAM_INT()I

    move-result v2

    .line 168
    .local v2, "amountInt":I
    iget-object v9, p0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v9}, Lcom/tigo/mfsapp/model/Company;->getAM_DEC()I

    move-result v1

    .line 169
    .local v1, "amountDec":I
    const-string v9, "Barcode amount parameters - search: %s, start: %d, Int: %d, Dec: %d"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    const/4 v11, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tigo/mfsapp/utils/Logger;->debug(Ljava/lang/String;)V

    .line 170
    invoke-static {p1, v4, v3, v2, v1}, Lcom/tigo/mfsapp/utils/Utils;->getAmountFromBar(Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/Double;

    move-result-object v0

    .line 171
    .local v0, "amount":Ljava/lang/Double;
    if-eqz v6, :cond_1

    .line 173
    const-string v9, "Barcode receipt: %s amount: %f"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    const/4 v11, 0x1

    aput-object v0, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tigo/mfsapp/utils/Logger;->debug(Ljava/lang/String;)V

    .line 174
    iget-object v9, p0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->listener:Lcom/tigo/mfsapp/scancode/ScanCodeListener;

    invoke-interface {v9, v6, v0}, Lcom/tigo/mfsapp/scancode/ScanCodeListener;->scanCodeSuccess(Ljava/lang/String;Ljava/lang/Double;)V

    .line 182
    .end local v0    # "amount":Ljava/lang/Double;
    .end local v1    # "amountDec":I
    .end local v2    # "amountInt":I
    .end local v3    # "amountPos":I
    .end local v4    # "amountSearch":Ljava/lang/String;
    .end local v5    # "len":I
    .end local v6    # "result":Ljava/lang/String;
    .end local v7    # "search":Ljava/lang/String;
    .end local v8    # "start":I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    .line 184
    return-void

    .line 177
    .restart local v0    # "amount":Ljava/lang/Double;
    .restart local v1    # "amountDec":I
    .restart local v2    # "amountInt":I
    .restart local v3    # "amountPos":I
    .restart local v4    # "amountSearch":Ljava/lang/String;
    .restart local v5    # "len":I
    .restart local v6    # "result":Ljava/lang/String;
    .restart local v7    # "search":Ljava/lang/String;
    .restart local v8    # "start":I
    :cond_1
    const-string v9, "Barcode receipt not found"

    invoke-static {v9}, Lcom/tigo/mfsapp/utils/Logger;->warning(Ljava/lang/String;)V

    .line 178
    iget-object v9, p0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->listener:Lcom/tigo/mfsapp/scancode/ScanCodeListener;

    invoke-interface {v9, p1}, Lcom/tigo/mfsapp/scancode/ScanCodeListener;->scanCodeError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 188
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 189
    invoke-virtual {p0}, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/app/ActionBarActivity;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 192
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    const v0, 0x7f03007b

    .line 53
    .local v0, "layoutId":I
    const/4 v2, 0x0

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 55
    .local v1, "view":Landroid/view/View;
    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/app/ActionBarActivity;

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->show()V

    .line 204
    :cond_0
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFragment;->onDestroy()V

    .line 205
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFragment;->onPause()V

    .line 78
    invoke-direct {p0}, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->releaseCamera()V

    .line 79
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 60
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFragment;->onResume()V

    .line 61
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->autoFocusHandler:Landroid/os/Handler;

    .line 62
    invoke-static {}, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->mCamera:Landroid/hardware/Camera;

    .line 65
    new-instance v1, Lnet/sourceforge/zbar/ImageScanner;

    invoke-direct {v1}, Lnet/sourceforge/zbar/ImageScanner;-><init>()V

    iput-object v1, p0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->scanner:Lnet/sourceforge/zbar/ImageScanner;

    .line 66
    iget-object v1, p0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->scanner:Lnet/sourceforge/zbar/ImageScanner;

    const/16 v2, 0x100

    invoke-virtual {v1, v3, v2, v4}, Lnet/sourceforge/zbar/ImageScanner;->setConfig(III)V

    .line 67
    iget-object v1, p0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->scanner:Lnet/sourceforge/zbar/ImageScanner;

    const/16 v2, 0x101

    invoke-virtual {v1, v3, v2, v4}, Lnet/sourceforge/zbar/ImageScanner;->setConfig(III)V

    .line 69
    new-instance v1, Lcom/tigo/mfsapp/scancode/CameraPreview;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->mCamera:Landroid/hardware/Camera;

    iget-object v4, p0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->previewCb:Landroid/hardware/Camera$PreviewCallback;

    iget-object v5, p0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->autoFocusCB:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/tigo/mfsapp/scancode/CameraPreview;-><init>(Landroid/content/Context;Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;Landroid/hardware/Camera$AutoFocusCallback;)V

    iput-object v1, p0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->mPreview:Lcom/tigo/mfsapp/scancode/CameraPreview;

    .line 70
    invoke-virtual {p0}, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d01d0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 71
    .local v0, "preview":Landroid/widget/FrameLayout;
    iget-object v1, p0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->mPreview:Lcom/tigo/mfsapp/scancode/CameraPreview;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 72
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 196
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFragment;->onStop()V

    .line 197
    return-void
.end method

.method public setCompany(Lcom/tigo/mfsapp/model/Company;)V
    .locals 0
    .param p1, "company"    # Lcom/tigo/mfsapp/model/Company;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->company:Lcom/tigo/mfsapp/model/Company;

    .line 215
    return-void
.end method

.method public setListener(Lcom/tigo/mfsapp/scancode/ScanCodeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/tigo/mfsapp/scancode/ScanCodeListener;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->listener:Lcom/tigo/mfsapp/scancode/ScanCodeListener;

    .line 210
    return-void
.end method
