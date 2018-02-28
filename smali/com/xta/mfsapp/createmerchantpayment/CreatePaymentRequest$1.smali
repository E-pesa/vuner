.class Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$1;
.super Ljava/lang/Object;
.source "CreatePaymentRequest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$1;->this$0:Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$1;->this$0:Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;

    iget-object v1, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$1;->this$0:Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$1;->this$0:Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060234

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$1;->this$0:Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060231

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$1;->this$0:Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060233

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$1$1;

    invoke-direct {v5, p0}, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$1$1;-><init>(Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$1;)V

    iget-object v6, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$1;->this$0:Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;

    .line 85
    invoke-virtual {v6}, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060230

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$1$2;

    invoke-direct {v7, p0}, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$1$2;-><init>(Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$1;)V

    const/4 v8, 0x1

    .line 79
    invoke-virtual/range {v0 .. v8}, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    .line 92
    return-void
.end method
