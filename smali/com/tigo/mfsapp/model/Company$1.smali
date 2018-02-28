.class final Lcom/tigo/mfsapp/model/Company$1;
.super Ljava/lang/Object;
.source "Company.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/model/Company;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/tigo/mfsapp/model/Company;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tigo/mfsapp/model/Company;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 215
    new-instance v0, Lcom/tigo/mfsapp/model/Company;

    invoke-direct {v0, p1}, Lcom/tigo/mfsapp/model/Company;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0, p1}, Lcom/tigo/mfsapp/model/Company$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tigo/mfsapp/model/Company;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/tigo/mfsapp/model/Company;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 221
    new-array v0, p1, [Lcom/tigo/mfsapp/model/Company;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0, p1}, Lcom/tigo/mfsapp/model/Company$1;->newArray(I)[Lcom/tigo/mfsapp/model/Company;

    move-result-object v0

    return-object v0
.end method
