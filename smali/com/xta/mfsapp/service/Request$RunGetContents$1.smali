.class Lcom/tigo/mfsapp/service/Request$RunGetContents$1;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/service/Request$RunGetContents;->handleErrorNewRelic(Ljava/lang/String;IJJJJLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tigo/mfsapp/service/Request$RunGetContents;

.field final synthetic val$data:Ljava/lang/String;

.field final synthetic val$endTime:J

.field final synthetic val$startTime:J

.field final synthetic val$statusCode:I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/service/Request$RunGetContents;Ljava/lang/String;IJJLjava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tigo/mfsapp/service/Request$RunGetContents;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/tigo/mfsapp/service/Request$RunGetContents$1;->this$1:Lcom/tigo/mfsapp/service/Request$RunGetContents;

    iput-object p2, p0, Lcom/tigo/mfsapp/service/Request$RunGetContents$1;->val$url:Ljava/lang/String;

    iput p3, p0, Lcom/tigo/mfsapp/service/Request$RunGetContents$1;->val$statusCode:I

    iput-wide p4, p0, Lcom/tigo/mfsapp/service/Request$RunGetContents$1;->val$startTime:J

    iput-wide p6, p0, Lcom/tigo/mfsapp/service/Request$RunGetContents$1;->val$endTime:J

    iput-object p8, p0, Lcom/tigo/mfsapp/service/Request$RunGetContents$1;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const-wide/16 v6, 0x0

    .line 234
    iget-object v0, p0, Lcom/tigo/mfsapp/service/Request$RunGetContents$1;->val$url:Ljava/lang/String;

    iget v1, p0, Lcom/tigo/mfsapp/service/Request$RunGetContents$1;->val$statusCode:I

    iget-wide v2, p0, Lcom/tigo/mfsapp/service/Request$RunGetContents$1;->val$startTime:J

    iget-wide v4, p0, Lcom/tigo/mfsapp/service/Request$RunGetContents$1;->val$endTime:J

    iget-object v10, p0, Lcom/tigo/mfsapp/service/Request$RunGetContents$1;->val$data:Ljava/lang/String;

    move-wide v8, v6

    invoke-static/range {v0 .. v10}, Lcom/tigo/mfsapp/common/NewRelicService;->logNewRelicHttpTransaction(Ljava/lang/String;IJJJJLjava/lang/String;)V

    .line 235
    return-void
.end method
