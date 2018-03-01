.class Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment$4;
.super Ljava/lang/Object;
.source "RegisterDeviceEnterCodeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->onReceiveIncorrectSMSCodeError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
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
    .line 281
    iput-object p1, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment$4;->this$0:Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 286
    iget-object v0, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment$4;->this$0:Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->hideOkDialog()V

    .line 288
    return-void
.end method
