.class Lcom/tigo/mfsapp/topup/TopupStep1Fragment$2;
.super Ljava/lang/Object;
.source "TopupStep1Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/topup/TopupStep1Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/topup/TopupStep1Fragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/topup/TopupStep1Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/topup/TopupStep1Fragment;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/tigo/mfsapp/topup/TopupStep1Fragment$2;->this$0:Lcom/tigo/mfsapp/topup/TopupStep1Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/tigo/mfsapp/topup/TopupStep1Fragment$2;->this$0:Lcom/tigo/mfsapp/topup/TopupStep1Fragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/topup/TopupStep1Fragment;->access$100(Lcom/tigo/mfsapp/topup/TopupStep1Fragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/tigo/mfsapp/topup/TopupStep1Fragment$2;->this$0:Lcom/tigo/mfsapp/topup/TopupStep1Fragment;

    iget-object v0, v0, Lcom/tigo/mfsapp/topup/TopupStep1Fragment;->bundle:Landroid/os/Bundle;

    const-string v1, "PARAM_MSISDN"

    iget-object v2, p0, Lcom/tigo/mfsapp/topup/TopupStep1Fragment$2;->this$0:Lcom/tigo/mfsapp/topup/TopupStep1Fragment;

    iget-object v2, v2, Lcom/tigo/mfsapp/topup/TopupStep1Fragment;->editText:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/tigo/mfsapp/topup/TopupStep1Fragment$2;->this$0:Lcom/tigo/mfsapp/topup/TopupStep1Fragment;

    iget-object v1, p0, Lcom/tigo/mfsapp/topup/TopupStep1Fragment$2;->this$0:Lcom/tigo/mfsapp/topup/TopupStep1Fragment;

    iget-object v1, v1, Lcom/tigo/mfsapp/topup/TopupStep1Fragment;->editText:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tigo/mfsapp/topup/TopupStep1Fragment;->MSISDN:Ljava/lang/String;

    .line 75
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Parameters;->isSubscribersLookupEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tigo/mfsapp/topup/TopupStep1Fragment$2;->this$0:Lcom/tigo/mfsapp/topup/TopupStep1Fragment;

    iget-object v0, v0, Lcom/tigo/mfsapp/topup/TopupStep1Fragment;->editText:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getContactName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/tigo/mfsapp/topup/TopupStep1Fragment$2;->this$0:Lcom/tigo/mfsapp/topup/TopupStep1Fragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/topup/TopupStep1Fragment;->setAutoShowProgressDialog(Z)V

    .line 83
    :goto_0
    iget-object v0, p0, Lcom/tigo/mfsapp/topup/TopupStep1Fragment$2;->this$0:Lcom/tigo/mfsapp/topup/TopupStep1Fragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/topup/TopupStep1Fragment;->access$200(Lcom/tigo/mfsapp/topup/TopupStep1Fragment;)V

    .line 85
    :cond_0
    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/tigo/mfsapp/topup/TopupStep1Fragment$2;->this$0:Lcom/tigo/mfsapp/topup/TopupStep1Fragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/topup/TopupStep1Fragment;->setAutoShowProgressDialog(Z)V

    goto :goto_0
.end method
