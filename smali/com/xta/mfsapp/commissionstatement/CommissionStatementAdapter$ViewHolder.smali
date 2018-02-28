.class public Lcom/tigo/mfsapp/commissionstatement/CommissionStatementAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CommissionStatementAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/commissionstatement/CommissionStatementAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public amount:Landroid/widget/TextView;

.field public date:Landroid/widget/TextView;

.field public transacctiondescription:Landroid/widget/TextView;

.field public transacctionid:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
