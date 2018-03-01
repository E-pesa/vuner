.class public Lcom/tigo/mfsapp/model/maps/GetMarksParam;
.super Ljava/lang/Object;
.source "GetMarksParam.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/model/maps/GetMarksParam$MyLocation;,
        Lcom/tigo/mfsapp/model/maps/GetMarksParam$NE;,
        Lcom/tigo/mfsapp/model/maps/GetMarksParam$SW;
    }
.end annotation


# instance fields
.field private MinScreenSide:D

.field private MyLocation:Lcom/tigo/mfsapp/model/maps/GetMarksParam$MyLocation;

.field private NE:Lcom/tigo/mfsapp/model/maps/GetMarksParam$NE;

.field private SW:Lcom/tigo/mfsapp/model/maps/GetMarksParam$SW;

.field private Type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    return-void
.end method


# virtual methods
.method public getMinScreenSide()D
    .locals 2

    .prologue
    .line 13
    iget-wide v0, p0, Lcom/tigo/mfsapp/model/maps/GetMarksParam;->MinScreenSide:D

    return-wide v0
.end method

.method public getMyLocation()Lcom/tigo/mfsapp/model/maps/GetMarksParam$MyLocation;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tigo/mfsapp/model/maps/GetMarksParam;->MyLocation:Lcom/tigo/mfsapp/model/maps/GetMarksParam$MyLocation;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/tigo/mfsapp/model/maps/GetMarksParam$MyLocation;

    invoke-direct {v0, p0}, Lcom/tigo/mfsapp/model/maps/GetMarksParam$MyLocation;-><init>(Lcom/tigo/mfsapp/model/maps/GetMarksParam;)V

    iput-object v0, p0, Lcom/tigo/mfsapp/model/maps/GetMarksParam;->MyLocation:Lcom/tigo/mfsapp/model/maps/GetMarksParam$MyLocation;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/model/maps/GetMarksParam;->MyLocation:Lcom/tigo/mfsapp/model/maps/GetMarksParam$MyLocation;

    return-object v0
.end method

.method public getNE()Lcom/tigo/mfsapp/model/maps/GetMarksParam$NE;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tigo/mfsapp/model/maps/GetMarksParam;->NE:Lcom/tigo/mfsapp/model/maps/GetMarksParam$NE;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/tigo/mfsapp/model/maps/GetMarksParam$NE;

    invoke-direct {v0, p0}, Lcom/tigo/mfsapp/model/maps/GetMarksParam$NE;-><init>(Lcom/tigo/mfsapp/model/maps/GetMarksParam;)V

    iput-object v0, p0, Lcom/tigo/mfsapp/model/maps/GetMarksParam;->NE:Lcom/tigo/mfsapp/model/maps/GetMarksParam$NE;

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/model/maps/GetMarksParam;->NE:Lcom/tigo/mfsapp/model/maps/GetMarksParam$NE;

    return-object v0
.end method

.method public getSW()Lcom/tigo/mfsapp/model/maps/GetMarksParam$SW;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tigo/mfsapp/model/maps/GetMarksParam;->SW:Lcom/tigo/mfsapp/model/maps/GetMarksParam$SW;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/tigo/mfsapp/model/maps/GetMarksParam$SW;

    invoke-direct {v0, p0}, Lcom/tigo/mfsapp/model/maps/GetMarksParam$SW;-><init>(Lcom/tigo/mfsapp/model/maps/GetMarksParam;)V

    iput-object v0, p0, Lcom/tigo/mfsapp/model/maps/GetMarksParam;->SW:Lcom/tigo/mfsapp/model/maps/GetMarksParam$SW;

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/model/maps/GetMarksParam;->SW:Lcom/tigo/mfsapp/model/maps/GetMarksParam$SW;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tigo/mfsapp/model/maps/GetMarksParam;->Type:Ljava/lang/String;

    return-object v0
.end method

.method public setMinScreenSide(D)V
    .locals 1
    .param p1, "minScreenSide"    # D

    .prologue
    .line 18
    iput-wide p1, p0, Lcom/tigo/mfsapp/model/maps/GetMarksParam;->MinScreenSide:D

    .line 19
    return-void
.end method

.method public setMyLocation(Lcom/tigo/mfsapp/model/maps/GetMarksParam$MyLocation;)V
    .locals 0
    .param p1, "myLocation"    # Lcom/tigo/mfsapp/model/maps/GetMarksParam$MyLocation;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/tigo/mfsapp/model/maps/GetMarksParam;->MyLocation:Lcom/tigo/mfsapp/model/maps/GetMarksParam$MyLocation;

    .line 71
    return-void
.end method

.method public setNE(Lcom/tigo/mfsapp/model/maps/GetMarksParam$NE;)V
    .locals 0
    .param p1, "nE"    # Lcom/tigo/mfsapp/model/maps/GetMarksParam$NE;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/tigo/mfsapp/model/maps/GetMarksParam;->NE:Lcom/tigo/mfsapp/model/maps/GetMarksParam$NE;

    .line 57
    return-void
.end method

.method public setSW(Lcom/tigo/mfsapp/model/maps/GetMarksParam$SW;)V
    .locals 0
    .param p1, "sW"    # Lcom/tigo/mfsapp/model/maps/GetMarksParam$SW;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/tigo/mfsapp/model/maps/GetMarksParam;->SW:Lcom/tigo/mfsapp/model/maps/GetMarksParam$SW;

    .line 43
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/tigo/mfsapp/model/maps/GetMarksParam;->Type:Ljava/lang/String;

    .line 29
    return-void
.end method
