.class public Lcom/tigo/mfsapp/components/BanksAutocompleteEditText;
.super Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;
.source "BanksAutocompleteEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/components/BanksAutocompleteEditText$BanksAutocompleteListener;
    }
.end annotation


# instance fields
.field private adapter:Lcom/tigo/mfsapp/adapters/BanksAdapter;

.field listener:Lcom/tigo/mfsapp/components/BanksAutocompleteEditText$BanksAutocompleteListener;

.field selected:Lcom/tigo/mfsapp/adapters/BankInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method


# virtual methods
.method public closeSelection()V
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/BanksAutocompleteEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 96
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/BanksAutocompleteEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const v1, 0x7f0600ef

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 97
    return-void
.end method

.method public getAdapter()Lcom/tigo/mfsapp/adapters/BanksAdapter;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/tigo/mfsapp/components/BanksAutocompleteEditText;->adapter:Lcom/tigo/mfsapp/adapters/BanksAdapter;

    return-object v0
.end method

.method public getListener()Lcom/tigo/mfsapp/components/BanksAutocompleteEditText$BanksAutocompleteListener;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/tigo/mfsapp/components/BanksAutocompleteEditText;->listener:Lcom/tigo/mfsapp/components/BanksAutocompleteEditText$BanksAutocompleteListener;

    return-object v0
.end method

.method public getSelected()Lcom/tigo/mfsapp/adapters/BankInfo;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/tigo/mfsapp/components/BanksAutocompleteEditText;->selected:Lcom/tigo/mfsapp/adapters/BankInfo;

    return-object v0
.end method

.method public setAdapter(Lcom/tigo/mfsapp/adapters/BanksAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/tigo/mfsapp/adapters/BanksAdapter;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/tigo/mfsapp/components/BanksAutocompleteEditText;->adapter:Lcom/tigo/mfsapp/adapters/BanksAdapter;

    .line 34
    return-void
.end method

.method public setAutocompleteBanks()V
    .locals 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/BanksAutocompleteEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    .line 40
    .local v0, "editText":Landroid/widget/AutoCompleteTextView;
    iget-object v1, p0, Lcom/tigo/mfsapp/components/BanksAutocompleteEditText;->adapter:Lcom/tigo/mfsapp/adapters/BanksAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 41
    new-instance v1, Lcom/tigo/mfsapp/components/BanksAutocompleteEditText$1;

    invoke-direct {v1, p0}, Lcom/tigo/mfsapp/components/BanksAutocompleteEditText$1;-><init>(Lcom/tigo/mfsapp/components/BanksAutocompleteEditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 51
    new-instance v1, Lcom/tigo/mfsapp/components/BanksAutocompleteEditText$2;

    invoke-direct {v1, p0}, Lcom/tigo/mfsapp/components/BanksAutocompleteEditText$2;-><init>(Lcom/tigo/mfsapp/components/BanksAutocompleteEditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 64
    return-void
.end method

.method public setListener(Lcom/tigo/mfsapp/components/BanksAutocompleteEditText$BanksAutocompleteListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/tigo/mfsapp/components/BanksAutocompleteEditText$BanksAutocompleteListener;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/tigo/mfsapp/components/BanksAutocompleteEditText;->listener:Lcom/tigo/mfsapp/components/BanksAutocompleteEditText$BanksAutocompleteListener;

    .line 84
    return-void
.end method

.method public setSelected(Lcom/tigo/mfsapp/adapters/BankInfo;)V
    .locals 0
    .param p1, "selected"    # Lcom/tigo/mfsapp/adapters/BankInfo;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/tigo/mfsapp/components/BanksAutocompleteEditText;->selected:Lcom/tigo/mfsapp/adapters/BankInfo;

    .line 74
    return-void
.end method
