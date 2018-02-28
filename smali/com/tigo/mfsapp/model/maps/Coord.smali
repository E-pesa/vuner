.class public Lcom/tigo/mfsapp/model/maps/Coord;
.super Ljava/lang/Object;
.source "Coord.java"


# instance fields
.field private Lat:D

.field private Lng:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLat()D
    .locals 2

    .prologue
    .line 10
    iget-wide v0, p0, Lcom/tigo/mfsapp/model/maps/Coord;->Lat:D

    return-wide v0
.end method

.method public getLng()D
    .locals 2

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/tigo/mfsapp/model/maps/Coord;->Lng:D

    return-wide v0
.end method

.method public setLat(D)V
    .locals 1
    .param p1, "lat"    # D

    .prologue
    .line 15
    iput-wide p1, p0, Lcom/tigo/mfsapp/model/maps/Coord;->Lat:D

    .line 16
    return-void
.end method

.method public setLng(D)V
    .locals 1
    .param p1, "lng"    # D

    .prologue
    .line 25
    iput-wide p1, p0, Lcom/tigo/mfsapp/model/maps/Coord;->Lng:D

    .line 26
    return-void
.end method
