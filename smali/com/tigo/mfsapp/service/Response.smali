.class public Lcom/tigo/mfsapp/service/Response;
.super Ljava/lang/Object;
.source "Response.java"


# instance fields
.field private content:Ljava/lang/String;

.field private httpResponse:Lorg/apache/http/HttpResponse;

.field private reference:Ljava/lang/Object;

.field private request:Lcom/tigo/mfsapp/service/Request;

.field private resultCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, -0x1

    iput v0, p0, Lcom/tigo/mfsapp/service/Response;->resultCode:I

    .line 17
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tigo/mfsapp/service/Response;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpResponse()Lorg/apache/http/HttpResponse;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/tigo/mfsapp/service/Response;->httpResponse:Lorg/apache/http/HttpResponse;

    return-object v0
.end method

.method public getReference()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tigo/mfsapp/service/Response;->reference:Ljava/lang/Object;

    return-object v0
.end method

.method public getRequest()Lcom/tigo/mfsapp/service/Request;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tigo/mfsapp/service/Response;->request:Lcom/tigo/mfsapp/service/Request;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/tigo/mfsapp/service/Response;->resultCode:I

    return v0
.end method

.method public init(Ljava/lang/String;Lorg/apache/http/HttpResponse;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "httpResponse"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/tigo/mfsapp/service/Response;->content:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/tigo/mfsapp/service/Response;->httpResponse:Lorg/apache/http/HttpResponse;

    .line 23
    return-void
.end method

.method public setReference(Ljava/lang/Object;)V
    .locals 0
    .param p1, "reference"    # Ljava/lang/Object;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/tigo/mfsapp/service/Response;->reference:Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public setRequest(Lcom/tigo/mfsapp/service/Request;)V
    .locals 0
    .param p1, "request"    # Lcom/tigo/mfsapp/service/Request;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/tigo/mfsapp/service/Response;->request:Lcom/tigo/mfsapp/service/Request;

    .line 63
    return-void
.end method

.method public setResultCode(I)V
    .locals 0
    .param p1, "resultCode"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/tigo/mfsapp/service/Response;->resultCode:I

    .line 48
    return-void
.end method
