.class Lcom/tigo/mfsapp/main/MainFragment$MainItemClickListener;
.super Ljava/lang/Object;
.source "MainFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/main/MainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/main/MainFragment;


# direct methods
.method private constructor <init>(Lcom/tigo/mfsapp/main/MainFragment;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/tigo/mfsapp/main/MainFragment$MainItemClickListener;->this$0:Lcom/tigo/mfsapp/main/MainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tigo/mfsapp/main/MainFragment;Lcom/tigo/mfsapp/main/MainFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tigo/mfsapp/main/MainFragment;
    .param p2, "x1"    # Lcom/tigo/mfsapp/main/MainFragment$1;

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/tigo/mfsapp/main/MainFragment$MainItemClickListener;-><init>(Lcom/tigo/mfsapp/main/MainFragment;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 169
    .local v4, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 170
    .local v3, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v4, :cond_2

    .line 174
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/support/v4/app/Fragment;

    move-object v3, v0

    .line 175
    instance-of v5, v3, Lcom/tigo/mfsapp/balance/BalanceManager;

    if-eqz v5, :cond_0

    .line 178
    iget-object v5, p0, Lcom/tigo/mfsapp/main/MainFragment$MainItemClickListener;->this$0:Lcom/tigo/mfsapp/main/MainFragment;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/main/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v6, "ui_action"

    const-string v7, "button_press"

    const-string v8, "Check_Balance_Button"

    invoke-static {v5, v6, v7, v8}, Lcom/tigo/mfsapp/common/AnalitycsTracker;->sendViewEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    if-eqz v5, :cond_1

    .line 182
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    .line 183
    .local v1, "btn":Lcom/tigo/mfsapp/adapters/MainButtonInfo;
    invoke-virtual {v1}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->getBundle()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 186
    invoke-virtual {v1}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->getBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 198
    .end local v1    # "btn":Lcom/tigo/mfsapp/adapters/MainButtonInfo;
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    iget-object v5, p0, Lcom/tigo/mfsapp/main/MainFragment$MainItemClickListener;->this$0:Lcom/tigo/mfsapp/main/MainFragment;

    invoke-static {v5}, Lcom/tigo/mfsapp/main/MainFragment;->access$100(Lcom/tigo/mfsapp/main/MainFragment;)Lcom/tigo/mfsapp/main/MainFragment$FragmentChangeListener;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 200
    iget-object v5, p0, Lcom/tigo/mfsapp/main/MainFragment$MainItemClickListener;->this$0:Lcom/tigo/mfsapp/main/MainFragment;

    invoke-static {v5}, Lcom/tigo/mfsapp/main/MainFragment;->access$100(Lcom/tigo/mfsapp/main/MainFragment;)Lcom/tigo/mfsapp/main/MainFragment$FragmentChangeListener;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/tigo/mfsapp/main/MainFragment$FragmentChangeListener;->onChange(Landroid/support/v4/app/Fragment;)V

    .line 203
    :cond_2
    return-void

    .line 189
    :catch_0
    move-exception v2

    .line 192
    .local v2, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v2}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 193
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v2

    .line 196
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method
