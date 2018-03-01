.class Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AdapterAutoComplete$1;
.super Ljava/lang/Object;
.source "ClearableAutoTextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AdapterAutoComplete;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AdapterAutoComplete;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AdapterAutoComplete;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AdapterAutoComplete;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AdapterAutoComplete$1;->this$1:Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AdapterAutoComplete;

    iput p2, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AdapterAutoComplete$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 284
    iget-object v1, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AdapterAutoComplete$1;->this$1:Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AdapterAutoComplete;

    iget v2, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AdapterAutoComplete$1;->val$position:I

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AdapterAutoComplete;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$DisplayStringInterface;

    invoke-interface {v1}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$DisplayStringInterface;->getDisplayString()Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "searchText":Ljava/lang/String;
    iget-object v1, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AdapterAutoComplete$1;->this$1:Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AdapterAutoComplete;

    iget-object v1, v1, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AdapterAutoComplete;->this$0:Lcom/tigo/mfsapp/maps/ClearableAutoTextView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->access$502(Lcom/tigo/mfsapp/maps/ClearableAutoTextView;Z)Z

    .line 286
    iget-object v1, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AdapterAutoComplete$1;->this$1:Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AdapterAutoComplete;

    iget-object v1, v1, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AdapterAutoComplete;->this$0:Lcom/tigo/mfsapp/maps/ClearableAutoTextView;

    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v1, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AdapterAutoComplete$1;->this$1:Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AdapterAutoComplete;

    iget-object v1, v1, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AdapterAutoComplete;->this$0:Lcom/tigo/mfsapp/maps/ClearableAutoTextView;

    invoke-static {v1}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->access$600(Lcom/tigo/mfsapp/maps/ClearableAutoTextView;)Lcom/tigo/mfsapp/maps/SelectionListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AdapterAutoComplete$1;->this$1:Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AdapterAutoComplete;

    iget-object v1, v1, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AdapterAutoComplete;->this$0:Lcom/tigo/mfsapp/maps/ClearableAutoTextView;

    invoke-static {v1}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->access$600(Lcom/tigo/mfsapp/maps/ClearableAutoTextView;)Lcom/tigo/mfsapp/maps/SelectionListener;

    move-result-object v2

    iget-object v1, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AdapterAutoComplete$1;->this$1:Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AdapterAutoComplete;

    iget v3, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AdapterAutoComplete$1;->val$position:I

    invoke-virtual {v1, v3}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AdapterAutoComplete;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$DisplayStringInterface;

    invoke-interface {v2, v1}, Lcom/tigo/mfsapp/maps/SelectionListener;->onItemSelection(Lcom/tigo/mfsapp/maps/ClearableAutoTextView$DisplayStringInterface;)V

    .line 289
    :cond_0
    iget-object v1, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AdapterAutoComplete$1;->this$1:Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AdapterAutoComplete;

    iget-object v1, v1, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AdapterAutoComplete;->this$0:Lcom/tigo/mfsapp/maps/ClearableAutoTextView;

    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->searchText(Ljava/lang/String;)V

    .line 291
    iget-object v1, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AdapterAutoComplete$1;->this$1:Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AdapterAutoComplete;

    iget-object v1, v1, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AdapterAutoComplete;->this$0:Lcom/tigo/mfsapp/maps/ClearableAutoTextView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->access$502(Lcom/tigo/mfsapp/maps/ClearableAutoTextView;Z)Z

    .line 292
    return-void
.end method
