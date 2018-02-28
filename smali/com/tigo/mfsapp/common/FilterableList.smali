.class public interface abstract Lcom/tigo/mfsapp/common/FilterableList;
.super Ljava/lang/Object;
.source "FilterableList.java"

# interfaces
.implements Landroid/widget/Filterable;


# virtual methods
.method public abstract getCategoriesNames()[Ljava/lang/String;
.end method

.method public abstract getFilterForCategory(ILjava/lang/String;)Landroid/widget/Filter;
.end method

.method public abstract getFilterForShowAllCategory()Landroid/widget/Filter;
.end method

.method public abstract getFilterForShowFavoritesCategory()Landroid/widget/Filter;
.end method
