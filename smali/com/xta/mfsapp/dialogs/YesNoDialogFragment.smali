.class public Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "YesNoDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment$OnYesNoListener;
    }
.end annotation


# instance fields
.field private cancelWhite:Ljava/lang/Boolean;

.field private noButton:Landroid/widget/Button;

.field private text:Ljava/lang/String;

.field private textNoButton:Ljava/lang/String;

.field private textView:Landroid/widget/TextView;

.field private title:Ljava/lang/String;

.field private yesButton:Landroid/widget/Button;

.field private yesNoListener:Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment$OnYesNoListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 28
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;->cancelWhite:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$000(Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;)Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment$OnYesNoListener;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;->yesNoListener:Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment$OnYesNoListener;

    return-object v0
.end method


# virtual methods
.method public changeCancelColor()V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;->noButton:Landroid/widget/Button;

    const v1, 0x7f020108

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 101
    iget-object v0, p0, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;->noButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 102
    return-void
.end method

.method public getYesNoListener()Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment$OnYesNoListener;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;->yesNoListener:Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment$OnYesNoListener;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 35
    .local v0, "dialog":Landroid/app/Dialog;
    iget-object v2, p0, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 36
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;->setCancelable(Z)V

    .line 38
    const v2, 0x7f030054

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 40
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0d0117

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;->textView:Landroid/widget/TextView;

    .line 41
    iget-object v2, p0, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;->textView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    const v2, 0x7f0d012f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;->yesButton:Landroid/widget/Button;

    .line 44
    iget-object v2, p0, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;->yesButton:Landroid/widget/Button;

    new-instance v3, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment$1;-><init>(Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const v2, 0x7f0d012e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;->noButton:Landroid/widget/Button;

    .line 57
    iget-object v2, p0, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;->textNoButton:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 59
    iget-object v2, p0, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;->noButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;->textNoButton:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 61
    :cond_0
    iget-object v2, p0, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;->noButton:Landroid/widget/Button;

    new-instance v3, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment$2;

    invoke-direct {v3, p0}, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment$2;-><init>(Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v2, p0, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;->cancelWhite:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;->changeCancelColor()V

    .line 75
    :cond_1
    return-object v1
.end method

.method public setCancelWhite(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "cancelWhite"    # Ljava/lang/Boolean;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;->cancelWhite:Ljava/lang/Boolean;

    .line 107
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;->text:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setTextNoButton(Ljava/lang/String;)V
    .locals 0
    .param p1, "textNoButton"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;->textNoButton:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;->title:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setYesNoListener(Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment$OnYesNoListener;)V
    .locals 0
    .param p1, "yesNoListener"    # Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment$OnYesNoListener;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;->yesNoListener:Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment$OnYesNoListener;

    .line 81
    return-void
.end method
