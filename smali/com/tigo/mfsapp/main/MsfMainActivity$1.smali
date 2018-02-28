.class Lcom/tigo/mfsapp/main/MsfMainActivity$1;
.super Landroid/support/v7/app/ActionBarDrawerToggle;
.source "MsfMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/main/MsfMainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/main/MsfMainActivity;

.field final synthetic val$mainFragment:Lcom/tigo/mfsapp/main/MainFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/main/MsfMainActivity;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;IILcom/tigo/mfsapp/main/MainFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/main/MsfMainActivity;
    .param p2, "x0"    # Landroid/app/Activity;
    .param p3, "x1"    # Landroid/support/v4/widget/DrawerLayout;
    .param p4, "x2"    # I
    .param p5, "x3"    # I

    .prologue
    .line 128
    iput-object p1, p0, Lcom/tigo/mfsapp/main/MsfMainActivity$1;->this$0:Lcom/tigo/mfsapp/main/MsfMainActivity;

    iput-object p6, p0, Lcom/tigo/mfsapp/main/MsfMainActivity$1;->val$mainFragment:Lcom/tigo/mfsapp/main/MainFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/tigo/mfsapp/main/MsfMainActivity$1;->this$0:Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->supportInvalidateOptionsMenu()V

    .line 133
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 1
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/tigo/mfsapp/main/MsfMainActivity$1;->val$mainFragment:Lcom/tigo/mfsapp/main/MainFragment;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/tigo/mfsapp/main/MsfMainActivity$1;->val$mainFragment:Lcom/tigo/mfsapp/main/MainFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/main/MainFragment;->refreshTransactionsNotification()V

    .line 141
    iget-object v0, p0, Lcom/tigo/mfsapp/main/MsfMainActivity$1;->val$mainFragment:Lcom/tigo/mfsapp/main/MainFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/main/MainFragment;->refreshMerchantNotification()V

    .line 142
    iget-object v0, p0, Lcom/tigo/mfsapp/main/MsfMainActivity$1;->val$mainFragment:Lcom/tigo/mfsapp/main/MainFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/main/MainFragment;->refreshPendingVouchersNotification()V

    .line 143
    iget-object v0, p0, Lcom/tigo/mfsapp/main/MsfMainActivity$1;->val$mainFragment:Lcom/tigo/mfsapp/main/MainFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/main/MainFragment;->refreshPendingTransactionNotification()V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/main/MsfMainActivity$1;->this$0:Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->supportInvalidateOptionsMenu()V

    .line 148
    return-void
.end method
