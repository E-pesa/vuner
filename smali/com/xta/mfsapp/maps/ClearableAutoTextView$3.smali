.class Lcom/tigo/mfsapp/maps/ClearableAutoTextView$3;
.super Ljava/lang/Object;
.source "ClearableAutoTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->getResponse(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/maps/ClearableAutoTextView;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/maps/ClearableAutoTextView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/maps/ClearableAutoTextView;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$3;->this$0:Lcom/tigo/mfsapp/maps/ClearableAutoTextView;

    iput-object p2, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$3;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 232
    iget-object v4, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$3;->this$0:Lcom/tigo/mfsapp/maps/ClearableAutoTextView;

    iget-object v5, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$3;->val$query:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->access$200(Lcom/tigo/mfsapp/maps/ClearableAutoTextView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 233
    .local v3, "url":Ljava/lang/String;
    const-string v4, "ClearableAutoTextView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Calling URL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-static {v3}, Lcom/tigo/mfsapp/maps/HttpConnector;->getResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, "response":Ljava/lang/String;
    iget-object v4, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$3;->this$0:Lcom/tigo/mfsapp/maps/ClearableAutoTextView;

    invoke-static {v4}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->access$300(Lcom/tigo/mfsapp/maps/ClearableAutoTextView;)Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AutoCompleteResponseParser;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AutoCompleteResponseParser;->parseAutoCompleteResponse(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 236
    .local v0, "displayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/maps/ClearableAutoTextView$DisplayStringInterface;>;"
    iget-object v4, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$3;->this$0:Lcom/tigo/mfsapp/maps/ClearableAutoTextView;

    invoke-static {v4}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->access$400(Lcom/tigo/mfsapp/maps/ClearableAutoTextView;)Landroid/os/Handler;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 237
    .local v1, "msg":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 238
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 239
    return-void
.end method
