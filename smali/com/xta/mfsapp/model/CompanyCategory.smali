.class public Lcom/tigo/mfsapp/model/CompanyCategory;
.super Ljava/lang/Object;
.source "CompanyCategory.java"


# instance fields
.field private CategoryID:Ljava/lang/String;

.field private CategoryName:Lcom/tigo/mfsapp/model/LanguageDescriptions;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategoryID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/tigo/mfsapp/model/CompanyCategory;->CategoryID:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryName()Lcom/tigo/mfsapp/model/LanguageDescriptions;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/tigo/mfsapp/model/CompanyCategory;->CategoryName:Lcom/tigo/mfsapp/model/LanguageDescriptions;

    return-object v0
.end method

.method public setCategoryID(Ljava/lang/String;)V
    .locals 0
    .param p1, "categoryID"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/tigo/mfsapp/model/CompanyCategory;->CategoryID:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public setCategoryName(Lcom/tigo/mfsapp/model/LanguageDescriptions;)V
    .locals 0
    .param p1, "categoryName"    # Lcom/tigo/mfsapp/model/LanguageDescriptions;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/tigo/mfsapp/model/CompanyCategory;->CategoryName:Lcom/tigo/mfsapp/model/LanguageDescriptions;

    .line 26
    return-void
.end method
