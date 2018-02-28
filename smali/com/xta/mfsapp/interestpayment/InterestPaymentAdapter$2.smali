.class Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter$2;
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

.field final synthetic val$dots:Landroid/widget/ImageView;

.field final synthetic val$info:Lcom/tigo/mfsapp/model/InterestPaymentInfo;

.field final synthetic val$rowView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter;Lcom/tigo/mfsapp/model/InterestPaymentInfo;Landroid/view/View;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter$2;->this$0:Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter;

    iput-object p2, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter$2;->val$info:Lcom/tigo/mfsapp/model/InterestPaymentInfo;

    iput-object p3, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter$2;->val$rowView:Landroid/view/View;

    iput-object p4, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter$2;->val$dots:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const v3, 0x7f0d020a

    const/4 v2, 0x0

    .line 85
    iget-object v0, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter$2;->val$info:Lcom/tigo/mfsapp/model/InterestPaymentInfo;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/InterestPaymentInfo;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter$2;->val$info:Lcom/tigo/mfsapp/model/InterestPaymentInfo;

    invoke-virtual {v0, v2}, Lcom/tigo/mfsapp/model/InterestPaymentInfo;->setOpened(Z)V

    .line 88
    iget-object v0, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter$2;->val$rowView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter$2;->val$dots:Landroid/widget/ImageView;

    const v1, 0x7f020097

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter$2;->val$info:Lcom/tigo/mfsapp/model/InterestPaymentInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/model/InterestPaymentInfo;->setOpened(Z)V

    .line 93
    iget-object v0, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter$2;->val$rowView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter$2;->val$dots:Landroid/widget/ImageView;

    const v1, 0x7f020137

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
