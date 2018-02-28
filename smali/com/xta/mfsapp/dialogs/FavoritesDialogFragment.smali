.class public Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "FavoritesDialogFragment.java"


# instance fields
.field private favoriteCommentView:Lcom/tigo/mfsapp/components/CustomEditText;

.field private inputEnabled:Z

.field private nothanksButton:Landroid/widget/Button;

.field private okButton:Landroid/widget/Button;

.field private okListener:Landroid/view/View$OnClickListener;

.field private text:Ljava/lang/String;

.field private textView:Landroid/widget/TextView;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;->inputEnabled:Z

    return-void
.end method


# virtual methods
.method public getFavoriteComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;->favoriteCommentView:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 34
    .local v0, "dialog":Landroid/app/Dialog;
    iget-object v2, p0, Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 35
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;->setCancelable(Z)V

    .line 37
    const v2, 0x7f03004b

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 39
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0d0117

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;->textView:Landroid/widget/TextView;

    .line 40
    iget-object v2, p0, Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;->textView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    const v2, 0x7f0d0118

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v2, p0, Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;->favoriteCommentView:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 43
    iget-object v2, p0, Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;->favoriteCommentView:Lcom/tigo/mfsapp/components/CustomEditText;

    iget-boolean v3, p0, Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;->inputEnabled:Z

    invoke-virtual {v2, v3}, Lcom/tigo/mfsapp/components/CustomEditText;->setEnabled(Z)V

    .line 45
    const v2, 0x7f0d0119

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;->okButton:Landroid/widget/Button;

    .line 46
    iget-object v2, p0, Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;->okButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;->okListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const v2, 0x7f0d011a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;->nothanksButton:Landroid/widget/Button;

    .line 49
    iget-object v2, p0, Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;->nothanksButton:Landroid/widget/Button;

    new-instance v3, Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment$1;-><init>(Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    return-object v1
.end method

.method public setEditTextError()V
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;->favoriteCommentView:Lcom/tigo/mfsapp/components/CustomEditText;

    const v1, 0x7f060169

    const v2, 0x7f020123

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    .line 100
    return-void
.end method

.method public setEnableInput(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 69
    iget-object v0, p0, Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;->favoriteCommentView:Lcom/tigo/mfsapp/components/CustomEditText;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;->favoriteCommentView:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v0, p1}, Lcom/tigo/mfsapp/components/CustomEditText;->setEnabled(Z)V

    .line 74
    :cond_0
    iput-boolean p1, p0, Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;->inputEnabled:Z

    .line 75
    return-void
.end method

.method public setOkListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "okListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;->okListener:Landroid/view/View$OnClickListener;

    .line 85
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;->text:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;->title:Ljava/lang/String;

    .line 90
    return-void
.end method
