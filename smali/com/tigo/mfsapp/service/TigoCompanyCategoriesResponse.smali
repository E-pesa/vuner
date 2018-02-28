.class public Lcom/tigo/mfsapp/service/TigoCompanyCategoriesResponse;
.super Lcom/tigo/mfsapp/service/JsonResponse;
.source "TigoCompanyCategoriesResponse.java"


# instance fields
.field private categories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/CompanyCategory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/tigo/mfsapp/service/JsonResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getTigoCompanyCategories()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/CompanyCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tigo/mfsapp/service/TigoCompanyCategoriesResponse;->categories:Ljava/util/ArrayList;

    return-object v0
.end method

.method public processResponse(Lorg/json/JSONObject;Z)V
    .locals 7
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "isSucess"    # Z

    .prologue
    .line 19
    if-eqz p2, :cond_0

    .line 23
    :try_start_0
    const-string v5, "Categories"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 24
    .local v2, "jsonArray":Lorg/json/JSONArray;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/tigo/mfsapp/service/TigoCompanyCategoriesResponse;->categories:Ljava/util/ArrayList;

    .line 26
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 28
    .local v3, "parser":Lcom/google/gson/Gson;
    const/4 v4, 0x0

    .local v4, "x":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 30
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/tigo/mfsapp/model/CompanyCategory;

    invoke-virtual {v3, v5, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/model/CompanyCategory;

    .line 31
    .local v0, "companyCategory":Lcom/tigo/mfsapp/model/CompanyCategory;
    iget-object v5, p0, Lcom/tigo/mfsapp/service/TigoCompanyCategoriesResponse;->categories:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 34
    .end local v0    # "companyCategory":Lcom/tigo/mfsapp/model/CompanyCategory;
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "parser":Lcom/google/gson/Gson;
    .end local v4    # "x":I
    :catch_0
    move-exception v1

    .line 36
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 40
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    return-void
.end method
