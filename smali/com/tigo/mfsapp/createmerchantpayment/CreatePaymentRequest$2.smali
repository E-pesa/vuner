.class Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$2;
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
    .line 95
    iput-object p1, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$2;->this$0:Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$2;->this$0:Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;

    iget-object v0, v0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->ivPic:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 100
    iget-object v0, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$2;->this$0:Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;

    iget-object v0, v0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->ivDeletePic:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$2;->this$0:Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;

    iget-object v0, v0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->ivPic:Landroid/widget/ImageView;

    const v1, 0x7f020041

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    return-void
.end method
