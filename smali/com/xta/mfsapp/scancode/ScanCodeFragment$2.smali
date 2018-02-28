.class Lcom/tigo/mfsapp/scancode/ScanCodeFragment$2;
.super Ljava/lang/Object;
.source "ScanCodeFragment.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/scancode/ScanCodeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/scancode/ScanCodeFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/scancode/ScanCodeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/scancode/ScanCodeFragment;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment$2;->this$0:Lcom/tigo/mfsapp/scancode/ScanCodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 9
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 119
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 120
    .local v1, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 122
    .local v3, "size":Landroid/hardware/Camera$Size;
    new-instance v0, Lnet/sourceforge/zbar/Image;

    iget v6, v3, Landroid/hardware/Camera$Size;->width:I

    iget v7, v3, Landroid/hardware/Camera$Size;->height:I

    const-string v8, "Y800"

    invoke-direct {v0, v6, v7, v8}, Lnet/sourceforge/zbar/Image;-><init>(IILjava/lang/String;)V

    .line 123
    .local v0, "barcode":Lnet/sourceforge/zbar/Image;
    invoke-virtual {v0, p1}, Lnet/sourceforge/zbar/Image;->setData([B)V

    .line 125
    iget-object v6, p0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment$2;->this$0:Lcom/tigo/mfsapp/scancode/ScanCodeFragment;

    invoke-static {v6}, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->access$200(Lcom/tigo/mfsapp/scancode/ScanCodeFragment;)Lnet/sourceforge/zbar/ImageScanner;

    move-result-object v6

    invoke-virtual {v6, v0}, Lnet/sourceforge/zbar/ImageScanner;->scanImage(Lnet/sourceforge/zbar/Image;)I

    move-result v2

    .line 127
    .local v2, "result":I
    if-eqz v2, :cond_1

    .line 130
    iget-object v6, p0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment$2;->this$0:Lcom/tigo/mfsapp/scancode/ScanCodeFragment;

    invoke-static {v6}, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->access$200(Lcom/tigo/mfsapp/scancode/ScanCodeFragment;)Lnet/sourceforge/zbar/ImageScanner;

    move-result-object v6

    invoke-virtual {v6}, Lnet/sourceforge/zbar/ImageScanner;->getResults()Lnet/sourceforge/zbar/SymbolSet;

    move-result-object v5

    .line 131
    .local v5, "syms":Lnet/sourceforge/zbar/SymbolSet;
    invoke-virtual {v5}, Lnet/sourceforge/zbar/SymbolSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sourceforge/zbar/Symbol;

    .line 133
    .local v4, "sym":Lnet/sourceforge/zbar/Symbol;
    iget-object v7, p0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment$2;->this$0:Lcom/tigo/mfsapp/scancode/ScanCodeFragment;

    invoke-static {v7}, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->access$300(Lcom/tigo/mfsapp/scancode/ScanCodeFragment;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 135
    iget-object v7, p0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment$2;->this$0:Lcom/tigo/mfsapp/scancode/ScanCodeFragment;

    invoke-virtual {v4}, Lnet/sourceforge/zbar/Symbol;->getData()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->handleDecode(Ljava/lang/String;)V

    goto :goto_0

    .line 140
    .end local v4    # "sym":Lnet/sourceforge/zbar/Symbol;
    .end local v5    # "syms":Lnet/sourceforge/zbar/SymbolSet;
    :cond_1
    return-void
.end method
