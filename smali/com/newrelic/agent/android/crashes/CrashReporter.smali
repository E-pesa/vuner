.class public Lcom/newrelic/agent/android/crashes/CrashReporter;
.super Ljava/lang/Object;
.source "CrashReporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newrelic/agent/android/crashes/CrashReporter$1;,
        Lcom/newrelic/agent/android/crashes/CrashReporter$CrashSender;,
        Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;
    }
.end annotation


# static fields
.field private static final CRASH_COLLECTOR_PATH:Ljava/lang/String; = "/mobile_crash"

.field private static final CRASH_COLLECTOR_TIMEOUT:I = 0x1388

.field private static agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

.field private static final initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final instance:Lcom/newrelic/agent/android/crashes/CrashReporter;


# instance fields
.field private crashStore:Lcom/newrelic/agent/android/crashes/CrashStore;

.field private isEnabled:Z

.field private final log:Lcom/newrelic/agent/android/logging/AgentLog;

.field private previousExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private reportCrashes:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-direct {v0}, Lcom/newrelic/agent/android/crashes/CrashReporter;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->instance:Lcom/newrelic/agent/android/crashes/CrashReporter;

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/crashes/CrashReporter;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/newrelic/agent/android/crashes/CrashReporter;->isEnabled:Z

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/newrelic/agent/android/crashes/CrashReporter;->reportCrashes:Z

    .line 182
    return-void
.end method

.method static synthetic access$100()Lcom/newrelic/agent/android/crashes/CrashReporter;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->instance:Lcom/newrelic/agent/android/crashes/CrashReporter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/newrelic/agent/android/crashes/CrashReporter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/newrelic/agent/android/crashes/CrashReporter;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/newrelic/agent/android/crashes/CrashReporter;->isEnabled:Z

    return v0
.end method

.method static synthetic access$300(Lcom/newrelic/agent/android/crashes/CrashReporter;)Lcom/newrelic/agent/android/logging/AgentLog;
    .locals 1
    .param p0, "x0"    # Lcom/newrelic/agent/android/crashes/CrashReporter;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/newrelic/agent/android/crashes/CrashReporter;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/newrelic/agent/android/crashes/CrashReporter;Lcom/newrelic/agent/android/harvest/crash/Crash;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/newrelic/agent/android/crashes/CrashReporter;
    .param p1, "x1"    # Lcom/newrelic/agent/android/harvest/crash/Crash;
    .param p2, "x2"    # Z

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/newrelic/agent/android/crashes/CrashReporter;->reportCrash(Lcom/newrelic/agent/android/harvest/crash/Crash;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/newrelic/agent/android/crashes/CrashReporter;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1
    .param p0, "x0"    # Lcom/newrelic/agent/android/crashes/CrashReporter;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/newrelic/agent/android/crashes/CrashReporter;->previousExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method static synthetic access$600()Lcom/newrelic/agent/android/AgentConfiguration;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    return-object v0
.end method

.method static synthetic access$700(Lcom/newrelic/agent/android/crashes/CrashReporter;)Lcom/newrelic/agent/android/crashes/CrashStore;
    .locals 1
    .param p0, "x0"    # Lcom/newrelic/agent/android/crashes/CrashReporter;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/newrelic/agent/android/crashes/CrashReporter;->crashStore:Lcom/newrelic/agent/android/crashes/CrashStore;

    return-object v0
.end method

.method public static clear()V
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->instance:Lcom/newrelic/agent/android/crashes/CrashReporter;

    iget-object v0, v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->crashStore:Lcom/newrelic/agent/android/crashes/CrashStore;

    invoke-interface {v0}, Lcom/newrelic/agent/android/crashes/CrashStore;->clear()V

    .line 82
    return-void
.end method

.method public static fetchAllCrashes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/newrelic/agent/android/harvest/crash/Crash;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    sget-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->instance:Lcom/newrelic/agent/android/crashes/CrashReporter;

    iget-object v0, v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->crashStore:Lcom/newrelic/agent/android/crashes/CrashStore;

    invoke-interface {v0}, Lcom/newrelic/agent/android/crashes/CrashStore;->fetchAll()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getAgentConfiguration()Lcom/newrelic/agent/android/AgentConfiguration;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    return-object v0
.end method

.method public static getInstanceHandler()Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->instance:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/crashes/CrashReporter;->getHandler()Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;

    move-result-object v0

    return-object v0
.end method

.method public static initialize(Lcom/newrelic/agent/android/AgentConfiguration;)V
    .locals 3
    .param p0, "_agentConfiguration"    # Lcom/newrelic/agent/android/AgentConfiguration;

    .prologue
    .line 40
    sget-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    sput-object p0, Lcom/newrelic/agent/android/crashes/CrashReporter;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    .line 45
    sget-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->instance:Lcom/newrelic/agent/android/crashes/CrashReporter;

    sget-object v1, Lcom/newrelic/agent/android/crashes/CrashReporter;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/AgentConfiguration;->getReportCrashes()Z

    move-result v1

    iput-boolean v1, v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->isEnabled:Z

    .line 46
    sget-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->instance:Lcom/newrelic/agent/android/crashes/CrashReporter;

    sget-object v1, Lcom/newrelic/agent/android/crashes/CrashReporter;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/AgentConfiguration;->getCrashStore()Lcom/newrelic/agent/android/crashes/CrashStore;

    move-result-object v1

    iput-object v1, v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->crashStore:Lcom/newrelic/agent/android/crashes/CrashStore;

    .line 48
    sget-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->instance:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-direct {v0}, Lcom/newrelic/agent/android/crashes/CrashReporter;->reportSavedCrashes()V

    .line 50
    sget-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->instance:Lcom/newrelic/agent/android/crashes/CrashReporter;

    iget-boolean v0, v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->instance:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-direct {v0}, Lcom/newrelic/agent/android/crashes/CrashReporter;->installCrashHandler()V

    goto :goto_0
.end method

.method private installCrashHandler()V
    .locals 4

    .prologue
    .line 86
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 88
    .local v0, "currentExceptionHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    if-eqz v0, :cond_1

    .line 89
    instance-of v1, v0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/newrelic/agent/android/crashes/CrashReporter;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "New Relic crash handler already installed."

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 102
    :goto_0
    return-void

    .line 94
    :cond_0
    iput-object v0, p0, Lcom/newrelic/agent/android/crashes/CrashReporter;->previousExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 96
    iget-object v1, p0, Lcom/newrelic/agent/android/crashes/CrashReporter;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Installing New Relic crash handler and chaining "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/newrelic/agent/android/crashes/CrashReporter;->previousExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 101
    :goto_1
    new-instance v1, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;-><init>(Lcom/newrelic/agent/android/crashes/CrashReporter;Lcom/newrelic/agent/android/crashes/CrashReporter$1;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto :goto_0

    .line 98
    :cond_1
    iget-object v1, p0, Lcom/newrelic/agent/android/crashes/CrashReporter;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "Installing New Relic crash handler."

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private reportCrash(Lcom/newrelic/agent/android/harvest/crash/Crash;Z)V
    .locals 5
    .param p1, "crash"    # Lcom/newrelic/agent/android/harvest/crash/Crash;
    .param p2, "block"    # Z

    .prologue
    .line 117
    iget-object v3, p0, Lcom/newrelic/agent/android/crashes/CrashReporter;->crashStore:Lcom/newrelic/agent/android/crashes/CrashStore;

    invoke-interface {v3, p1}, Lcom/newrelic/agent/android/crashes/CrashStore;->store(Lcom/newrelic/agent/android/harvest/crash/Crash;)V

    .line 119
    iget-boolean v3, p0, Lcom/newrelic/agent/android/crashes/CrashReporter;->reportCrashes:Z

    if-eqz v3, :cond_0

    .line 120
    new-instance v1, Lcom/newrelic/agent/android/crashes/CrashReporter$CrashSender;

    invoke-direct {v1, p0, p1}, Lcom/newrelic/agent/android/crashes/CrashReporter$CrashSender;-><init>(Lcom/newrelic/agent/android/crashes/CrashReporter;Lcom/newrelic/agent/android/harvest/crash/Crash;)V

    .line 121
    .local v1, "sender":Lcom/newrelic/agent/android/crashes/CrashReporter$CrashSender;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 122
    .local v2, "senderThread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 124
    if-eqz p2, :cond_0

    .line 126
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v1    # "sender":Lcom/newrelic/agent/android/crashes/CrashReporter$CrashSender;
    .end local v2    # "senderThread":Ljava/lang/Thread;
    :cond_0
    :goto_0
    return-void

    .line 127
    .restart local v1    # "sender":Lcom/newrelic/agent/android/crashes/CrashReporter$CrashSender;
    .restart local v2    # "senderThread":Ljava/lang/Thread;
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v3, p0, Lcom/newrelic/agent/android/crashes/CrashReporter;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v4, "Exception caught while waiting to send crash"

    invoke-interface {v3, v4, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private reportSavedCrashes()V
    .locals 3

    .prologue
    .line 110
    iget-object v2, p0, Lcom/newrelic/agent/android/crashes/CrashReporter;->crashStore:Lcom/newrelic/agent/android/crashes/CrashStore;

    invoke-interface {v2}, Lcom/newrelic/agent/android/crashes/CrashStore;->fetchAll()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/harvest/crash/Crash;

    .line 111
    .local v0, "crash":Lcom/newrelic/agent/android/harvest/crash/Crash;
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/newrelic/agent/android/crashes/CrashReporter;->reportCrash(Lcom/newrelic/agent/android/harvest/crash/Crash;Z)V

    goto :goto_0

    .line 113
    .end local v0    # "crash":Lcom/newrelic/agent/android/harvest/crash/Crash;
    :cond_0
    return-void
.end method

.method public static resetForTesting()V
    .locals 3

    .prologue
    .line 106
    sget-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 107
    return-void
.end method

.method public static setReportCrashes(Z)V
    .locals 1
    .param p0, "reportCrashes"    # Z

    .prologue
    .line 68
    sget-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->instance:Lcom/newrelic/agent/android/crashes/CrashReporter;

    iput-boolean p0, v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->reportCrashes:Z

    .line 69
    return-void
.end method

.method public static storedCrashes()I
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->instance:Lcom/newrelic/agent/android/crashes/CrashReporter;

    iget-object v0, v0, Lcom/newrelic/agent/android/crashes/CrashReporter;->crashStore:Lcom/newrelic/agent/android/crashes/CrashStore;

    invoke-interface {v0}, Lcom/newrelic/agent/android/crashes/CrashStore;->count()I

    move-result v0

    return v0
.end method


# virtual methods
.method public getHandler()Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/newrelic/agent/android/crashes/CrashReporter$UncaughtExceptionHandler;-><init>(Lcom/newrelic/agent/android/crashes/CrashReporter;Lcom/newrelic/agent/android/crashes/CrashReporter$1;)V

    return-object v0
.end method
