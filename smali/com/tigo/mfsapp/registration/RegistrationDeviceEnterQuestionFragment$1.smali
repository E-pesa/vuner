.class Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment$1;
.super Ljava/lang/Object;
.source "RegistrationDeviceEnterQuestionFragment.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment$1;->this$0:Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 84
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 86
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    const-string v1, ""

    .line 91
    :goto_1
    return-object v1

    .line 84
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
