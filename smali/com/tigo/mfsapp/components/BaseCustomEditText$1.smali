.class Lcom/tigo/mfsapp/components/BaseCustomEditText$1;
.super Ljava/lang/Object;
.source "BaseCustomEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/components/BaseCustomEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/components/BaseCustomEditText;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/components/BaseCustomEditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/components/BaseCustomEditText;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/tigo/mfsapp/components/BaseCustomEditText$1;->this$0:Lcom/tigo/mfsapp/components/BaseCustomEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 78
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 83
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lcom/tigo/mfsapp/components/BaseCustomEditText$1;->this$0:Lcom/tigo/mfsapp/components/BaseCustomEditText;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/components/BaseCustomEditText;->setNormalConfiguration()V

    .line 89
    return-void
.end method
