.class public Lcom/tigo/mfsapp/logs/ActivityLogAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ActivityLogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/logs/ActivityLogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public date:Landroid/widget/TextView;

.field public detail:Landroid/widget/TextView;

.field public info:Lcom/tigo/mfsapp/model/ActivityLogInfo;

.field public operation:Landroid/widget/TextView;

.field public threeDots:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
