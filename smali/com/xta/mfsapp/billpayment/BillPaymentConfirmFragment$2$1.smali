.class Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment$2$1;
.super Ljava/lang/Object;
.source "BillPaymentConfirmFragment.java"

# interfaces
.implements Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment$2;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment$2;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment$2$1;->this$1:Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 3

    .prologue
    .line 245
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v0

    const v1, 0x7f06015b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 246
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 239
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v0

    const v1, 0x7f06015c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 240
    return-void
.end method
