.class public Lcom/tigo/mfsapp/model/maps/Cluster;
.super Ljava/lang/Object;
.source "Cluster.java"


# instance fields
.field private Coord:Lcom/tigo/mfsapp/model/maps/Coord;

.field private NumberOfPins:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCoord()Lcom/tigo/mfsapp/model/maps/Coord;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/tigo/mfsapp/model/maps/Cluster;->Coord:Lcom/tigo/mfsapp/model/maps/Coord;

    return-object v0
.end method

.method public getNumberOfPins()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/tigo/mfsapp/model/maps/Cluster;->NumberOfPins:I

    return v0
.end method

.method public setCoord(Lcom/tigo/mfsapp/model/maps/Coord;)V
    .locals 0
    .param p1, "coord"    # Lcom/tigo/mfsapp/model/maps/Coord;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/tigo/mfsapp/model/maps/Cluster;->Coord:Lcom/tigo/mfsapp/model/maps/Coord;

    .line 16
    return-void
.end method

.method public setNumberOfPins(I)V
    .locals 0
    .param p1, "numberOfPins"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/tigo/mfsapp/model/maps/Cluster;->NumberOfPins:I

    .line 26
    return-void
.end method
