.class Lcom/tigo/mfsapp/maps/ListViewFragment$3;
.super Ljava/lang/Object;
.source "ListViewFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/maps/ListViewFragment;->sortList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/tigo/mfsapp/model/maps/Pin;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/maps/ListViewFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/maps/ListViewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/maps/ListViewFragment;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/tigo/mfsapp/maps/ListViewFragment$3;->this$0:Lcom/tigo/mfsapp/maps/ListViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/tigo/mfsapp/model/maps/Pin;Lcom/tigo/mfsapp/model/maps/Pin;)I
    .locals 7
    .param p1, "lhs"    # Lcom/tigo/mfsapp/model/maps/Pin;
    .param p2, "rhs"    # Lcom/tigo/mfsapp/model/maps/Pin;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 133
    iget-object v5, p0, Lcom/tigo/mfsapp/maps/ListViewFragment$3;->this$0:Lcom/tigo/mfsapp/maps/ListViewFragment;

    invoke-static {v5}, Lcom/tigo/mfsapp/maps/ListViewFragment;->access$300(Lcom/tigo/mfsapp/maps/ListViewFragment;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/tigo/mfsapp/model/maps/Pin;->getRealDistance(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/Float;

    move-result-object v0

    .line 134
    .local v0, "distL":Ljava/lang/Float;
    iget-object v5, p0, Lcom/tigo/mfsapp/maps/ListViewFragment$3;->this$0:Lcom/tigo/mfsapp/maps/ListViewFragment;

    invoke-static {v5}, Lcom/tigo/mfsapp/maps/ListViewFragment;->access$300(Lcom/tigo/mfsapp/maps/ListViewFragment;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/tigo/mfsapp/model/maps/Pin;->getRealDistance(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/Float;

    move-result-object v1

    .line 136
    .local v1, "distR":Ljava/lang/Float;
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v2

    .line 138
    :cond_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    move v2, v3

    .line 139
    goto :goto_0

    .line 140
    :cond_2
    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    move v2, v4

    .line 141
    goto :goto_0

    .line 142
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    move v2, v3

    .line 143
    goto :goto_0

    .line 144
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpg-float v3, v3, v5

    if-gez v3, :cond_0

    move v2, v4

    .line 145
    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 130
    check-cast p1, Lcom/tigo/mfsapp/model/maps/Pin;

    check-cast p2, Lcom/tigo/mfsapp/model/maps/Pin;

    invoke-virtual {p0, p1, p2}, Lcom/tigo/mfsapp/maps/ListViewFragment$3;->compare(Lcom/tigo/mfsapp/model/maps/Pin;Lcom/tigo/mfsapp/model/maps/Pin;)I

    move-result v0

    return v0
.end method
