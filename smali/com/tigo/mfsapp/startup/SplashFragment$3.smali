.class Lcom/tigo/mfsapp/startup/SplashFragment$3;
.super Ljava/lang/Object;
.source "SplashFragment.java"

# interfaces
.implements Lcom/tigo/mfsapp/utils/ConnectionUtil$ConnectionUtilListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/startup/SplashFragment;->getPhoneNumber()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/startup/SplashFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/startup/SplashFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/startup/SplashFragment;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/tigo/mfsapp/startup/SplashFragment$3;->this$0:Lcom/tigo/mfsapp/startup/SplashFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 378
    return-void
.end method

.method public success(Ljava/lang/String;)V
    .locals 10
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 340
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 341
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v8, "result"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 342
    .local v7, "result":Ljava/lang/String;
    if-eqz v7, :cond_3

    const-string v8, "OK"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 345
    const-string v8, "response"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 346
    .local v6, "resp":Lorg/json/JSONObject;
    const-string v8, "msisdn"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 348
    .local v3, "number":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v8

    const v9, 0x7f0602d6

    invoke-virtual {v8, v9}, Lcom/tigo/mfsapp/app/MfsApp;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 349
    .local v5, "prefix":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v8

    const v9, 0x7f0602d6

    invoke-virtual {v8, v9}, Lcom/tigo/mfsapp/app/MfsApp;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    .line 351
    .local v2, "length_prefix":I
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 353
    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 356
    :cond_0
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v4

    .line 357
    .local v4, "parameters":Lcom/tigo/mfsapp/model/Parameters;
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/tigo/mfsapp/common/AppPreferences;->getMSISDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "MSISDNSaved":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Parameters;->isHeaderEnrichmentEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_2

    .line 361
    :cond_1
    invoke-static {v3}, Lcom/tigo/mfsapp/common/AppPreferences;->setMSISDN(Ljava/lang/String;)V

    .line 364
    :cond_2
    invoke-static {v3}, Lcom/tigo/mfsapp/common/AppPreferences;->setHeMSISDN(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    .end local v0    # "MSISDNSaved":Ljava/lang/String;
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "length_prefix":I
    .end local v3    # "number":Ljava/lang/String;
    .end local v4    # "parameters":Lcom/tigo/mfsapp/model/Parameters;
    .end local v5    # "prefix":Ljava/lang/String;
    .end local v6    # "resp":Lorg/json/JSONObject;
    .end local v7    # "result":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void

    .line 367
    :catch_0
    move-exception v8

    goto :goto_0
.end method
