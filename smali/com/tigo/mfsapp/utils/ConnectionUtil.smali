.class public Lcom/tigo/mfsapp/utils/ConnectionUtil;
.super Ljava/lang/Object;
.source "ConnectionUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/utils/ConnectionUtil$LoadRunnable;,
        Lcom/tigo/mfsapp/utils/ConnectionUtil$ConnectionUtilListener;
    }
.end annotation


# static fields
.field private static final THREAD_COUNT:I = 0x2


# instance fields
.field final cacheSize:I

.field mInProgress:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field

.field private final mThreadPool:Ljava/util/concurrent/ExecutorService;

.field final maxMemory:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/utils/ConnectionUtil;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tigo/mfsapp/utils/ConnectionUtil;->mInProgress:Ljava/util/HashSet;

    .line 32
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/tigo/mfsapp/utils/ConnectionUtil;->maxMemory:I

    .line 33
    iget v0, p0, Lcom/tigo/mfsapp/utils/ConnectionUtil;->maxMemory:I

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/tigo/mfsapp/utils/ConnectionUtil;->cacheSize:I

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/tigo/mfsapp/utils/ConnectionUtil;Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/utils/ConnectionUtil;
    .param p1, "x1"    # Ljava/io/InputStream;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/tigo/mfsapp/utils/ConnectionUtil;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 112
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 113
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 118
    .local v1, "line":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 120
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 135
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 129
    :cond_0
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 130
    :catch_1
    move-exception v0

    .line 132
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 130
    :catch_2
    move-exception v0

    .line 132
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 127
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 129
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 133
    :goto_2
    throw v4

    .line 130
    :catch_3
    move-exception v0

    .line 132
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public get(Ljava/lang/String;Lcom/tigo/mfsapp/utils/ConnectionUtil$ConnectionUtilListener;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/tigo/mfsapp/utils/ConnectionUtil$ConnectionUtilListener;

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 50
    .local v0, "_url":Ljava/net/URL;
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v0    # "_url":Ljava/net/URL;
    .local v1, "_url":Ljava/net/URL;
    :try_start_1
    new-instance v3, Lcom/tigo/mfsapp/utils/ConnectionUtil$LoadRunnable;

    invoke-direct {v3, p0, v1, p2}, Lcom/tigo/mfsapp/utils/ConnectionUtil$LoadRunnable;-><init>(Lcom/tigo/mfsapp/utils/ConnectionUtil;Ljava/net/URL;Lcom/tigo/mfsapp/utils/ConnectionUtil$ConnectionUtilListener;)V

    .line 54
    .local v3, "loadRunnable":Ljava/lang/Runnable;
    iget-object v4, p0, Lcom/tigo/mfsapp/utils/ConnectionUtil;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 61
    .end local v1    # "_url":Ljava/net/URL;
    .end local v3    # "loadRunnable":Ljava/lang/Runnable;
    .restart local v0    # "_url":Ljava/net/URL;
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v2

    .line 58
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 56
    .end local v0    # "_url":Ljava/net/URL;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "_url":Ljava/net/URL;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "_url":Ljava/net/URL;
    .restart local v0    # "_url":Ljava/net/URL;
    goto :goto_1
.end method
