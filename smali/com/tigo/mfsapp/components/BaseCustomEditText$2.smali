.class Lcom/tigo/mfsapp/components/BaseCustomEditText$2;
.super Ljava/lang/Object;
.source "BaseCustomEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/components/BaseCustomEditText;
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
    .line 235
    iput-object p1, p0, Lcom/tigo/mfsapp/components/BaseCustomEditText$2;->this$0:Lcom/tigo/mfsapp/components/BaseCustomEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 238
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/tigo/mfsapp/components/BaseCustomEditText$2;->this$0:Lcom/tigo/mfsapp/components/BaseCustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/BaseCustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v1, p0, Lcom/tigo/mfsapp/components/BaseCustomEditText$2;->this$0:Lcom/tigo/mfsapp/components/BaseCustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/BaseCustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 245
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 247
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 249
    return-void
.end method
