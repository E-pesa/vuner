.class Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$1$1;
.super Ljava/lang/Object;
.source "CreatePaymentRequest.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$1;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$1;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$1$1;->this$1:Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$1$1;->this$1:Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$1;

    iget-object v0, v0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$1;->this$0:Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;

    iget-object v1, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$1$1;->this$1:Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$1;

    iget-object v1, v1, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$1;->this$0:Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;

    sget v2, Lcom/tigo/mfsapp/main/MsfMainActivity;->REQUEST_GALLERY:I

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->getImageActivityForResult(Lcom/tigo/mfsapp/common/BaseFragment;I)V

    .line 84
    return-void
.end method
