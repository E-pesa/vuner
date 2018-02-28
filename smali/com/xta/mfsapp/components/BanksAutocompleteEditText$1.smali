.class Lcom/tigo/mfsapp/components/BanksAutocompleteEditText$1;
.super Ljava/lang/Object;
.source "BanksAutocompleteEditText.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/components/BanksAutocompleteEditText;->setAutocompleteBanks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/components/BanksAutocompleteEditText;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/components/BanksAutocompleteEditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/components/BanksAutocompleteEditText;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/tigo/mfsapp/components/BanksAutocompleteEditText$1;->this$0:Lcom/tigo/mfsapp/components/BanksAutocompleteEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 46
    .local p1, "adapter":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/tigo/mfsapp/components/BanksAutocompleteEditText$1;->this$0:Lcom/tigo/mfsapp/components/BanksAutocompleteEditText;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/adapters/BankInfo;

    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/components/BanksAutocompleteEditText;->setSelected(Lcom/tigo/mfsapp/adapters/BankInfo;)V

    .line 47
    iget-object v0, p0, Lcom/tigo/mfsapp/components/BanksAutocompleteEditText$1;->this$0:Lcom/tigo/mfsapp/components/BanksAutocompleteEditText;

    iget-object v0, v0, Lcom/tigo/mfsapp/components/BanksAutocompleteEditText;->listener:Lcom/tigo/mfsapp/components/BanksAutocompleteEditText$BanksAutocompleteListener;

    invoke-interface {v0}, Lcom/tigo/mfsapp/components/BanksAutocompleteEditText$BanksAutocompleteListener;->onSelected()V

    .line 48
    return-void
.end method
