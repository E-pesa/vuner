.class Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$4;
.super Landroid/widget/Filter;
.source "ContactListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->getFilterForShowFavoritesCategory()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$4;->this$1:Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 1
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 283
    const/4 v0, 0x0

    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 278
    return-void
.end method
