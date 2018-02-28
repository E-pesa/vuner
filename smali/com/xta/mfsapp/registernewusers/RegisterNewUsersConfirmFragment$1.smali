.class Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment$1;
.super Ljava/lang/Object;
.source "RegisterNewUsersConfirmFragment.java"

# interfaces
.implements Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment$OnYesNoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment$1;->this$0:Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public confirm(Z)V
    .locals 5
    .param p1, "yes"    # Z

    .prologue
    .line 176
    if-eqz p1, :cond_0

    .line 178
    iget-object v2, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment$1;->this$0:Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->hideOkDialog()V

    .line 179
    iget-object v2, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment$1;->this$0:Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->closeAndGoHome()V

    .line 192
    :goto_0
    return-void

    .line 184
    :cond_0
    new-instance v1, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersFragment;

    invoke-direct {v1}, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersFragment;-><init>()V

    .line 185
    .local v1, "fragment":Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 186
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersFragment;->initForm(Landroid/os/Bundle;)V

    .line 188
    iget-object v2, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment$1;->this$0:Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 189
    iget-object v2, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment$1;->this$0:Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-virtual {v2, v1}, Lcom/tigo/mfsapp/main/MsfMainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    goto :goto_0
.end method
