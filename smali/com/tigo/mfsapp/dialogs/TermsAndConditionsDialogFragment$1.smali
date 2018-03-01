.class Lcom/tigo/mfsapp/dialogs/TermsAndConditionsDialogFragment$1;
.super Ljava/lang/Object;
.source "TermsAndConditionsDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/dialogs/TermsAndConditionsDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/dialogs/TermsAndConditionsDialogFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/dialogs/TermsAndConditionsDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/dialogs/TermsAndConditionsDialogFragment;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/tigo/mfsapp/dialogs/TermsAndConditionsDialogFragment$1;->this$0:Lcom/tigo/mfsapp/dialogs/TermsAndConditionsDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/tigo/mfsapp/dialogs/TermsAndConditionsDialogFragment$1;->this$0:Lcom/tigo/mfsapp/dialogs/TermsAndConditionsDialogFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/dialogs/TermsAndConditionsDialogFragment;->dismiss()V

    .line 57
    return-void
.end method
