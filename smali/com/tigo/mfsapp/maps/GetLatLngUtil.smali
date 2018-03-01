.class public Lcom/tigo/mfsapp/maps/GetLatLngUtil;
.super Ljava/lang/Object;
.source "GetLatLngUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/maps/GetLatLngUtil$GetLatLngAsyncTask;,
        Lcom/tigo/mfsapp/maps/GetLatLngUtil$GetLatLngResult;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static getLatLng(Landroid/content/Context;Ljava/lang/String;Lcom/tigo/mfsapp/maps/GetLatLngUtil$GetLatLngResult;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "resultListener"    # Lcom/tigo/mfsapp/maps/GetLatLngUtil$GetLatLngResult;

    .prologue
    .line 44
    const-string v1, "YESICA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLatLng"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance v0, Lcom/tigo/mfsapp/maps/GetLatLngUtil$GetLatLngAsyncTask;

    invoke-direct {v0, p0, p2}, Lcom/tigo/mfsapp/maps/GetLatLngUtil$GetLatLngAsyncTask;-><init>(Landroid/content/Context;Lcom/tigo/mfsapp/maps/GetLatLngUtil$GetLatLngResult;)V

    .line 46
    .local v0, "latLngAsyncTask":Lcom/tigo/mfsapp/maps/GetLatLngUtil$GetLatLngAsyncTask;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/maps/GetLatLngUtil$GetLatLngAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 47
    return-void
.end method
