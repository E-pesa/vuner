.class Lcom/tigo/mfsapp/maps/MapViewFragment$10;
.super Ljava/lang/Object;
.source "MapViewFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/maps/MapViewFragment;->showSearchInActionBar(Landroid/view/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/maps/MapViewFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/maps/MapViewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/maps/MapViewFragment;

    .prologue
    .line 678
    iput-object p1, p0, Lcom/tigo/mfsapp/maps/MapViewFragment$10;->this$0:Lcom/tigo/mfsapp/maps/MapViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "arg0"    # Landroid/widget/TextView;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    .line 682
    move-object v0, p1

    check-cast v0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;

    .line 683
    .local v0, "autoTextView":Lcom/tigo/mfsapp/maps/ClearableAutoTextView;
    const/4 v4, 0x3

    if-ne p2, v4, :cond_0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 684
    invoke-virtual {v0}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$DisplayStringInterface;

    .line 685
    .local v2, "item":Lcom/tigo/mfsapp/maps/ClearableAutoTextView$DisplayStringInterface;
    invoke-interface {v2}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$DisplayStringInterface;->getDisplayString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->setText(Ljava/lang/CharSequence;)V

    .line 686
    invoke-interface {v2}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$DisplayStringInterface;->getDisplayString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->searchText(Ljava/lang/String;)V

    .line 687
    iget-object v3, p0, Lcom/tigo/mfsapp/maps/MapViewFragment$10;->this$0:Lcom/tigo/mfsapp/maps/MapViewFragment;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/maps/MapViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 688
    .local v1, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 689
    const/4 v3, 0x1

    .line 691
    .end local v1    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    .end local v2    # "item":Lcom/tigo/mfsapp/maps/ClearableAutoTextView$DisplayStringInterface;
    :cond_0
    return v3
.end method
