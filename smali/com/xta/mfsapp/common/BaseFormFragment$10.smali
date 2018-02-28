.class Lcom/tigo/mfsapp/common/BaseFormFragment$10;
.super Landroid/support/v4/app/DialogFragment;
.source "BaseFormFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/common/BaseFormFragment;->onReceiveForceChangePINCodeError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/common/BaseFormFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/common/BaseFormFragment;

    .prologue
    .line 607
    iput-object p1, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$10;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 611
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment$10;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 612
    .local v2, "view":Landroid/view/View;
    const v3, 0x102002b

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 613
    new-instance v1, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;

    invoke-direct {v1}, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;-><init>()V

    .line 614
    .local v1, "fragment":Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 615
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "key"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 616
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;->setArguments(Landroid/os/Bundle;)V

    .line 617
    new-instance v3, Lcom/tigo/mfsapp/common/BaseFormFragment$10$1;

    invoke-direct {v3, p0}, Lcom/tigo/mfsapp/common/BaseFormFragment$10$1;-><init>(Lcom/tigo/mfsapp/common/BaseFormFragment$10;)V

    invoke-virtual {v1, v3}, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;->setOnChangePinDialogListener(Lcom/tigo/mfsapp/settings/ChangePinCodeFragment$OnChangePinDialogListener;)V

    .line 626
    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment$10;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3, v4, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 627
    return-object v2
.end method
