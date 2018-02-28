.class Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;
.super Ljava/lang/Object;
.source "CrashReporter.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newrelic/agent/android/crashes/CrashReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UncaughtExceptionHandler"
.end annotation


# instance fields
.field private final handledException:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;


# direct methods
.method private constructor <init>(Lcom/newrelic/agent/android/crashes/CrashReporter;)V
    .locals 2

    .prologue
    .line 134
    iput-object p1, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->handledException:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method synthetic constructor <init>(Lcom/newrelic/agent/android/crashes/CrashReporter;Lcom/newrelic/agent/android/crashes/CrashReporter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/newrelic/agent/android/crashes/CrashReporter;
    .param p2, "x1"    # Lcom/newrelic/agent/android/crashes/CrashReporter$1;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;-><init>(Lcom/newrelic/agent/android/crashes/CrashReporter;)V

    return-void
.end method

.method private chainExceptionHandler(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-static {v0}, Lcom/newrelic/agent/android/crashes/CrashReporter;->access$500(Lcom/newrelic/agent/android/crashes/CrashReporter;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-static {v0}, Lcom/newrelic/agent/android/crashes/CrashReporter;->access$300(Lcom/newrelic/agent/android/crashes/CrashReporter;)Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Chaining crash reporting duties to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-static {v2}, Lcom/newrelic/agent/android/crashes/CrashReporter;->access$500(Lcom/newrelic/agent/android/crashes/CrashReporter;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-static {v0}, Lcom/newrelic/agent/android/crashes/CrashReporter;->access$500(Lcom/newrelic/agent/android/crashes/CrashReporter;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 179
    :cond_0
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 141
    iget-object v3, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->handledException:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-nez v3, :cond_0

    .line 142
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v3

    const-string v4, "Supportability/AgentHealth/Recursion/UncaughtExceptionHandler"

    invoke-virtual {v3, v4}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    .line 171
    :goto_0
    return-void

    .line 147
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/newrelic/agent/android/crashes/CrashReporter;->access$100()Lcom/newrelic/agent/android/crashes/CrashReporter;

    move-result-object v3

    invoke-static {v3}, Lcom/newrelic/agent/android/crashes/CrashReporter;->access$200(Lcom/newrelic/agent/android/crashes/CrashReporter;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 148
    iget-object v3, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-static {v3}, Lcom/newrelic/agent/android/crashes/CrashReporter;->access$300(Lcom/newrelic/agent/android/crashes/CrashReporter;)Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v3

    const-string v4, "A crash has been detected but crash reporting is disabled!"

    invoke-interface {v3, v4}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 149
    invoke-direct {p0, p1, p2}, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->chainExceptionHandler(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 166
    :catch_0
    move-exception v1

    .line 168
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-static {v3}, Lcom/newrelic/agent/android/crashes/CrashReporter;->access$300(Lcom/newrelic/agent/android/crashes/CrashReporter;)Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v3

    const-string v4, "Error encountered while preparing crash for New Relic!"

    invoke-interface {v3, v4, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 169
    invoke-direct {p0, p1, p2}, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->chainExceptionHandler(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 153
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_1
    :try_start_1
    new-instance v2, Lcom/newrelic/agent/android/stats/TicToc;

    invoke-direct {v2}, Lcom/newrelic/agent/android/stats/TicToc;-><init>()V

    .line 154
    .local v2, "timer":Lcom/newrelic/agent/android/stats/TicToc;
    invoke-virtual {v2}, Lcom/newrelic/agent/android/stats/TicToc;->tic()V

    .line 156
    iget-object v3, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-static {v3}, Lcom/newrelic/agent/android/crashes/CrashReporter;->access$300(Lcom/newrelic/agent/android/crashes/CrashReporter;)Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A crash has been detected in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and will be reported ASAP."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 158
    new-instance v0, Lcom/newrelic/agent/android/harvest/crash/Crash;

    invoke-direct {v0, p2}, Lcom/newrelic/agent/android/harvest/crash/Crash;-><init>(Ljava/lang/Throwable;)V

    .line 160
    .local v0, "crash":Lcom/newrelic/agent/android/harvest/crash/Crash;
    iget-object v3, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    const/4 v4, 0x1

    invoke-static {v3, v0, v4}, Lcom/newrelic/agent/android/crashes/CrashReporter;->access$400(Lcom/newrelic/agent/android/crashes/CrashReporter;Lcom/newrelic/agent/android/harvest/crash/Crash;Z)V

    .line 163
    iget-object v3, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-static {v3}, Lcom/newrelic/agent/android/crashes/CrashReporter;->access$300(Lcom/newrelic/agent/android/crashes/CrashReporter;)Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Crash collection took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/newrelic/agent/android/stats/TicToc;->toc()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 165
    invoke-direct {p0, p1, p2}, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;->chainExceptionHandler(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
