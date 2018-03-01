.class Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment$3;
.super Ljava/lang/Object;
.source "RegisterDeviceEnterCodeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->onReceiveExpiredSMSCodeError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment$3;->this$0:Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 266
    iget-object v0, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment$3;->this$0:Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->hideOkDialog()V

    .line 268
    iget-object v0, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment$3;->this$0:Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->access$200(Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;)Lcom/tigo/mfsapp/components/CustomEditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/components/CustomEditText;->setText(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment$3;->this$0:Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->access$300(Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;)Lcom/tigo/mfsapp/components/PinCustomEditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/components/PinCustomEditText;->setText(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment$3;->this$0:Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->access$400(Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;)Lcom/tigo/mfsapp/components/TermsAndConditionsView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tigo/mfsapp/components/TermsAndConditionsView;->setChecked(Z)V

    .line 271
    iget-object v0, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment$3;->this$0:Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 272
    iget-object v0, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment$3;->this$0:Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 273
    return-void
.end method
