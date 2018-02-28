.class Lcom/tigo/mfsapp/service/Request$RunGetContents$2;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/service/Request$RunGetContents;->handleExceptionNewRelic(Ljava/lang/String;JJLjava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tigo/mfsapp/service/Request$RunGetContents;

.field final synthetic val$e:Ljava/lang/Exception;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/service/Request$RunGetContents;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tigo/mfsapp/service/Request$RunGetContents;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/tigo/mfsapp/service/Request$RunGetContents$2;->this$1:Lcom/tigo/mfsapp/service/Request$RunGetContents;

    iput-object p2, p0, Lcom/tigo/mfsapp/service/Request$RunGetContents$2;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/tigo/mfsapp/service/Request$RunGetContents$2;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    .line 248
    iget-object v1, p0, Lcom/tigo/mfsapp/service/Request$RunGetContents$2;->val$url:Ljava/lang/String;

    iget-object v6, p0, Lcom/tigo/mfsapp/service/Request$RunGetContents$2;->val$e:Ljava/lang/Exception;

    move-wide v4, v2

    invoke-static/range {v1 .. v6}, Lcom/tigo/mfsapp/common/NewRelicService;->logNoticeNetworkFailure(Ljava/lang/String;JJLjava/lang/Exception;)V

    .line 249
    return-void
.end method
