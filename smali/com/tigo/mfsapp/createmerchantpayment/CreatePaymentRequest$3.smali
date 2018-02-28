.class Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$3;
.super Ljava/lang/Object;
.source "CreatePaymentRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;

.field final synthetic val$cancelListener:Z

.field final synthetic val$msj:Ljava/lang/String;

.field final synthetic val$negative:Ljava/lang/String;

.field final synthetic val$negativeListener:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic val$origin:Landroid/app/Activity;

.field final synthetic val$positive:Ljava/lang/String;

.field final synthetic val$positiveListener:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$3;->this$0:Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;

    iput-object p2, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$3;->val$origin:Landroid/app/Activity;

    iput-object p3, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$3;->val$title:Ljava/lang/String;

    iput-object p4, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$3;->val$msj:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$3;->val$cancelListener:Z

    iput-object p6, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$3;->val$positive:Ljava/lang/String;

    iput-object p7, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$3;->val$positiveListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p8, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$3;->val$negative:Ljava/lang/String;

    iput-object p9, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$3;->val$negativeListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 287
    iget-object v3, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$3;->this$0:Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;

    iget-object v4, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$3;->val$origin:Landroid/app/Activity;

    invoke-static {v3, v4}, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->access$000(Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;Landroid/app/Activity;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 288
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$3;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 289
    iget-object v3, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$3;->val$msj:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 290
    iget-boolean v3, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$3;->val$cancelListener:Z

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 291
    iget-object v3, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$3;->val$positive:Ljava/lang/String;

    iget-object v4, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$3;->val$positiveListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 292
    iget-object v3, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$3;->val$negative:Ljava/lang/String;

    iget-object v4, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$3;->val$negativeListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 293
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 294
    .local v1, "dialog":Landroid/app/AlertDialog;
    const v3, 0x102000b

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 295
    .local v2, "messageText":Landroid/widget/TextView;
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 296
    return-void
.end method
