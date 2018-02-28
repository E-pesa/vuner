.class Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount$1;
.super Ljava/lang/Object;
.source "BillPaymentEnterAmount.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount$1;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 191
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Parameters;->getBasePaymentLogosUrl()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "basePaymentLogosUrl":Ljava/lang/String;
    new-instance v2, Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount$1;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 194
    .local v2, "webView":Landroid/webkit/WebView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount$1;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;

    invoke-static {v4}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->access$000(Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;)Lcom/tigo/mfsapp/model/Company;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Company;->getReferneceNumberHelpImageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 196
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount$1;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 197
    .local v1, "dialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 198
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 199
    return-void
.end method
