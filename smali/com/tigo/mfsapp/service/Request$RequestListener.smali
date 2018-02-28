.class public interface abstract Lcom/tigo/mfsapp/service/Request$RequestListener;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/service/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RequestListener"
.end annotation


# virtual methods
.method public abstract didReceiveContent(Lcom/tigo/mfsapp/service/Request;Lorg/apache/http/HttpResponse;Ljava/lang/String;)V
.end method

.method public abstract didReceiveError(Lcom/tigo/mfsapp/service/Request;Lorg/apache/http/HttpResponse;Ljava/lang/String;)V
.end method

.method public abstract didReceiveNetworkingError(Ljava/lang/Exception;Lcom/tigo/mfsapp/service/Request;Lorg/apache/http/HttpResponse;Ljava/lang/String;)V
.end method
