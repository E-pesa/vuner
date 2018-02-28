.class public Lcom/tigo/mfsapp/utils/DiskCache;
.super Ljava/lang/Object;
.source "DiskCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/utils/DiskCache$DATA_INDEXES;
    }
.end annotation


# static fields
.field private static final MAX_SIZE:I = 0xa00000

.field private static final VALUES_PER_ENTRY:I = 0x3

.field private static final VERSION:I = 0x1

.field private static instance:Lcom/tigo/mfsapp/utils/DiskCache;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method private close(Lcom/jakewharton/disklrucache/DiskLruCache;)V
    .locals 2
    .param p1, "cache"    # Lcom/jakewharton/disklrucache/DiskLruCache;

    .prologue
    .line 59
    :try_start_0
    invoke-virtual {p1}, Lcom/jakewharton/disklrucache/DiskLruCache;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Can\'t close Disk Cache"

    invoke-static {v1, v0}, Lcom/tigo/mfsapp/utils/Logger;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static get()Lcom/tigo/mfsapp/utils/DiskCache;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/tigo/mfsapp/utils/DiskCache;->instance:Lcom/tigo/mfsapp/utils/DiskCache;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/tigo/mfsapp/utils/DiskCache;

    invoke-direct {v0}, Lcom/tigo/mfsapp/utils/DiskCache;-><init>()V

    sput-object v0, Lcom/tigo/mfsapp/utils/DiskCache;->instance:Lcom/tigo/mfsapp/utils/DiskCache;

    .line 31
    :cond_0
    sget-object v0, Lcom/tigo/mfsapp/utils/DiskCache;->instance:Lcom/tigo/mfsapp/utils/DiskCache;

    return-object v0
.end method

.method private open()Lcom/jakewharton/disklrucache/DiskLruCache;
    .locals 8

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 45
    .local v0, "cache":Lcom/jakewharton/disklrucache/DiskLruCache;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/app/MfsApp;->getCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "disk_cache"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 46
    .local v1, "cacheDir":Ljava/io/File;
    const/4 v3, 0x1

    const/4 v4, 0x3

    const-wide/32 v6, 0xa00000

    invoke-static {v1, v3, v4, v6, v7}, Lcom/jakewharton/disklrucache/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/jakewharton/disklrucache/DiskLruCache;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 52
    .end local v1    # "cacheDir":Ljava/io/File;
    :goto_0
    return-object v0

    .line 47
    :catch_0
    move-exception v2

    .line 49
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "Can\'t initialize Disk Cache"

    invoke-static {v3, v2}, Lcom/tigo/mfsapp/utils/Logger;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private prepareKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-static {p1}, Lcom/tigo/mfsapp/utils/Utils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getData(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/tigo/mfsapp/utils/DiskCache;->prepareKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 74
    invoke-direct {p0}, Lcom/tigo/mfsapp/utils/DiskCache;->open()Lcom/jakewharton/disklrucache/DiskLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 75
    .local v2, "cache":Lcom/jakewharton/disklrucache/DiskLruCache;
    const/4 v5, 0x0

    .line 77
    .local v5, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 81
    :try_start_1
    invoke-virtual {v2, p1}, Lcom/jakewharton/disklrucache/DiskLruCache;->get(Ljava/lang/String;)Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;

    move-result-object v4

    .line 83
    .local v4, "snapshot":Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;
    if-eqz v4, :cond_0

    .line 85
    sget-object v8, Lcom/tigo/mfsapp/utils/DiskCache$DATA_INDEXES;->INDEX_TIMESTAMP:Lcom/tigo/mfsapp/utils/DiskCache$DATA_INDEXES;

    invoke-virtual {v8}, Lcom/tigo/mfsapp/utils/DiskCache$DATA_INDEXES;->ordinal()I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 86
    .local v6, "timestamp":J
    sget-object v8, Lcom/tigo/mfsapp/utils/DiskCache$DATA_INDEXES;->INDEX_ALIVE_TIME:Lcom/tigo/mfsapp/utils/DiskCache$DATA_INDEXES;

    invoke-virtual {v8}, Lcom/tigo/mfsapp/utils/DiskCache$DATA_INDEXES;->ordinal()I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 88
    .local v0, "aliveTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    add-long v10, v6, v0

    cmp-long v8, v8, v10

    if-lez v8, :cond_1

    .line 90
    invoke-virtual {v2, p1}, Lcom/jakewharton/disklrucache/DiskLruCache;->remove(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    .end local v0    # "aliveTime":J
    .end local v4    # "snapshot":Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;
    .end local v6    # "timestamp":J
    :cond_0
    :goto_0
    :try_start_2
    invoke-direct {p0, v2}, Lcom/tigo/mfsapp/utils/DiskCache;->close(Lcom/jakewharton/disklrucache/DiskLruCache;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    monitor-exit p0

    return-object v5

    .line 93
    .restart local v0    # "aliveTime":J
    .restart local v4    # "snapshot":Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;
    .restart local v6    # "timestamp":J
    :cond_1
    :try_start_3
    sget-object v8, Lcom/tigo/mfsapp/utils/DiskCache$DATA_INDEXES;->INDEX_VALUE:Lcom/tigo/mfsapp/utils/DiskCache$DATA_INDEXES;

    invoke-virtual {v8}, Lcom/tigo/mfsapp/utils/DiskCache$DATA_INDEXES;->ordinal()I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;->getString(I)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    goto :goto_0

    .line 97
    .end local v0    # "aliveTime":J
    .end local v4    # "snapshot":Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;
    .end local v6    # "timestamp":J
    :catch_0
    move-exception v3

    .line 99
    .local v3, "e":Ljava/io/IOException;
    :try_start_4
    const-string v8, "Error reading Disk Cache"

    invoke-static {v8, v3}, Lcom/tigo/mfsapp/utils/Logger;->error(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 73
    .end local v2    # "cache":Lcom/jakewharton/disklrucache/DiskLruCache;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public declared-synchronized setData(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "aliveTime"    # J

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/tigo/mfsapp/utils/DiskCache;->prepareKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-direct {p0}, Lcom/tigo/mfsapp/utils/DiskCache;->open()Lcom/jakewharton/disklrucache/DiskLruCache;

    move-result-object v1

    .line 113
    .local v1, "cache":Lcom/jakewharton/disklrucache/DiskLruCache;
    if-eqz v1, :cond_0

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 116
    .local v4, "timestampStr":Ljava/lang/String;
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 120
    .local v0, "aliveTimeStr":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v1, p1}, Lcom/jakewharton/disklrucache/DiskLruCache;->edit(Ljava/lang/String;)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    move-result-object v3

    .line 121
    .local v3, "editor":Lcom/jakewharton/disklrucache/DiskLruCache$Editor;
    sget-object v5, Lcom/tigo/mfsapp/utils/DiskCache$DATA_INDEXES;->INDEX_VALUE:Lcom/tigo/mfsapp/utils/DiskCache$DATA_INDEXES;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/utils/DiskCache$DATA_INDEXES;->ordinal()I

    move-result v5

    invoke-virtual {v3, v5, p2}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->set(ILjava/lang/String;)V

    .line 122
    sget-object v5, Lcom/tigo/mfsapp/utils/DiskCache$DATA_INDEXES;->INDEX_TIMESTAMP:Lcom/tigo/mfsapp/utils/DiskCache$DATA_INDEXES;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/utils/DiskCache$DATA_INDEXES;->ordinal()I

    move-result v5

    invoke-virtual {v3, v5, v4}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->set(ILjava/lang/String;)V

    .line 123
    sget-object v5, Lcom/tigo/mfsapp/utils/DiskCache$DATA_INDEXES;->INDEX_ALIVE_TIME:Lcom/tigo/mfsapp/utils/DiskCache$DATA_INDEXES;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/utils/DiskCache$DATA_INDEXES;->ordinal()I

    move-result v5

    invoke-virtual {v3, v5, v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->set(ILjava/lang/String;)V

    .line 124
    invoke-virtual {v3}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->commit()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    .end local v0    # "aliveTimeStr":Ljava/lang/String;
    .end local v3    # "editor":Lcom/jakewharton/disklrucache/DiskLruCache$Editor;
    .end local v4    # "timestampStr":Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_2
    invoke-direct {p0, v1}, Lcom/tigo/mfsapp/utils/DiskCache;->close(Lcom/jakewharton/disklrucache/DiskLruCache;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    monitor-exit p0

    return-void

    .line 125
    .restart local v0    # "aliveTimeStr":Ljava/lang/String;
    .restart local v4    # "timestampStr":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 127
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    const-string v5, "Error writing Disk Cache"

    invoke-static {v5, v2}, Lcom/tigo/mfsapp/utils/Logger;->error(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 110
    .end local v0    # "aliveTimeStr":Ljava/lang/String;
    .end local v1    # "cache":Lcom/jakewharton/disklrucache/DiskLruCache;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "timestampStr":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method
