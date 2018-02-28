.class Lcom/tigo/mfsapp/maps/ClearableAutoTextView$4;
.super Ljava/lang/Object;
.source "ClearableAutoTextView.java"

# interfaces
.implements Lcom/tigo/mfsapp/maps/GetLatLngUtil$GetLatLngResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->getLatLngFromAddress(Ljava/lang/String;)V
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
    .line 302
    iput-object p1, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$4;->this$0:Lcom/tigo/mfsapp/maps/ClearableAutoTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$4;->this$0:Lcom/tigo/mfsapp/maps/ClearableAutoTextView;

    invoke-static {v0}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->access$100(Lcom/tigo/mfsapp/maps/ClearableAutoTextView;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Location information cannot be fetched.."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 315
    return-void
.end method

.method public onLatLngReceive(DD)V
    .locals 1
    .param p1, "lat"    # D
    .param p3, "lng"    # D

    .prologue
    .line 307
    iget-object v0, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$4;->this$0:Lcom/tigo/mfsapp/maps/ClearableAutoTextView;

    invoke-static {v0}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->access$600(Lcom/tigo/mfsapp/maps/ClearableAutoTextView;)Lcom/tigo/mfsapp/maps/SelectionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$4;->this$0:Lcom/tigo/mfsapp/maps/ClearableAutoTextView;

    invoke-static {v0}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->access$600(Lcom/tigo/mfsapp/maps/ClearableAutoTextView;)Lcom/tigo/mfsapp/maps/SelectionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tigo/mfsapp/maps/SelectionListener;->onReceiveLocationInformation(DD)V

    .line 309
    :cond_0
    return-void
.end method
