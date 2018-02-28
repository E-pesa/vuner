.class public final Lcom/tigo/mfsapp/common/NewRelicService;
.super Ljava/lang/Object;
.source "NewRelicService.java"


# static fields
.field private static NEW_RELIC_API_KEY:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v0

    const v1, 0x7f060303

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/app/MfsApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tigo/mfsapp/common/NewRelicService;->NEW_RELIC_API_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    sput-object p0, Lcom/tigo/mfsapp/common/NewRelicService;->mContext:Landroid/content/Context;

    .line 21
    sget-object v0, Lcom/tigo/mfsapp/common/NewRelicService;->NEW_RELIC_API_KEY:Ljava/lang/String;

    invoke-static {v0}, Lcom/newrelic/agent/android/NewRelic;->withApplicationToken(Ljava/lang/String;)Lcom/newrelic/agent/android/NewRelic;

    move-result-object v0

    sget-object v1, Lcom/tigo/mfsapp/common/NewRelicService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/NewRelic;->start(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public static logNewRelicHttpTransaction(Ljava/lang/String;IJJJJLjava/lang/String;)V
    .locals 12
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "statusCode"    # I
    .param p2, "startTime"    # J
    .param p4, "endTime"    # J
    .param p6, "bytesSend"    # J
    .param p8, "bytesReceived"    # J
    .param p10, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-static {}, Lcom/newrelic/agent/android/NewRelic;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    sget-object v0, Lcom/tigo/mfsapp/common/NewRelicService;->NEW_RELIC_API_KEY:Ljava/lang/String;

    invoke-static {v0}, Lcom/newrelic/agent/android/NewRelic;->withApplicationToken(Ljava/lang/String;)Lcom/newrelic/agent/android/NewRelic;

    move-result-object v0

    sget-object v1, Lcom/tigo/mfsapp/common/NewRelicService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/NewRelic;->start(Landroid/content/Context;)V

    .line 34
    :cond_0
    :try_start_0
    invoke-static/range {p10 .. p10}, Lcom/tigo/mfsapp/utils/Base64;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-static/range {v0 .. v10}, Lcom/newrelic/agent/android/NewRelic;->noticeHttpTransaction(Ljava/lang/String;IJJJJLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v11

    .line 39
    .local v11, "e":Ljava/lang/Exception;
    const-string v0, "Error NewRelic.noticeHttpTransaction()"

    invoke-static {v0}, Lcom/tigo/mfsapp/utils/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static logNoticeNetworkFailure(Ljava/lang/String;JJLjava/lang/Exception;)V
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J
    .param p5, "e"    # Ljava/lang/Exception;

    .prologue
    .line 47
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v6, p5

    :try_start_0
    invoke-static/range {v1 .. v6}, Lcom/newrelic/agent/android/NewRelic;->noticeNetworkFailure(Ljava/lang/String;JJLjava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 52
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "Error NewRelic.noticeNetworkFailure()"

    invoke-static {v1}, Lcom/tigo/mfsapp/utils/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
