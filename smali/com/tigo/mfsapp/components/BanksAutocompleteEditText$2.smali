.class Lcom/tigo/mfsapp/components/BanksAutocompleteEditText$2;
.super Ljava/lang/Object;
.source "BanksAutocompleteEditText.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 51
    iput-object p1, p0, Lcom/tigo/mfsapp/components/BanksAutocompleteEditText$2;->this$0:Lcom/tigo/mfsapp/components/BanksAutocompleteEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/tigo/mfsapp/components/BanksAutocompleteEditText$2;->this$0:Lcom/tigo/mfsapp/components/BanksAutocompleteEditText;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/components/BanksAutocompleteEditText;->getSelected()Lcom/tigo/mfsapp/adapters/BankInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/tigo/mfsapp/components/BanksAutocompleteEditText$2;->this$0:Lcom/tigo/mfsapp/components/BanksAutocompleteEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/components/BanksAutocompleteEditText;->setSelected(Lcom/tigo/mfsapp/adapters/BankInfo;)V

    .line 59
    iget-object v0, p0, Lcom/tigo/mfsapp/components/BanksAutocompleteEditText$2;->this$0:Lcom/tigo/mfsapp/components/BanksAutocompleteEditText;

    iget-object v0, v0, Lcom/tigo/mfsapp/components/BanksAutocompleteEditText;->listener:Lcom/tigo/mfsapp/components/BanksAutocompleteEditText$BanksAutocompleteListener;

    invoke-interface {v0}, Lcom/tigo/mfsapp/components/BanksAutocompleteEditText$BanksAutocompleteListener;->onUnselected()V

    .line 61
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
