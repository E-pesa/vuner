.class public Lcom/tigo/mfsapp/model/maps/GetMarksParam$NE;
.super Ljava/lang/Object;
.source "GetMarksParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/model/maps/GetMarksParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NE"
.end annotation


# instance fields
.field private Lat:D

.field private Lng:D

.field final synthetic this$0:Lcom/tigo/mfsapp/model/maps/GetMarksParam;


# direct methods
.method public constructor <init>(Lcom/tigo/mfsapp/model/maps/GetMarksParam;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/model/maps/GetMarksParam;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/tigo/mfsapp/model/maps/GetMarksParam$NE;->this$0:Lcom/tigo/mfsapp/model/maps/GetMarksParam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLat()D
    .locals 2

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/tigo/mfsapp/model/maps/GetMarksParam$NE;->Lat:D

    return-wide v0
.end method

.method public getLng()D
    .locals 2

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/tigo/mfsapp/model/maps/GetMarksParam$NE;->Lng:D

    return-wide v0
.end method

.method public setLat(D)V
    .locals 1
    .param p1, "lat"    # D

    .prologue
    .line 112
    iput-wide p1, p0, Lcom/tigo/mfsapp/model/maps/GetMarksParam$NE;->Lat:D

    .line 113
    return-void
.end method

.method public setLng(D)V
    .locals 1
    .param p1, "lng"    # D

    .prologue
    .line 122
    iput-wide p1, p0, Lcom/tigo/mfsapp/model/maps/GetMarksParam$NE;->Lng:D

    .line 123
    return-void
.end method
