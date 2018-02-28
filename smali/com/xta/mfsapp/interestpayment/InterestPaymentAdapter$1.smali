.class Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter$1;
.super Ljava/lang/Object;
.source "InterestPaymentAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter;

.field final synthetic val$info:Lcom/tigo/mfsapp/model/InterestPaymentInfo;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter;Lcom/tigo/mfsapp/model/InterestPaymentInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter$1;->this$0:Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter;

    iput-object p2, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter$1;->val$info:Lcom/tigo/mfsapp/model/InterestPaymentInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter$1;->this$0:Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter;->getItemConfirmListener()Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter$ItemConfirmListener;

    move-result-object v0

    iget-object v1, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter$1;->val$info:Lcom/tigo/mfsapp/model/InterestPaymentInfo;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/InterestPaymentInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter$ItemConfirmListener;->onConfirm(Ljava/lang/String;)V

    .line 77
    return-void
.end method
