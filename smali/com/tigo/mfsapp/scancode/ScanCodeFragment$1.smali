.class Lcom/tigo/mfsapp/scancode/ScanCodeFragment$1;
.super Ljava/lang/Object;
.source "ScanCodeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 106
    iput-object p1, p0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment$1;->this$0:Lcom/tigo/mfsapp/scancode/ScanCodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment$1;->this$0:Lcom/tigo/mfsapp/scancode/ScanCodeFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->access$000(Lcom/tigo/mfsapp/scancode/ScanCodeFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment$1;->this$0:Lcom/tigo/mfsapp/scancode/ScanCodeFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->access$100(Lcom/tigo/mfsapp/scancode/ScanCodeFragment;)Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment$1;->this$0:Lcom/tigo/mfsapp/scancode/ScanCodeFragment;

    iget-object v1, v1, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->autoFocusCB:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 112
    :cond_0
    return-void
.end method
