.class Lcom/tigo/mfsapp/service/Request$RunGetContents$4;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/service/Request$RunGetContents;->handleTimigsAnalytics(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tigo/mfsapp/service/Request$RunGetContents;

.field final synthetic val$intervalInMilliseconds:J

.field final synthetic val$requestUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/service/Request$RunGetContents;Ljava/lang/String;J)V
    .locals 1
    .param p1, "this$1"    # Lcom/tigo/mfsapp/service/Request$RunGetContents;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/tigo/mfsapp/service/Request$RunGetContents$4;->this$1:Lcom/tigo/mfsapp/service/Request$RunGetContents;

    iput-object p2, p0, Lcom/tigo/mfsapp/service/Request$RunGetContents$4;->val$requestUrl:Ljava/lang/String;

    iput-wide p3, p0, Lcom/tigo/mfsapp/service/Request$RunGetContents$4;->val$intervalInMilliseconds:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 288
    :try_start_0
    iget-object v7, p0, Lcom/tigo/mfsapp/service/Request$RunGetContents$4;->val$requestUrl:Ljava/lang/String;

    iget-object v8, p0, Lcom/tigo/mfsapp/service/Request$RunGetContents$4;->val$requestUrl:Ljava/lang/String;

    const-string v9, "api"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 289
    .local v4, "s":Ljava/lang/String;
    const-string v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "array":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v7, v0

    if-ge v2, v7, :cond_0

    .line 294
    aget-object v6, v0, v2

    .line 295
    .local v6, "str":Ljava/lang/String;
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 299
    .end local v6    # "str":Ljava/lang/String;
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 301
    .local v3, "name":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tigo/mfsapp/app/MfsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "services"

    iget-wide v10, p0, Lcom/tigo/mfsapp/service/Request$RunGetContents$4;->val$intervalInMilliseconds:J

    invoke-static {v7, v8, v10, v11, v3}, Lcom/tigo/mfsapp/common/AnalitycsTracker;->sendTimingTrack(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    .end local v0    # "array":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    return-void

    .line 302
    :catch_0
    move-exception v1

    .line 304
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/tigo/mfsapp/utils/Logger;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method
