.class Lcom/tigo/mfsapp/service/Request$RunGetContents;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/service/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunGetContents"
.end annotation


# instance fields
.field private connection:Lorg/apache/http/client/HttpClient;

.field private final requestListener:Lcom/tigo/mfsapp/service/Request$RequestListener;

.field final synthetic this$0:Lcom/tigo/mfsapp/service/Request;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tigo/mfsapp/service/Request;Ljava/lang/String;Lcom/tigo/mfsapp/service/Request$RequestListener;)V
    .locals 0
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/tigo/mfsapp/service/Request$RequestListener;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/tigo/mfsapp/service/Request$RunGetContents;->this$0:Lcom/tigo/mfsapp/service/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p2, p0, Lcom/tigo/mfsapp/service/Request$RunGetContents;->url:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/tigo/mfsapp/service/Request$RunGetContents;->requestListener:Lcom/tigo/mfsapp/service/Request$RequestListener;

    .line 78
    return-void
.end method

.method private handleError(Ljava/lang/Exception;Lorg/apache/http/HttpResponse;Ljava/lang/String;)V
    .locals 7
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "httpResponse"    # Lorg/apache/http/HttpResponse;
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    .line 207
    if-eqz p1, :cond_0

    .line 210
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 213
    iget-object v1, p0, Lcom/tigo/mfsapp/service/Request$RunGetContents;->url:Ljava/lang/String;

    move-object v0, p0

    move-wide v4, v2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/tigo/mfsapp/service/Request$RunGetContents;->handleExceptionNewRelic(Ljava/lang/String;JJLjava/lang/Exception;)V

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/service/Request$RunGetContents;->requestListener:Lcom/tigo/mfsapp/service/Request$RequestListener;

    if-eqz v0, :cond_2

    .line 219
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.net"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/tigo/mfsapp/service/Request$RunGetContents;->requestListener:Lcom/tigo/mfsapp/service/Request$RequestListener;

    iget-object v1, p0, Lcom/tigo/mfsapp/service/Request$RunGetContents;->this$0:Lcom/tigo/mfsapp/service/Request;

    invoke-interface {v0, p1, v1, p2, p3}, Lcom/tigo/mfsapp/service/Request$RequestListener;->didReceiveNetworkingError(Ljava/lang/Exception;Lcom/tigo/mfsapp/service/Request;Lorg/apache/http/HttpResponse;Ljava/lang/String;)V

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/tigo/mfsapp/service/Request$RunGetContents;->requestListener:Lcom/tigo/mfsapp/service/Request$RequestListener;

    iget-object v1, p0, Lcom/tigo/mfsapp/service/Request$RunGetContents;->this$0:Lcom/tigo/mfsapp/service/Request;

    invoke-interface {v0, v1, p2, p3}, Lcom/tigo/mfsapp/service/Request$RequestListener;->didReceiveError(Lcom/tigo/mfsapp/service/Request;Lorg/apache/http/HttpResponse;Ljava/lang/String;)V

    .line 225
    :cond_2
    return-void
.end method

.method private handleErrorNewRelic(Ljava/lang/String;IJJJJLjava/lang/String;)V
    .locals 11
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .param p3, "startTime"    # J
    .param p5, "endTime"    # J
    .param p7, "bytesSend"    # J
    .param p9, "bytesReceived"    # J
    .param p11, "data"    # Ljava/lang/String;

    .prologue
    .line 229
    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lcom/tigo/mfsapp/service/Request$RunGetContents$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p11

    invoke-direct/range {v0 .. v8}, Lcom/tigo/mfsapp/service/Request$RunGetContents$1;-><init>(Lcom/tigo/mfsapp/service/Request$RunGetContents;Ljava/lang/String;IJJLjava/lang/String;)V

    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 237
    .local v9, "t":Ljava/lang/Thread;
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 239
    return-void
.end method

.method private handleExceptionNewRelic(Ljava/lang/String;JJLjava/lang/Exception;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "startTime"    # J
    .param p4, "endTime"    # J
    .param p6, "e"    # Ljava/lang/Exception;

    .prologue
    .line 243
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tigo/mfsapp/service/Request$RunGetContents$2;

    invoke-direct {v1, p0, p1, p6}, Lcom/tigo/mfsapp/service/Request$RunGetContents$2;-><init>(Lcom/tigo/mfsapp/service/Request$RunGetContents;Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 251
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 253
    return-void
.end method

.method private handleResponseAnalytics(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "requestUrl"    # Ljava/lang/String;
    .param p2, "responseString"    # Ljava/lang/String;
    .param p3, "statusCode"    # I

    .prologue
    .line 257
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tigo/mfsapp/service/Request$RunGetContents$3;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/tigo/mfsapp/service/Request$RunGetContents$3;-><init>(Lcom/tigo/mfsapp/service/Request$RunGetContents;Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 275
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 277
    return-void
.end method

.method private handleTimigsAnalytics(Ljava/lang/String;J)V
    .locals 2
    .param p1, "requestUrl"    # Ljava/lang/String;
    .param p2, "intervalInMilliseconds"    # J

    .prologue
    .line 281
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tigo/mfsapp/service/Request$RunGetContents$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/tigo/mfsapp/service/Request$RunGetContents$4;-><init>(Lcom/tigo/mfsapp/service/Request$RunGetContents;Ljava/lang/String;J)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 309
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 311
    return-void
.end method


# virtual methods
.method public run()V
    .locals 27

    .prologue
    .line 84
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tigo/mfsapp/service/Request$RunGetContents;->this$0:Lcom/tigo/mfsapp/service/Request;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/service/Request;->getMethod()Ljava/lang/String;

    move-result-object v5

    const-string v6, "GET"

    if-ne v5, v6, :cond_0

    .line 86
    new-instance v26, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tigo/mfsapp/service/Request$RunGetContents;->url:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-direct {v0, v5}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 93
    .local v26, "urlRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    :goto_0
    const-string v5, "httpRequest - %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {v26 .. v26}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v12

    invoke-virtual {v12}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tigo/mfsapp/utils/Logger;->debug(Ljava/lang/String;)V

    .line 96
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tigo/mfsapp/service/Request$RunGetContents;->this$0:Lcom/tigo/mfsapp/service/Request;

    invoke-static {}, Lcom/tigo/mfsapp/service/Request;->getNewHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tigo/mfsapp/service/Request;->access$000(Lcom/tigo/mfsapp/service/Request;Lorg/apache/http/impl/client/DefaultHttpClient;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/tigo/mfsapp/service/Request$RunGetContents;->connection:Lorg/apache/http/client/HttpClient;

    .line 97
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tigo/mfsapp/service/Request$RunGetContents;->connection:Lorg/apache/http/client/HttpClient;

    check-cast v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    const-class v6, Lorg/apache/http/protocol/RequestExpectContinue;

    invoke-virtual {v5, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->removeRequestInterceptorByClass(Ljava/lang/Class;)V

    .line 102
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tigo/mfsapp/service/Request$RunGetContents;->this$0:Lcom/tigo/mfsapp/service/Request;

    invoke-static {v5}, Lcom/tigo/mfsapp/service/Request;->access$100(Lcom/tigo/mfsapp/service/Request;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v21

    if-ge v0, v5, :cond_1

    .line 103
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tigo/mfsapp/service/Request$RunGetContents;->this$0:Lcom/tigo/mfsapp/service/Request;

    invoke-static {v5}, Lcom/tigo/mfsapp/service/Request;->access$100(Lcom/tigo/mfsapp/service/Request;)Ljava/util/ArrayList;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {v5}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tigo/mfsapp/service/Request$RunGetContents;->this$0:Lcom/tigo/mfsapp/service/Request;

    invoke-static {v5}, Lcom/tigo/mfsapp/service/Request;->access$100(Lcom/tigo/mfsapp/service/Request;)Ljava/util/ArrayList;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {v5}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v5}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Extra header "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tigo/mfsapp/service/Request$RunGetContents;->this$0:Lcom/tigo/mfsapp/service/Request;

    invoke-static {v5}, Lcom/tigo/mfsapp/service/Request;->access$100(Lcom/tigo/mfsapp/service/Request;)Ljava/util/ArrayList;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {v5}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tigo/mfsapp/service/Request$RunGetContents;->this$0:Lcom/tigo/mfsapp/service/Request;

    invoke-static {v5}, Lcom/tigo/mfsapp/service/Request;->access$100(Lcom/tigo/mfsapp/service/Request;)Ljava/util/ArrayList;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {v5}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tigo/mfsapp/utils/Logger;->debug(Ljava/lang/String;)V

    .line 102
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_1

    .line 90
    .end local v21    # "i":I
    .end local v26    # "urlRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    :cond_0
    new-instance v26, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tigo/mfsapp/service/Request$RunGetContents;->url:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-direct {v0, v5}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .restart local v26    # "urlRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    goto/16 :goto_0

    .line 110
    .restart local v21    # "i":I
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tigo/mfsapp/service/Request$RunGetContents;->this$0:Lcom/tigo/mfsapp/service/Request;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/service/Request;->getPayLoad()Ljava/lang/String;

    move-result-object v24

    .line 112
    .local v24, "payLoad":Ljava/lang/String;
    move-object/from16 v0, v26

    instance-of v5, v0, Lorg/apache/http/client/methods/HttpPost;

    if-eqz v5, :cond_2

    if-eqz v24, :cond_2

    .line 115
    new-instance v20, Lorg/apache/http/entity/StringEntity;

    const-string v5, "UTF-8"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v5}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .local v20, "entity":Lorg/apache/http/entity/StringEntity;
    move-object/from16 v0, v26

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    move-object v5, v0

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 119
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v26 .. v26}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Payload - %s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v24, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tigo/mfsapp/utils/Logger;->debug(Ljava/lang/String;)V

    .line 122
    .end local v20    # "entity":Lorg/apache/http/entity/StringEntity;
    :cond_2
    const/16 v18, 0x0

    .line 123
    .local v18, "data":Ljava/lang/String;
    const/16 v25, 0x0

    .line 124
    .local v25, "response":Lorg/apache/http/HttpResponse;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tigo/mfsapp/service/Request$RunGetContents;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, "cacheKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tigo/mfsapp/service/Request$RunGetContents;->this$0:Lcom/tigo/mfsapp/service/Request;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/service/Request;->isResponseCachingEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 128
    invoke-static {}, Lcom/tigo/mfsapp/utils/Utils;->getNewMockHttpResponse()Lorg/apache/http/HttpResponse;

    move-result-object v25

    .line 129
    invoke-static {}, Lcom/tigo/mfsapp/utils/DiskCache;->get()Lcom/tigo/mfsapp/utils/DiskCache;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/tigo/mfsapp/utils/DiskCache;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 132
    :cond_3
    if-nez v18, :cond_7

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 135
    .local v8, "startTime":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tigo/mfsapp/service/Request$RunGetContents;->connection:Lorg/apache/http/client/HttpClient;

    move-object/from16 v0, v26

    invoke-interface {v5, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v25

    .line 136
    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v20

    .line 137
    .local v20, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v17

    .line 139
    .local v17, "content":Ljava/io/InputStream;
    invoke-static/range {v17 .. v17}, Lcom/tigo/mfsapp/utils/Utils;->readFully(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v18

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 142
    .local v10, "endTime":J
    sub-long v22, v10, v8

    .line 144
    .local v22, "intervalInMilliseconds":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tigo/mfsapp/service/Request$RunGetContents;->url:Ljava/lang/String;

    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v1, v6}, Lcom/tigo/mfsapp/service/Request$RunGetContents;->handleResponseAnalytics(Ljava/lang/String;Ljava/lang/String;I)V

    .line 145
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tigo/mfsapp/service/Request$RunGetContents;->url:Ljava/lang/String;

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v5, v1, v2}, Lcom/tigo/mfsapp/service/Request$RunGetContents;->handleTimigsAnalytics(Ljava/lang/String;J)V

    .line 147
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tigo/mfsapp/service/Request$RunGetContents;->this$0:Lcom/tigo/mfsapp/service/Request;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/service/Request;->isResponseCachingEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_4

    .line 149
    invoke-static {}, Lcom/tigo/mfsapp/utils/DiskCache;->get()Lcom/tigo/mfsapp/utils/DiskCache;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tigo/mfsapp/service/Request$RunGetContents;->this$0:Lcom/tigo/mfsapp/service/Request;

    invoke-virtual {v6}, Lcom/tigo/mfsapp/service/Request;->getResponseCachingTime()J

    move-result-wide v6

    move-object/from16 v0, v18

    invoke-virtual {v5, v4, v0, v6, v7}, Lcom/tigo/mfsapp/utils/DiskCache;->setData(Ljava/lang/String;Ljava/lang/String;J)V

    .line 154
    :cond_4
    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_a

    if-eqz v18, :cond_5

    const-string v5, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    :cond_5
    if-nez v18, :cond_a

    .line 157
    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tigo/mfsapp/service/Request$RunGetContents;->url:Ljava/lang/String;

    const/16 v7, 0x1bc

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-string v16, ""

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v16}, Lcom/tigo/mfsapp/service/Request$RunGetContents;->handleErrorNewRelic(Ljava/lang/String;IJJJJLjava/lang/String;)V

    .line 175
    .end local v8    # "startTime":J
    .end local v10    # "endTime":J
    .end local v17    # "content":Ljava/io/InputStream;
    .end local v20    # "entity":Lorg/apache/http/HttpEntity;
    .end local v22    # "intervalInMilliseconds":J
    :cond_7
    :goto_2
    if-eqz v18, :cond_8

    .line 177
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v26 .. v26}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Response Payload - %s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v18, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tigo/mfsapp/utils/Logger;->debug(Ljava/lang/String;)V

    .line 180
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tigo/mfsapp/service/Request$RunGetContents;->requestListener:Lcom/tigo/mfsapp/service/Request$RequestListener;

    if-eqz v5, :cond_9

    .line 185
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tigo/mfsapp/service/Request$RunGetContents;->requestListener:Lcom/tigo/mfsapp/service/Request$RequestListener;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tigo/mfsapp/service/Request$RunGetContents;->this$0:Lcom/tigo/mfsapp/service/Request;

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-interface {v5, v6, v0, v1}, Lcom/tigo/mfsapp/service/Request$RequestListener;->didReceiveContent(Lcom/tigo/mfsapp/service/Request;Lorg/apache/http/HttpResponse;Ljava/lang/String;)V

    .line 203
    .end local v4    # "cacheKey":Ljava/lang/String;
    .end local v18    # "data":Ljava/lang/String;
    .end local v24    # "payLoad":Ljava/lang/String;
    .end local v25    # "response":Lorg/apache/http/HttpResponse;
    :cond_9
    :goto_3
    return-void

    .line 160
    .restart local v4    # "cacheKey":Ljava/lang/String;
    .restart local v8    # "startTime":J
    .restart local v10    # "endTime":J
    .restart local v17    # "content":Ljava/io/InputStream;
    .restart local v18    # "data":Ljava/lang/String;
    .restart local v20    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v22    # "intervalInMilliseconds":J
    .restart local v24    # "payLoad":Ljava/lang/String;
    .restart local v25    # "response":Lorg/apache/http/HttpResponse;
    :cond_a
    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v6, 0x1a8

    if-ne v5, v6, :cond_c

    if-eqz v18, :cond_c

    .line 163
    const-string v5, "\"ErrorCode\": 90,"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "\"ErrorCode\": 95,"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "\"ErrorCode\": 97,"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "\"ErrorCode\": 98,"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "\"ErrorCode\": 99,"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 164
    :cond_b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tigo/mfsapp/service/Request$RunGetContents;->url:Ljava/lang/String;

    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v5, p0

    move-object/from16 v16, v18

    invoke-direct/range {v5 .. v16}, Lcom/tigo/mfsapp/service/Request$RunGetContents;->handleErrorNewRelic(Ljava/lang/String;IJJJJLjava/lang/String;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_2

    .line 190
    .end local v4    # "cacheKey":Ljava/lang/String;
    .end local v8    # "startTime":J
    .end local v10    # "endTime":J
    .end local v17    # "content":Ljava/io/InputStream;
    .end local v18    # "data":Ljava/lang/String;
    .end local v20    # "entity":Lorg/apache/http/HttpEntity;
    .end local v22    # "intervalInMilliseconds":J
    .end local v24    # "payLoad":Ljava/lang/String;
    .end local v25    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v19

    .line 191
    .local v19, "e":Ljavax/net/ssl/SSLException;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tigo/mfsapp/service/Request$RunGetContents;->this$0:Lcom/tigo/mfsapp/service/Request;

    invoke-static {v5}, Lcom/tigo/mfsapp/service/Request;->access$200(Lcom/tigo/mfsapp/service/Request;)I

    move-result v5

    const/4 v6, 0x5

    if-ge v5, v6, :cond_d

    .line 192
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Retry action caused by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Ljavax/net/ssl/SSLException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tigo/mfsapp/utils/Logger;->warning(Ljava/lang/String;)V

    .line 194
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tigo/mfsapp/service/Request$RunGetContents;->this$0:Lcom/tigo/mfsapp/service/Request;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/service/Request;->doRetryAction()V

    goto/16 :goto_3

    .line 167
    .end local v19    # "e":Ljavax/net/ssl/SSLException;
    .restart local v4    # "cacheKey":Ljava/lang/String;
    .restart local v8    # "startTime":J
    .restart local v10    # "endTime":J
    .restart local v17    # "content":Ljava/io/InputStream;
    .restart local v18    # "data":Ljava/lang/String;
    .restart local v20    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v22    # "intervalInMilliseconds":J
    .restart local v24    # "payLoad":Ljava/lang/String;
    .restart local v25    # "response":Lorg/apache/http/HttpResponse;
    :cond_c
    :try_start_1
    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_7

    .line 170
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tigo/mfsapp/service/Request$RunGetContents;->url:Ljava/lang/String;

    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v5, p0

    move-object/from16 v16, v18

    invoke-direct/range {v5 .. v16}, Lcom/tigo/mfsapp/service/Request$RunGetContents;->handleErrorNewRelic(Ljava/lang/String;IJJJJLjava/lang/String;)V
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 198
    .end local v4    # "cacheKey":Ljava/lang/String;
    .end local v8    # "startTime":J
    .end local v10    # "endTime":J
    .end local v17    # "content":Ljava/io/InputStream;
    .end local v18    # "data":Ljava/lang/String;
    .end local v20    # "entity":Lorg/apache/http/HttpEntity;
    .end local v22    # "intervalInMilliseconds":J
    .end local v24    # "payLoad":Ljava/lang/String;
    .end local v25    # "response":Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v19

    .line 201
    .local v19, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v5, v6}, Lcom/tigo/mfsapp/service/Request$RunGetContents;->handleError(Ljava/lang/Exception;Lorg/apache/http/HttpResponse;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 195
    .local v19, "e":Ljavax/net/ssl/SSLException;
    :cond_d
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v5, v6}, Lcom/tigo/mfsapp/service/Request$RunGetContents;->handleError(Ljava/lang/Exception;Lorg/apache/http/HttpResponse;Ljava/lang/String;)V

    goto/16 :goto_3
.end method
