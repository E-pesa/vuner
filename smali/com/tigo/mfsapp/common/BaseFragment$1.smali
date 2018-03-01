.class Lcom/tigo/mfsapp/common/BaseFragment$1;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/common/BaseFragment;->showOkDialog(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/common/BaseFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/common/BaseFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/common/BaseFragment;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/tigo/mfsapp/common/BaseFragment$1;->this$0:Lcom/tigo/mfsapp/common/BaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFragment$1;->this$0:Lcom/tigo/mfsapp/common/BaseFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/common/BaseFragment;->hideOkDialog()V

    .line 131
    return-void
.end method
