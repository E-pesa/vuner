.class Lcom/tigo/mfsapp/maps/ClearableAutoTextView$1;
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
    .line 192
    iput-object p1, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$1;->this$0:Lcom/tigo/mfsapp/maps/ClearableAutoTextView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 196
    iget v2, p1, Landroid/os/Message;->what:I

    if-nez v2, :cond_0

    .line 198
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 199
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "query"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "query":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    if-eqz v1, :cond_0

    .line 203
    iget-object v2, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$1;->this$0:Lcom/tigo/mfsapp/maps/ClearableAutoTextView;

    invoke-static {v2, v1}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->access$000(Lcom/tigo/mfsapp/maps/ClearableAutoTextView;Ljava/lang/String;)V

    .line 206
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "query":Ljava/lang/String;
    :cond_0
    return-void
.end method
