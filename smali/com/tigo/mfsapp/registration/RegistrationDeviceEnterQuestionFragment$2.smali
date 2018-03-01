.class Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment$2;
.super Ljava/lang/Object;
.source "RegistrationDeviceEnterQuestionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 97
    iput-object p1, p0, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment$2;->this$0:Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment$2;->this$0:Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;->access$000(Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;)V

    .line 105
    iget-object v0, p0, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment$2;->this$0:Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;->setAutoShowProgressDialog(Z)V

    .line 106
    iget-object v0, p0, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment$2;->this$0:Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;->showProgressDialog()V

    .line 124
    return-void
.end method
