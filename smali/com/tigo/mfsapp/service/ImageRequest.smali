.class public Lcom/tigo/mfsapp/service/ImageRequest;
.super Lcom/tigo/mfsapp/service/Request;
.source "ImageRequest.java"


# static fields
.field private static httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;


# instance fields
.field private height:I

.field private imageURL:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/tigo/mfsapp/service/Request;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 18
    return-void
.end method

.method public static getHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/tigo/mfsapp/service/ImageRequest;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    sput-object v0, Lcom/tigo/mfsapp/service/ImageRequest;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 60
    :cond_0
    sget-object v0, Lcom/tigo/mfsapp/service/ImageRequest;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object v0
.end method


# virtual methods
.method public asHttpString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 36
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://m.dev.integrodev.com.ar/go_resize/get_image.php?src="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tigo/mfsapp/service/ImageRequest;->imageURL:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&w=%d&h=%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/tigo/mfsapp/service/ImageRequest;->width:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/tigo/mfsapp/service/ImageRequest;->height:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 40
    :goto_0
    return-object v1

    .line 37
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 40
    iget-object v1, p0, Lcom/tigo/mfsapp/service/ImageRequest;->imageURL:Ljava/lang/String;

    goto :goto_0
.end method

.method public getImageURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tigo/mfsapp/service/ImageRequest;->imageURL:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const-string v0, "GET"

    return-object v0
.end method

.method public getResponseClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 27
    const-class v0, Lcom/tigo/mfsapp/service/ImageResponse;

    return-object v0
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/tigo/mfsapp/service/ImageRequest;->height:I

    .line 71
    return-void
.end method

.method public setImageURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageURL"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/tigo/mfsapp/service/ImageRequest;->imageURL:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/tigo/mfsapp/service/ImageRequest;->width:I

    .line 66
    return-void
.end method
