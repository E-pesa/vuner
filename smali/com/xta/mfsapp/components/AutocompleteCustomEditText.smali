.class public Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;
.super Lcom/tigo/mfsapp/components/BaseCustomEditText;
.source "AutocompleteCustomEditText.java"


# instance fields
.field private autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

.field private final selectedIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/tigo/mfsapp/components/BaseCustomEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;->selectedIndex:I

    .line 19
    iget-object v0, p0, Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setDropDownAnchor(I)V

    .line 20
    iget-object v0, p0, Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V

    .line 21
    return-void
.end method


# virtual methods
.method public getEditText()Landroid/widget/EditText;
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method public getSelectedIndex()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, -0x1

    return v0
.end method

.method public setAdapter(Landroid/widget/ArrayAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<*>;"
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    .line 37
    .local v0, "editText":Landroid/widget/AutoCompleteTextView;
    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 53
    return-void
.end method

.method public setNormalConfiguration()V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0}, Lcom/tigo/mfsapp/components/BaseCustomEditText;->setNormalConfiguration()V

    .line 64
    iget-object v0, p0, Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setTextColor(I)V

    .line 65
    return-void
.end method
