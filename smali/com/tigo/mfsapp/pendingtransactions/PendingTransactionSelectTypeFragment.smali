.class public Lcom/tigo/mfsapp/pendingtransactions/PendingTransactionSelectTypeFragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "PendingTransactionSelectTypeFragment.java"


# instance fields
.field private spTransactionType:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const v0, 0x7f0601c0

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/pendingtransactions/PendingTransactionSelectTypeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 70
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    const v1, 0x7f030075

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 29
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d01b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/tigo/mfsapp/pendingtransactions/PendingTransactionSelectTypeFragment;->spTransactionType:Landroid/widget/Spinner;

    .line 30
    iget-object v1, p0, Lcom/tigo/mfsapp/pendingtransactions/PendingTransactionSelectTypeFragment;->spTransactionType:Landroid/widget/Spinner;

    new-instance v2, Lcom/tigo/mfsapp/pendingtransactions/PendingTransactionSelectTypeFragment$1;

    invoke-direct {v2, p0}, Lcom/tigo/mfsapp/pendingtransactions/PendingTransactionSelectTypeFragment$1;-><init>(Lcom/tigo/mfsapp/pendingtransactions/PendingTransactionSelectTypeFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 58
    return-object v0
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 0
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 80
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 0
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 75
    return-void
.end method

.method protected onValidateData()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method
