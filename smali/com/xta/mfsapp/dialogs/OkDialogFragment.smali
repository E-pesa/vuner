.class public Lcom/tigo/mfsapp/dialogs/OkDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "OkDialogFragment.java"


# instance fields
.field private okButton:Landroid/widget/Button;

.field private okListener:Landroid/view/View$OnClickListener;

.field private text:Ljava/lang/String;

.field private textView:Landroid/widget/TextView;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/tigo/mfsapp/dialogs/OkDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 28
    .local v0, "dialog":Landroid/app/Dialog;
    iget-object v2, p0, Lcom/tigo/mfsapp/dialogs/OkDialogFragment;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 29
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/tigo/mfsapp/dialogs/OkDialogFragment;->setCancelable(Z)V

    .line 31
    const v2, 0x7f03004e

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 33
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0d0117

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tigo/mfsapp/dialogs/OkDialogFragment;->textView:Landroid/widget/TextView;

    .line 34
    iget-object v2, p0, Lcom/tigo/mfsapp/dialogs/OkDialogFragment;->textView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tigo/mfsapp/dialogs/OkDialogFragment;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    const v2, 0x7f0d0120

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/tigo/mfsapp/dialogs/OkDialogFragment;->okButton:Landroid/widget/Button;

    .line 37
    iget-object v2, p0, Lcom/tigo/mfsapp/dialogs/OkDialogFragment;->okButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/tigo/mfsapp/dialogs/OkDialogFragment;->okListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    return-object v1
.end method

.method public setOkListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "okListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/tigo/mfsapp/dialogs/OkDialogFragment;->okListener:Landroid/view/View$OnClickListener;

    .line 45
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/tigo/mfsapp/dialogs/OkDialogFragment;->text:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/tigo/mfsapp/dialogs/OkDialogFragment;->title:Ljava/lang/String;

    .line 50
    return-void
.end method
