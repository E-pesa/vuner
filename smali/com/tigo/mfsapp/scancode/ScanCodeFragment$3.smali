.class Lcom/tigo/mfsapp/scancode/ScanCodeFragment$3;
.super Ljava/lang/Object;
.source "ScanCodeFragment.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/scancode/ScanCodeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/scancode/ScanCodeFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/scancode/ScanCodeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/scancode/ScanCodeFragment;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment$3;->this$0:Lcom/tigo/mfsapp/scancode/ScanCodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 4
    .param p1, "success"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment$3;->this$0:Lcom/tigo/mfsapp/scancode/ScanCodeFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->access$500(Lcom/tigo/mfsapp/scancode/ScanCodeFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment$3;->this$0:Lcom/tigo/mfsapp/scancode/ScanCodeFragment;

    invoke-static {v1}, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->access$400(Lcom/tigo/mfsapp/scancode/ScanCodeFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 149
    return-void
.end method
