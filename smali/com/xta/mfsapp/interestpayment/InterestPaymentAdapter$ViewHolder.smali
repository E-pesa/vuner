.class public Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "InterestPaymentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public confirmButton:Landroid/widget/Button;

.field public confirmedText:Landroid/widget/TextView;

.field public description:Landroid/widget/TextView;

.field public info:Lcom/tigo/mfsapp/model/InterestPaymentInfo;

.field public threeDots:Landroid/view/View;

.field public title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
