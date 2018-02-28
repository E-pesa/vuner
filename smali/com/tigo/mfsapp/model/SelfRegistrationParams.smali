.class public Lcom/tigo/mfsapp/model/SelfRegistrationParams;
.super Ljava/lang/Object;
.source "SelfRegistrationParams.java"


# instance fields
.field private Method:Ljava/lang/String;

.field private URL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/tigo/mfsapp/model/SelfRegistrationParams;->Method:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/tigo/mfsapp/model/SelfRegistrationParams;->URL:Ljava/lang/String;

    return-object v0
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/tigo/mfsapp/model/SelfRegistrationParams;->Method:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "uRL"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/tigo/mfsapp/model/SelfRegistrationParams;->URL:Ljava/lang/String;

    .line 27
    return-void
.end method
