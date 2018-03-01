.class public Lcom/tigo/mfsapp/dialogs/ProgressDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "ProgressDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/dialogs/ProgressDialogFragment;->setCancelable(Z)V

    .line 18
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 28
    .local v0, "currentapiVersion":I
    const/16 v2, 0x10

    if-ge v0, v2, :cond_0

    .line 30
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/dialogs/ProgressDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0b0084

    invoke-direct {v1, v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 40
    .local v1, "dialog":Landroid/app/ProgressDialog;
    :goto_0
    const v2, 0x7f06003f

    invoke-virtual {p0, v2}, Lcom/tigo/mfsapp/dialogs/ProgressDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 41
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 42
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 44
    return-object v1

    .line 36
    .end local v1    # "dialog":Landroid/app/ProgressDialog;
    :cond_0
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/dialogs/ProgressDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .restart local v1    # "dialog":Landroid/app/ProgressDialog;
    goto :goto_0
.end method
