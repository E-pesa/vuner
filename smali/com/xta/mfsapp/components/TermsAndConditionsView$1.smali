.class Lcom/tigo/mfsapp/components/TermsAndConditionsView$1;
.super Landroid/text/style/ClickableSpan;
.source "TermsAndConditionsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/components/TermsAndConditionsView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/components/TermsAndConditionsView;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/components/TermsAndConditionsView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/components/TermsAndConditionsView;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/tigo/mfsapp/components/TermsAndConditionsView$1;->this$0:Lcom/tigo/mfsapp/components/TermsAndConditionsView;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 51
    iget-object v2, p0, Lcom/tigo/mfsapp/components/TermsAndConditionsView$1;->this$0:Lcom/tigo/mfsapp/components/TermsAndConditionsView;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/TermsAndConditionsView;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/support/v4/app/FragmentActivity;

    if-eqz v2, :cond_0

    .line 53
    iget-object v2, p0, Lcom/tigo/mfsapp/components/TermsAndConditionsView$1;->this$0:Lcom/tigo/mfsapp/components/TermsAndConditionsView;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/TermsAndConditionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    .line 54
    .local v0, "activity":Landroid/support/v4/app/FragmentActivity;
    new-instance v1, Lcom/tigo/mfsapp/dialogs/TermsAndConditionsDialogFragment;

    invoke-direct {v1}, Lcom/tigo/mfsapp/dialogs/TermsAndConditionsDialogFragment;-><init>()V

    .line 55
    .local v1, "dialog":Lcom/tigo/mfsapp/dialogs/TermsAndConditionsDialogFragment;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/tigo/mfsapp/dialogs/TermsAndConditionsDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 57
    .end local v0    # "activity":Landroid/support/v4/app/FragmentActivity;
    .end local v1    # "dialog":Lcom/tigo/mfsapp/dialogs/TermsAndConditionsDialogFragment;
    :cond_0
    return-void
.end method
