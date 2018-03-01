.class Lcom/tigo/mfsapp/maps/ClearableAutoTextView$2;
.super Landroid/os/Handler;
.source "ClearableAutoTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/maps/ClearableAutoTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/maps/ClearableAutoTextView;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/maps/ClearableAutoTextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/maps/ClearableAutoTextView;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$2;->this$0:Lcom/tigo/mfsapp/maps/ClearableAutoTextView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 214
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    .line 215
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/maps/ClearableAutoTextView$DisplayStringInterface;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 217
    new-instance v0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AdapterAutoComplete;

    iget-object v2, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$2;->this$0:Lcom/tigo/mfsapp/maps/ClearableAutoTextView;

    iget-object v3, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$2;->this$0:Lcom/tigo/mfsapp/maps/ClearableAutoTextView;

    invoke-static {v3}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->access$100(Lcom/tigo/mfsapp/maps/ClearableAutoTextView;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f03001c

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AdapterAutoComplete;-><init>(Lcom/tigo/mfsapp/maps/ClearableAutoTextView;Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 219
    .local v0, "autoCompleteAdapter":Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AdapterAutoComplete;
    iget-object v2, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$2;->this$0:Lcom/tigo/mfsapp/maps/ClearableAutoTextView;

    invoke-virtual {v2, v0}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 220
    invoke-virtual {v0}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AdapterAutoComplete;->notifyDataSetChanged()V

    .line 222
    .end local v0    # "autoCompleteAdapter":Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AdapterAutoComplete;
    :cond_0
    return-void
.end method
