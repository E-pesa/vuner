.class Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment$InterestPaymentItemClickListener;
.super Ljava/lang/Object;
.source "InterestPaymentFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterestPaymentItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;


# direct methods
.method private constructor <init>(Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment$InterestPaymentItemClickListener;->this$0:Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;
    .param p2, "x1"    # Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment$1;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment$InterestPaymentItemClickListener;-><init>(Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    check-cast p2, Lcom/tigo/mfsapp/components/InterestPaymentItem;

    .end local p2    # "view":Landroid/view/View;
    invoke-virtual {p2}, Lcom/tigo/mfsapp/components/InterestPaymentItem;->openClose()V

    .line 81
    return-void
.end method
