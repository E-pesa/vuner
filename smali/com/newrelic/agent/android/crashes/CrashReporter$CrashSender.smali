.class Lcom/newrelic/agent/android/crashes/CrashReporter$CrashSender;
.super Ljava/lang/Object;
.source "CrashReporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newrelic/agent/android/crashes/CrashReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CrashSender"
.end annotation


# instance fields
.field private final crash:Lcom/newrelic/agent/android/harvest/crash/Crash;

.field final synthetic this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;


# direct methods
.method constructor <init>(Lcom/newrelic/agent/android/crashes/CrashReporter;Lcom/newrelic/agent/android/harvest/crash/Crash;)V
    .locals 0
    .param p2, "crash"    # Lcom/newrelic/agent/android/harvest/crash/Crash;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$CrashSender;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p2, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$CrashSender;->crash:Lcom/newrelic/agent/android/harvest/crash/Crash;

    .line 187
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 192
    :try_start_0
    invoke-static {}, Lcom/newrelic/agent/android/crashes/CrashReporter;->access$600()Lcom/newrelic/agent/android/AgentConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lcom/newrelic/agent/android/AgentConfiguration;->useSsl()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v3, "https://"

    .line 193
    .local v3, "protocol":Ljava/lang/String;
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/newrelic/agent/android/crashes/CrashReporter;->access$600()Lcom/newrelic/agent/android/AgentConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Lcom/newrelic/agent/android/AgentConfiguration;->getCrashCollectorHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/mobile_crash"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 194
    .local v5, "urlString":Ljava/lang/String;
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 195
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 197
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 198
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 199
    const-string v6, "Content-Type"

    const-string v7, "application/json"

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const/16 v6, 0x1388

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :try_start_1
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 204
    .local v2, "out":Ljava/io/OutputStream;
    iget-object v6, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$CrashSender;->crash:Lcom/newrelic/agent/android/harvest/crash/Crash;

    invoke-virtual {v6}, Lcom/newrelic/agent/android/harvest/crash/Crash;->toJsonString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/OutputStream;->write([B)V

    .line 205
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 207
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_1

    .line 208
    iget-object v6, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$CrashSender;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-static {v6}, Lcom/newrelic/agent/android/crashes/CrashReporter;->access$300(Lcom/newrelic/agent/android/crashes/CrashReporter;)Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Crash "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$CrashSender;->crash:Lcom/newrelic/agent/android/harvest/crash/Crash;

    invoke-virtual {v8}, Lcom/newrelic/agent/android/harvest/crash/Crash;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " successfully submitted."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 209
    iget-object v6, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$CrashSender;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-static {v6}, Lcom/newrelic/agent/android/crashes/CrashReporter;->access$700(Lcom/newrelic/agent/android/crashes/CrashReporter;)Lcom/newrelic/agent/android/crashes/CrashStore;

    move-result-object v6

    iget-object v7, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$CrashSender;->crash:Lcom/newrelic/agent/android/harvest/crash/Crash;

    invoke-interface {v6, v7}, Lcom/newrelic/agent/android/crashes/CrashStore;->delete(Lcom/newrelic/agent/android/harvest/crash/Crash;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 219
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v3    # "protocol":Ljava/lang/String;
    .end local v4    # "url":Ljava/net/URL;
    .end local v5    # "urlString":Ljava/lang/String;
    :goto_2
    return-void

    .line 192
    :cond_0
    const-string v3, "http://"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 211
    .restart local v0    # "connection":Ljava/net/HttpURLConnection;
    .restart local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "protocol":Ljava/lang/String;
    .restart local v4    # "url":Ljava/net/URL;
    .restart local v5    # "urlString":Ljava/lang/String;
    :cond_1
    :try_start_3
    iget-object v6, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$CrashSender;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-static {v6}, Lcom/newrelic/agent/android/crashes/CrashReporter;->access$300(Lcom/newrelic/agent/android/crashes/CrashReporter;)Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Something went wrong while submitting a crash (will try again later) - Response code "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 214
    .end local v2    # "out":Ljava/io/OutputStream;
    :catchall_0
    move-exception v6

    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 216
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v3    # "protocol":Ljava/lang/String;
    .end local v4    # "url":Ljava/net/URL;
    .end local v5    # "urlString":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 217
    .local v1, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$CrashSender;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-static {v6}, Lcom/newrelic/agent/android/crashes/CrashReporter;->access$300(Lcom/newrelic/agent/android/crashes/CrashReporter;)Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v6

    const-string v7, "Unable to report crash to New Relic, will try again later."

    invoke-interface {v6, v7, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
