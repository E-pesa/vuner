.class public Lcom/tigo/mfsapp/components/CustomEditText;
.super Lcom/tigo/mfsapp/components/BaseCustomEditText;
.source "CustomEditText.java"


# instance fields
.field private editText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/tigo/mfsapp/components/BaseCustomEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method


# virtual methods
.method public getEditText()Landroid/widget/EditText;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 23
    iget-object v0, p0, Lcom/tigo/mfsapp/components/CustomEditText;->editText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/CustomEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tigo/mfsapp/components/CustomEditText;->editText:Landroid/widget/EditText;

    .line 26
    iget-object v0, p0, Lcom/tigo/mfsapp/components/CustomEditText;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setClickable(Z)V

    .line 27
    iget-object v0, p0, Lcom/tigo/mfsapp/components/CustomEditText;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/components/CustomEditText;->editText:Landroid/widget/EditText;

    return-object v0
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 1
    .param p1, "inputFilters"    # [Landroid/text/InputFilter;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tigo/mfsapp/components/CustomEditText;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 38
    return-void
.end method
