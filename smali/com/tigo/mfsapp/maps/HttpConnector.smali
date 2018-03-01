.class public Lcom/tigo/mfsapp/maps/HttpConnector;
.super Ljava/lang/Object;
.source "HttpConnector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "urlString"    # Ljava/lang/String;

    .prologue
    .line 16
    const/4 v2, 0x0

    .line 17
    .local v2, "conn":Ljava/net/HttpURLConnection;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .local v5, "jsonResults":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 22
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 23
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 27
    .local v4, "in":Ljava/io/InputStreamReader;
    const/16 v8, 0x400

    new-array v1, v8, [C

    .line 28
    .local v1, "buff":[C
    :goto_0
    invoke-virtual {v4, v1}, Ljava/io/InputStreamReader;->read([C)I

    move-result v6

    .local v6, "read":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_1

    .line 30
    const/4 v8, 0x0

    invoke-virtual {v5, v1, v8, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 33
    .end local v1    # "buff":[C
    .end local v4    # "in":Ljava/io/InputStreamReader;
    .end local v6    # "read":I
    .end local v7    # "url":Ljava/net/URL;
    :catch_0
    move-exception v3

    .line 35
    .local v3, "e":Ljava/net/MalformedURLException;
    :try_start_1
    const-string v8, "AppUtil"

    const-string v9, "Error processing Autocomplete API URL"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    if-eqz v2, :cond_0

    .line 43
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 46
    .end local v3    # "e":Ljava/net/MalformedURLException;
    :cond_0
    :goto_1
    const-string v8, "Result"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 41
    .restart local v1    # "buff":[C
    .restart local v4    # "in":Ljava/io/InputStreamReader;
    .restart local v6    # "read":I
    .restart local v7    # "url":Ljava/net/URL;
    :cond_1
    if-eqz v2, :cond_0

    .line 43
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 36
    .end local v1    # "buff":[C
    .end local v4    # "in":Ljava/io/InputStreamReader;
    .end local v6    # "read":I
    .end local v7    # "url":Ljava/net/URL;
    :catch_1
    move-exception v3

    .line 38
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    const-string v8, "AppUtil"

    const-string v9, "Error connecting to Autocomplete API"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    if-eqz v2, :cond_0

    .line 43
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 41
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    if-eqz v2, :cond_2

    .line 43
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw v8
.end method
