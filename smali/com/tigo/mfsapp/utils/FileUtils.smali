.class public Lcom/tigo/mfsapp/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTextFileContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 19
    :try_start_0
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/tigo/mfsapp/app/MfsApp;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 20
    .local v2, "fileInputStream":Ljava/io/FileInputStream;
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 22
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 24
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 26
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 29
    .end local v0    # "buffer":[B
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v1

    .line 31
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v4, ""

    .line 34
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    return-object v4

    .line 28
    .restart local v0    # "buffer":[B
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    goto :goto_1

    .line 32
    .end local v0    # "buffer":[B
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    :catch_1
    move-exception v1

    .line 34
    .local v1, "e":Ljava/io/IOException;
    const-string v4, ""

    goto :goto_1
.end method

.method public static saveTextFileContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/tigo/mfsapp/app/MfsApp;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 42
    .local v0, "fileOut":Ljava/io/FileOutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 43
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 44
    return-void
.end method
