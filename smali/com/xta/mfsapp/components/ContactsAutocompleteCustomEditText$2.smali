.class Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText$2;
.super Ljava/lang/Object;
.source "ContactsAutocompleteCustomEditText.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->setAutocompleteContacts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

.field final synthetic val$editText:Landroid/widget/AutoCompleteTextView;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;Landroid/widget/AutoCompleteTextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText$2;->this$0:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    iput-object p2, p0, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText$2;->val$editText:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "adapter":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 63
    .local v0, "contact":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText$2;->this$0:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    const-string v1, "PARAM_NAME"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->access$002(Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    iget-object v1, p0, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText$2;->val$editText:Landroid/widget/AutoCompleteTextView;

    iget-object v2, p0, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText$2;->this$0:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-static {v2}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->access$000(Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v1, p0, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText$2;->val$editText:Landroid/widget/AutoCompleteTextView;

    iget-object v2, p0, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText$2;->this$0:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-static {v2}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->access$000(Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    .line 67
    iget-object v2, p0, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText$2;->this$0:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    new-instance v3, Landroid/text/SpannableStringBuilder;

    const-string v1, "PARAM_PHONE"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-direct {v3, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v2, v3}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->access$102(Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;Landroid/text/Editable;)Landroid/text/Editable;

    .line 68
    return-void
.end method
