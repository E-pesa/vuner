.class Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment$3;
.super Ljava/lang/Object;
.source "RegistrationDeviceEnterQuestionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;->onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment$3;->this$0:Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment$3;->this$0:Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;->hideOkDialog()V

    .line 250
    iget-object v0, p0, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment$3;->this$0:Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;->access$100(Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;)V

    .line 251
    iget-object v0, p0, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment$3;->this$0:Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;->setAutoShowProgressDialog(Z)V

    .line 252
    iget-object v0, p0, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment$3;->this$0:Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;->showProgressDialog()V

    .line 253
    return-void
.end method
