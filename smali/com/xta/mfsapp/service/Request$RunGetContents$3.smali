.class Lcom/tigo/mfsapp/service/Request$RunGetContents$3;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/service/Request$RunGetContents;->handleResponseAnalytics(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tigo/mfsapp/service/Request$RunGetContents;

.field final synthetic val$requestUrl:Ljava/lang/String;

.field final synthetic val$responseString:Ljava/lang/String;

.field final synthetic val$statusCode:I


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/service/Request$RunGetContents;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tigo/mfsapp/service/Request$RunGetContents;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/tigo/mfsapp/service/Request$RunGetContents$3;->this$1:Lcom/tigo/mfsapp/service/Request$RunGetContents;

    iput-object p2, p0, Lcom/tigo/mfsapp/service/Request$RunGetContents$3;->val$requestUrl:Ljava/lang/String;

    iput p3, p0, Lcom/tigo/mfsapp/service/Request$RunGetContents$3;->val$statusCode:I

    iput-object p4, p0, Lcom/tigo/mfsapp/service/Request$RunGetContents$3;->val$responseString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 264
    :try_start_0
    const-string v1, "Request to: %1$s Status Code:%2$s Response: %3$s"

    .line 265
    .local v1, "sendtoAnalytics":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tigo/mfsapp/service/Request$RunGetContents$3;->val$requestUrl:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/tigo/mfsapp/service/Request$RunGetContents$3;->val$statusCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/tigo/mfsapp/service/Request$RunGetContents$3;->val$responseString:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 266
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/app/MfsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/tigo/mfsapp/common/AnalitycsTracker;->sendErrorEvent(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    .end local v1    # "sendtoAnalytics":Ljava/lang/String;
    :goto_0
    return-void

    .line 268
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/tigo/mfsapp/utils/Logger;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
