.class final Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$IndexListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ContactListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IndexListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private selectedIndex:I

.field final synthetic this$1:Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;


# direct methods
.method private constructor <init>(Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;Landroid/content/Context;I[Ljava/lang/Object;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .param p4, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$IndexListAdapter;->this$1:Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;

    .line 111
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method synthetic constructor <init>(Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;Landroid/content/Context;I[Ljava/lang/Object;Lcom/tigo/mfsapp/common/ContactListFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # I
    .param p4, "x3"    # [Ljava/lang/Object;
    .param p5, "x4"    # Lcom/tigo/mfsapp/common/ContactListFragment$1;

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$IndexListAdapter;-><init>(Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 117
    if-nez p2, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$IndexListAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030041

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 121
    :cond_0
    const v2, 0x7f0d00fa

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 122
    .local v1, "textView":Landroid/widget/TextView;
    const v2, 0x7f0d00f9

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 123
    .local v0, "bg":Landroid/view/View;
    iget v2, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$IndexListAdapter;->selectedIndex:I

    if-ne p1, v2, :cond_1

    .line 124
    const v2, 0x7f020087

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 127
    :goto_0
    invoke-virtual {p0, p1}, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$IndexListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    return-object p2

    .line 126
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public setSelectedIndex(I)V
    .locals 9
    .param p1, "selectedIndex"    # I

    .prologue
    const v8, 0x7f0d00f9

    const/4 v6, 0x0

    .line 133
    iget v7, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$IndexListAdapter;->selectedIndex:I

    if-eq v7, p1, :cond_0

    const/4 v0, 0x1

    .line 134
    .local v0, "changed":Z
    :goto_0
    iput p1, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$IndexListAdapter;->selectedIndex:I

    .line 135
    if-eqz v0, :cond_3

    .line 137
    iget-object v7, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$IndexListAdapter;->this$1:Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;

    invoke-static {v7}, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->access$100(Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;)Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    .line 138
    .local v2, "from":I
    iget-object v7, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$IndexListAdapter;->this$1:Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;

    invoke-static {v7}, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->access$100(Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;)Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v4

    .line 139
    .local v4, "to":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v7, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$IndexListAdapter;->this$1:Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;

    invoke-static {v7}, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->access$100(Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;)Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 141
    iget-object v7, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$IndexListAdapter;->this$1:Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;

    invoke-static {v7}, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->access$100(Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;)Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 142
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 139
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "changed":Z
    .end local v2    # "from":I
    .end local v3    # "i":I
    .end local v4    # "to":I
    .end local v5    # "view":Landroid/view/View;
    :cond_0
    move v0, v6

    .line 133
    goto :goto_0

    .line 144
    .restart local v0    # "changed":Z
    .restart local v2    # "from":I
    .restart local v3    # "i":I
    .restart local v4    # "to":I
    :cond_1
    if-ge p1, v2, :cond_2

    if-gt p1, v4, :cond_3

    .line 146
    :cond_2
    sub-int v1, p1, v2

    .line 147
    .local v1, "childIndex":I
    if-ltz v1, :cond_3

    iget-object v6, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$IndexListAdapter;->this$1:Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;

    invoke-static {v6}, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->access$100(Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 149
    iget-object v6, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$IndexListAdapter;->this$1:Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;

    invoke-static {v6}, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->access$100(Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 150
    .restart local v5    # "view":Landroid/view/View;
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f020087

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 154
    .end local v1    # "childIndex":I
    .end local v2    # "from":I
    .end local v3    # "i":I
    .end local v4    # "to":I
    .end local v5    # "view":Landroid/view/View;
    :cond_3
    return-void
.end method
