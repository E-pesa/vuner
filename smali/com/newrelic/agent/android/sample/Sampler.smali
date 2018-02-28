.class public Lcom/newrelic/agent/android/sample/Sampler;
.super Ljava/lang/Object;
.source "Sampler.java"

# interfaces
.implements Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;
.implements Ljava/lang/Runnable;


# static fields
.field private static final KB_IN_MB:I = 0x400

.field private static final PID:[I

.field private static final SAMPLE_FREQ_MS:J = 0x64L

.field private static cpuSamplingDisabled:Z

.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;

.field private static sampler:Lcom/newrelic/agent/android/sample/Sampler;

.field private static final samplerLock:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field private final activityManager:Landroid/app/ActivityManager;

.field private appStatFile:Ljava/io/RandomAccessFile;

.field private final isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private lastAppCpuTime:Ljava/lang/Long;

.field private lastCpuTime:Ljava/lang/Long;

.field private procStatFile:Ljava/io/RandomAccessFile;

.field private sampleFuture:Ljava/util/concurrent/ScheduledFuture;

.field private final samples:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/newrelic/agent/android/tracing/Sample$SampleType;",
            "Ljava/util/Collection",
            "<",
            "Lcom/newrelic/agent/android/tracing/Sample;",
            ">;>;"
        }
    .end annotation
.end field

.field private final scheduler:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 23
    const/4 v0, 0x1

    new-array v0, v0, [I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    aput v1, v0, v2

    sput-object v0, Lcom/newrelic/agent/android/sample/Sampler;->PID:[I

    .line 25
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/sample/Sampler;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    .line 26
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 29
    sput-boolean v2, Lcom/newrelic/agent/android/sample/Sampler;->cpuSamplingDisabled:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/newrelic/agent/android/tracing/Sample$SampleType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/newrelic/agent/android/sample/Sampler;->samples:Ljava/util/EnumMap;

    .line 33
    new-instance v0, Lcom/newrelic/agent/android/util/NamedThreadFactory;

    const-string v1, "Sampler"

    invoke-direct {v0, v1}, Lcom/newrelic/agent/android/util/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/sample/Sampler;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/newrelic/agent/android/sample/Sampler;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/newrelic/agent/android/sample/Sampler;->activityManager:Landroid/app/ActivityManager;

    .line 46
    iget-object v0, p0, Lcom/newrelic/agent/android/sample/Sampler;->samples:Ljava/util/EnumMap;

    sget-object v1, Lcom/newrelic/agent/android/tracing/Sample$SampleType;->MEMORY:Lcom/newrelic/agent/android/tracing/Sample$SampleType;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/newrelic/agent/android/sample/Sampler;->samples:Ljava/util/EnumMap;

    sget-object v1, Lcom/newrelic/agent/android/tracing/Sample$SampleType;->CPU:Lcom/newrelic/agent/android/tracing/Sample$SampleType;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method

.method private clear()V
    .locals 3

    .prologue
    .line 184
    iget-object v2, p0, Lcom/newrelic/agent/android/sample/Sampler;->samples:Ljava/util/EnumMap;

    invoke-virtual {v2}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 185
    .local v1, "sampleCollection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/newrelic/agent/android/tracing/Sample;>;"
    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    goto :goto_0

    .line 187
    .end local v1    # "sampleCollection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/newrelic/agent/android/tracing/Sample;>;"
    :cond_0
    return-void
.end method

.method public static copySamples()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/newrelic/agent/android/tracing/Sample$SampleType;",
            "Ljava/util/Collection",
            "<",
            "Lcom/newrelic/agent/android/tracing/Sample;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 286
    sget-object v3, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 288
    sget-object v3, Lcom/newrelic/agent/android/sample/Sampler;->sampler:Lcom/newrelic/agent/android/sample/Sampler;

    if-nez v3, :cond_0

    .line 289
    sget-object v3, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 290
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 301
    .local v0, "copy":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/newrelic/agent/android/tracing/Sample$SampleType;Ljava/util/Collection<Lcom/newrelic/agent/android/tracing/Sample;>;>;"
    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    return-object v3

    .line 293
    .end local v0    # "copy":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/newrelic/agent/android/tracing/Sample$SampleType;Ljava/util/Collection<Lcom/newrelic/agent/android/tracing/Sample;>;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    new-instance v0, Ljava/util/EnumMap;

    sget-object v3, Lcom/newrelic/agent/android/sample/Sampler;->sampler:Lcom/newrelic/agent/android/sample/Sampler;

    iget-object v3, v3, Lcom/newrelic/agent/android/sample/Sampler;->samples:Ljava/util/EnumMap;

    invoke-direct {v0, v3}, Ljava/util/EnumMap;-><init>(Ljava/util/EnumMap;)V

    .line 295
    .restart local v0    # "copy":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/newrelic/agent/android/tracing/Sample$SampleType;Ljava/util/Collection<Lcom/newrelic/agent/android/tracing/Sample;>;>;"
    sget-object v3, Lcom/newrelic/agent/android/sample/Sampler;->sampler:Lcom/newrelic/agent/android/sample/Sampler;

    iget-object v3, v3, Lcom/newrelic/agent/android/sample/Sampler;->samples:Ljava/util/EnumMap;

    invoke-virtual {v3}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/newrelic/agent/android/tracing/Sample$SampleType;

    .line 296
    .local v2, "key":Lcom/newrelic/agent/android/tracing/Sample$SampleType;
    new-instance v4, Ljava/util/ArrayList;

    sget-object v3, Lcom/newrelic/agent/android/sample/Sampler;->sampler:Lcom/newrelic/agent/android/sample/Sampler;

    iget-object v3, v3, Lcom/newrelic/agent/android/sample/Sampler;->samples:Ljava/util/EnumMap;

    invoke-virtual {v3, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 299
    .end local v2    # "key":Lcom/newrelic/agent/android/tracing/Sample$SampleType;
    :cond_1
    sget-object v3, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 301
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    goto :goto_0
.end method

.method private getSampleCollection(Lcom/newrelic/agent/android/tracing/Sample$SampleType;)Ljava/util/Collection;
    .locals 1
    .param p1, "type"    # Lcom/newrelic/agent/android/tracing/Sample$SampleType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/newrelic/agent/android/tracing/Sample$SampleType;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/newrelic/agent/android/tracing/Sample;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    iget-object v0, p0, Lcom/newrelic/agent/android/sample/Sampler;->samples:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 52
    new-instance v0, Lcom/newrelic/agent/android/sample/Sampler;

    invoke-direct {v0, p0}, Lcom/newrelic/agent/android/sample/Sampler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/newrelic/agent/android/sample/Sampler;->sampler:Lcom/newrelic/agent/android/sample/Sampler;

    .line 53
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 55
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->sampler:Lcom/newrelic/agent/android/sample/Sampler;

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->addTraceListener(Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;)V

    .line 57
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Sampler Initialized"

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public static isRunning()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 157
    sget-object v1, Lcom/newrelic/agent/android/sample/Sampler;->sampler:Lcom/newrelic/agent/android/sample/Sampler;

    if-nez v1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/newrelic/agent/android/sample/Sampler;->sampler:Lcom/newrelic/agent/android/sample/Sampler;

    iget-object v1, v1, Lcom/newrelic/agent/android/sample/Sampler;->sampleFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private resetCpuSampler()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 269
    iput-object v1, p0, Lcom/newrelic/agent/android/sample/Sampler;->lastCpuTime:Ljava/lang/Long;

    .line 270
    iput-object v1, p0, Lcom/newrelic/agent/android/sample/Sampler;->lastAppCpuTime:Ljava/lang/Long;

    .line 272
    iget-object v1, p0, Lcom/newrelic/agent/android/sample/Sampler;->appStatFile:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/newrelic/agent/android/sample/Sampler;->procStatFile:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_0

    .line 274
    :try_start_0
    iget-object v1, p0, Lcom/newrelic/agent/android/sample/Sampler;->appStatFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 275
    iget-object v1, p0, Lcom/newrelic/agent/android/sample/Sampler;->procStatFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 276
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/newrelic/agent/android/sample/Sampler;->appStatFile:Ljava/io/RandomAccessFile;

    .line 277
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/newrelic/agent/android/sample/Sampler;->procStatFile:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/newrelic/agent/android/sample/Sampler;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception hit while resetting CPU sampler: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 280
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private sample()V
    .locals 4

    .prologue
    .line 165
    sget-object v2, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 168
    :try_start_0
    invoke-static {}, Lcom/newrelic/agent/android/sample/Sampler;->sampleMemory()Lcom/newrelic/agent/android/tracing/Sample;

    move-result-object v1

    .line 170
    .local v1, "memorySample":Lcom/newrelic/agent/android/tracing/Sample;
    if-eqz v1, :cond_0

    .line 171
    sget-object v2, Lcom/newrelic/agent/android/tracing/Sample$SampleType;->MEMORY:Lcom/newrelic/agent/android/tracing/Sample$SampleType;

    invoke-direct {p0, v2}, Lcom/newrelic/agent/android/sample/Sampler;->getSampleCollection(Lcom/newrelic/agent/android/tracing/Sample$SampleType;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/newrelic/agent/android/sample/Sampler;->sampleCpu()Lcom/newrelic/agent/android/tracing/Sample;

    move-result-object v0

    .line 175
    .local v0, "cpuSample":Lcom/newrelic/agent/android/tracing/Sample;
    if-eqz v0, :cond_1

    .line 176
    sget-object v2, Lcom/newrelic/agent/android/tracing/Sample$SampleType;->CPU:Lcom/newrelic/agent/android/tracing/Sample$SampleType;

    invoke-direct {p0, v2}, Lcom/newrelic/agent/android/sample/Sampler;->getSampleCollection(Lcom/newrelic/agent/android/tracing/Sample$SampleType;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :cond_1
    sget-object v2, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 181
    return-void

    .line 179
    .end local v0    # "cpuSample":Lcom/newrelic/agent/android/tracing/Sample;
    .end local v1    # "memorySample":Lcom/newrelic/agent/android/tracing/Sample;
    :catchall_0
    move-exception v2

    sget-object v3, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public static sampleMemory()Lcom/newrelic/agent/android/tracing/Sample;
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->sampler:Lcom/newrelic/agent/android/sample/Sampler;

    if-nez v0, :cond_0

    .line 191
    const/4 v0, 0x0

    .line 194
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->sampler:Lcom/newrelic/agent/android/sample/Sampler;

    iget-object v0, v0, Lcom/newrelic/agent/android/sample/Sampler;->activityManager:Landroid/app/ActivityManager;

    invoke-static {v0}, Lcom/newrelic/agent/android/sample/Sampler;->sampleMemory(Landroid/app/ActivityManager;)Lcom/newrelic/agent/android/tracing/Sample;

    move-result-object v0

    goto :goto_0
.end method

.method public static sampleMemory(Landroid/app/ActivityManager;)Lcom/newrelic/agent/android/tracing/Sample;
    .locals 8
    .param p0, "activityManager"    # Landroid/app/ActivityManager;

    .prologue
    .line 198
    sget-object v3, Lcom/newrelic/agent/android/sample/Sampler;->PID:[I

    invoke-virtual {p0, v3}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v0

    .line 199
    .local v0, "memInfo":[Landroid/os/Debug$MemoryInfo;
    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v3}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v2

    .line 201
    .local v2, "totalPss":I
    if-ltz v2, :cond_0

    .line 202
    new-instance v1, Lcom/newrelic/agent/android/tracing/Sample;

    sget-object v3, Lcom/newrelic/agent/android/tracing/Sample$SampleType;->MEMORY:Lcom/newrelic/agent/android/tracing/Sample$SampleType;

    invoke-direct {v1, v3}, Lcom/newrelic/agent/android/tracing/Sample;-><init>(Lcom/newrelic/agent/android/tracing/Sample$SampleType;)V

    .line 203
    .local v1, "sample":Lcom/newrelic/agent/android/tracing/Sample;
    int-to-double v4, v2

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    div-double/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Lcom/newrelic/agent/android/tracing/Sample;->setSampleValue(D)V

    .line 207
    .end local v1    # "sample":Lcom/newrelic/agent/android/tracing/Sample;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private schedule()V
    .locals 7

    .prologue
    .line 130
    iget-object v0, p0, Lcom/newrelic/agent/android/sample/Sampler;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/newrelic/agent/android/sample/Sampler;->clear()V

    .line 134
    iget-object v0, p0, Lcom/newrelic/agent/android/sample/Sampler;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 135
    iget-object v0, p0, Lcom/newrelic/agent/android/sample/Sampler;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x64

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/sample/Sampler;->sampleFuture:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method

.method public static shutdown()V
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 104
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->sampler:Lcom/newrelic/agent/android/sample/Sampler;

    if-nez v0, :cond_0

    .line 105
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 116
    :goto_0
    return-void

    .line 109
    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->sampler:Lcom/newrelic/agent/android/sample/Sampler;

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->removeTraceListener(Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;)V

    .line 111
    invoke-static {}, Lcom/newrelic/agent/android/sample/Sampler;->stop()V

    .line 113
    const/4 v0, 0x0

    sput-object v0, Lcom/newrelic/agent/android/sample/Sampler;->sampler:Lcom/newrelic/agent/android/sample/Sampler;

    .line 115
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0
.end method

.method public static start()V
    .locals 2

    .prologue
    .line 61
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 63
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->sampler:Lcom/newrelic/agent/android/sample/Sampler;

    if-nez v0, :cond_0

    .line 64
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 73
    :goto_0
    return-void

    .line 68
    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->sampler:Lcom/newrelic/agent/android/sample/Sampler;

    invoke-direct {v0}, Lcom/newrelic/agent/android/sample/Sampler;->schedule()V

    .line 70
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 72
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Sampler started"

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static stop()V
    .locals 2

    .prologue
    .line 76
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 78
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->sampler:Lcom/newrelic/agent/android/sample/Sampler;

    if-nez v0, :cond_0

    .line 79
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 86
    :goto_0
    return-void

    .line 83
    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->sampler:Lcom/newrelic/agent/android/sample/Sampler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/newrelic/agent/android/sample/Sampler;->stop(Z)V

    .line 85
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0
.end method

.method private stop(Z)V
    .locals 2
    .param p1, "immediate"    # Z

    .prologue
    .line 140
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 142
    iget-object v0, p0, Lcom/newrelic/agent/android/sample/Sampler;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 154
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/newrelic/agent/android/sample/Sampler;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 148
    iget-object v0, p0, Lcom/newrelic/agent/android/sample/Sampler;->sampleFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 150
    invoke-direct {p0}, Lcom/newrelic/agent/android/sample/Sampler;->resetCpuSampler()V

    .line 151
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 153
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Sampler stopped"

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static stopNow()V
    .locals 2

    .prologue
    .line 89
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 91
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->sampler:Lcom/newrelic/agent/android/sample/Sampler;

    if-nez v0, :cond_0

    .line 92
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 99
    :goto_0
    return-void

    .line 96
    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->sampler:Lcom/newrelic/agent/android/sample/Sampler;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/newrelic/agent/android/sample/Sampler;->stop(Z)V

    .line 98
    sget-object v0, Lcom/newrelic/agent/android/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0
.end method


# virtual methods
.method public onEnterMethod()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/newrelic/agent/android/sample/Sampler;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    :goto_0
    return-void

    .line 316
    :cond_0
    invoke-static {}, Lcom/newrelic/agent/android/sample/Sampler;->start()V

    goto :goto_0
.end method

.method public onExitMethod()V
    .locals 0

    .prologue
    .line 320
    return-void
.end method

.method public onTraceComplete(Lcom/newrelic/agent/android/tracing/ActivityTrace;)V
    .locals 1
    .param p1, "activityTrace"    # Lcom/newrelic/agent/android/tracing/ActivityTrace;

    .prologue
    .line 329
    invoke-static {}, Lcom/newrelic/agent/android/sample/Sampler;->stop()V

    .line 330
    invoke-static {}, Lcom/newrelic/agent/android/sample/Sampler;->copySamples()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/newrelic/agent/android/tracing/ActivityTrace;->setVitals(Ljava/util/Map;)V

    .line 331
    invoke-direct {p0}, Lcom/newrelic/agent/android/sample/Sampler;->clear()V

    .line 332
    return-void
.end method

.method public onTraceStart(Lcom/newrelic/agent/android/tracing/ActivityTrace;)V
    .locals 0
    .param p1, "activityTrace"    # Lcom/newrelic/agent/android/tracing/ActivityTrace;

    .prologue
    .line 324
    invoke-static {}, Lcom/newrelic/agent/android/sample/Sampler;->start()V

    .line 325
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/newrelic/agent/android/sample/Sampler;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/newrelic/agent/android/sample/Sampler;->sample()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/newrelic/agent/android/sample/Sampler;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "Caught exception while running the sampler"

    invoke-interface {v1, v2, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public sampleCpu()Lcom/newrelic/agent/android/tracing/Sample;
    .locals 14

    .prologue
    .line 211
    sget-boolean v10, Lcom/newrelic/agent/android/sample/Sampler;->cpuSamplingDisabled:Z

    if-eqz v10, :cond_0

    .line 212
    const/4 v9, 0x0

    .line 264
    :goto_0
    return-object v9

    .line 216
    :cond_0
    :try_start_0
    iget-object v10, p0, Lcom/newrelic/agent/android/sample/Sampler;->procStatFile:Ljava/io/RandomAccessFile;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/newrelic/agent/android/sample/Sampler;->appStatFile:Ljava/io/RandomAccessFile;

    if-nez v10, :cond_2

    .line 218
    :cond_1
    new-instance v10, Ljava/io/RandomAccessFile;

    const-string v11, "/proc/stat"

    const-string v12, "r"

    invoke-direct {v10, v11, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v10, p0, Lcom/newrelic/agent/android/sample/Sampler;->procStatFile:Ljava/io/RandomAccessFile;

    .line 219
    new-instance v10, Ljava/io/RandomAccessFile;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "/proc/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/newrelic/agent/android/sample/Sampler;->PID:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/stat"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "r"

    invoke-direct {v10, v11, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v10, p0, Lcom/newrelic/agent/android/sample/Sampler;->appStatFile:Ljava/io/RandomAccessFile;

    .line 226
    :goto_1
    iget-object v10, p0, Lcom/newrelic/agent/android/sample/Sampler;->procStatFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 227
    .local v7, "procStatString":Ljava/lang/String;
    iget-object v10, p0, Lcom/newrelic/agent/android/sample/Sampler;->appStatFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "appStatString":Ljava/lang/String;
    const-string v10, " "

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 230
    .local v8, "procStats":[Ljava/lang/String;
    const-string v10, " "

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, "appStats":[Ljava/lang/String;
    const/4 v10, 0x2

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const/4 v12, 0x3

    aget-object v12, v8, v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    add-long/2addr v10, v12

    const/4 v12, 0x4

    aget-object v12, v8, v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    add-long/2addr v10, v12

    const/4 v12, 0x5

    aget-object v12, v8, v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    add-long/2addr v10, v12

    const/4 v12, 0x6

    aget-object v12, v8, v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    add-long/2addr v10, v12

    const/4 v12, 0x7

    aget-object v12, v8, v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    add-long/2addr v10, v12

    const/16 v12, 0x8

    aget-object v12, v8, v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    add-long v4, v10, v12

    .line 240
    .local v4, "cpuTime":J
    const/16 v10, 0xd

    aget-object v10, v1, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const/16 v12, 0xe

    aget-object v12, v1, v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    add-long v2, v10, v12

    .line 243
    .local v2, "appTime":J
    iget-object v10, p0, Lcom/newrelic/agent/android/sample/Sampler;->lastCpuTime:Ljava/lang/Long;

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/newrelic/agent/android/sample/Sampler;->lastAppCpuTime:Ljava/lang/Long;

    if-nez v10, :cond_3

    .line 245
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, p0, Lcom/newrelic/agent/android/sample/Sampler;->lastCpuTime:Ljava/lang/Long;

    .line 246
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, p0, Lcom/newrelic/agent/android/sample/Sampler;->lastAppCpuTime:Ljava/lang/Long;

    .line 248
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 222
    .end local v0    # "appStatString":Ljava/lang/String;
    .end local v1    # "appStats":[Ljava/lang/String;
    .end local v2    # "appTime":J
    .end local v4    # "cpuTime":J
    .end local v7    # "procStatString":Ljava/lang/String;
    .end local v8    # "procStats":[Ljava/lang/String;
    :cond_2
    iget-object v10, p0, Lcom/newrelic/agent/android/sample/Sampler;->procStatFile:Ljava/io/RandomAccessFile;

    const-wide/16 v12, 0x0

    invoke-virtual {v10, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 223
    iget-object v10, p0, Lcom/newrelic/agent/android/sample/Sampler;->appStatFile:Ljava/io/RandomAccessFile;

    const-wide/16 v12, 0x0

    invoke-virtual {v10, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 260
    :catch_0
    move-exception v6

    .line 261
    .local v6, "e":Ljava/lang/Exception;
    const/4 v10, 0x1

    sput-boolean v10, Lcom/newrelic/agent/android/sample/Sampler;->cpuSamplingDisabled:Z

    .line 262
    sget-object v10, Lcom/newrelic/agent/android/sample/Sampler;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception hit while CPU sampling: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 263
    invoke-static {v6}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    .line 264
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 251
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v0    # "appStatString":Ljava/lang/String;
    .restart local v1    # "appStats":[Ljava/lang/String;
    .restart local v2    # "appTime":J
    .restart local v4    # "cpuTime":J
    .restart local v7    # "procStatString":Ljava/lang/String;
    .restart local v8    # "procStats":[Ljava/lang/String;
    :cond_3
    :try_start_1
    new-instance v9, Lcom/newrelic/agent/android/tracing/Sample;

    sget-object v10, Lcom/newrelic/agent/android/tracing/Sample$SampleType;->CPU:Lcom/newrelic/agent/android/tracing/Sample$SampleType;

    invoke-direct {v9, v10}, Lcom/newrelic/agent/android/tracing/Sample;-><init>(Lcom/newrelic/agent/android/tracing/Sample$SampleType;)V

    .line 253
    .local v9, "sample":Lcom/newrelic/agent/android/tracing/Sample;
    iget-object v10, p0, Lcom/newrelic/agent/android/sample/Sampler;->lastAppCpuTime:Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long v10, v2, v10

    long-to-double v10, v10

    iget-object v12, p0, Lcom/newrelic/agent/android/sample/Sampler;->lastCpuTime:Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sub-long v12, v4, v12

    long-to-double v12, v12

    div-double/2addr v10, v12

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Lcom/newrelic/agent/android/tracing/Sample;->setSampleValue(D)V

    .line 255
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, p0, Lcom/newrelic/agent/android/sample/Sampler;->lastCpuTime:Ljava/lang/Long;

    .line 256
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, p0, Lcom/newrelic/agent/android/sample/Sampler;->lastAppCpuTime:Ljava/lang/Long;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
