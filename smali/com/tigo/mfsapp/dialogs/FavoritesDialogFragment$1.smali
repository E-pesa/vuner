.class Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment$1;
.super Ljava/lang/Object;
.source "FavoritesDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment$1;->this$0:Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 54
    iget-object v1, p0, Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment$1;->this$0:Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;->dismiss()V

    .line 55
    iget-object v1, p0, Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment$1;->this$0:Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 56
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v1, v0, Lcom/tigo/mfsapp/common/BaseFragment;

    if-eqz v1, :cond_0

    .line 58
    check-cast v0, Lcom/tigo/mfsapp/common/BaseFragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0}, Lcom/tigo/mfsapp/common/BaseFragment;->closeAndGoHome()V

    .line 61
    :cond_0
    return-void
.end method
