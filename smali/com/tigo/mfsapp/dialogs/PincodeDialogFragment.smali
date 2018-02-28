.class public Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "PincodeDialogFragment.java"


# static fields
.field private static final CURRENCY_SYMBOL:Ljava/lang/String; = "CURRENCY_SYMBOL"

.field private static final FEE_VALUE:Ljava/lang/String; = "FEE_VALUE"

.field public static final PINCODE:Ljava/lang/String; = "PINCODE"


# instance fields
.field private cancel:Landroid/widget/Button;

.field private currencySymbol:Ljava/lang/String;

.field private fee:Landroid/widget/TextView;

.field private feeValue:Ljava/lang/Float;

.field private next:Landroid/widget/Button;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private pincode:Lcom/tigo/mfsapp/components/PinCustomEditText;

.field private pincodeTextValue:Ljava/lang/String;

.field private pincodeTitleValue:Ljava/lang/String;

.field private text:Landroid/widget/TextView;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->currencySymbol:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->pincodeTextValue:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->pincodeTitleValue:Ljava/lang/String;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;)Lcom/tigo/mfsapp/components/PinCustomEditText;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->pincode:Lcom/tigo/mfsapp/components/PinCustomEditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->onClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private showFeeIfNeeded()V
    .locals 4

    .prologue
    .line 134
    iget-object v0, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->feeValue:Ljava/lang/Float;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->feeValue:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->fee:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "* "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600ee

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->currencySymbol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->feeValue:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormater(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->fee:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    :cond_0
    return-void
.end method


# virtual methods
.method public getPincode()Lcom/tigo/mfsapp/components/CustomEditText;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->pincode:Lcom/tigo/mfsapp/components/PinCustomEditText;

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 48
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 49
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz p1, :cond_0

    .line 51
    const-string v1, "FEE_VALUE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->feeValue:Ljava/lang/Float;

    .line 52
    const-string v1, "CURRENCY_SYMBOL"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->currencySymbol:Ljava/lang/String;

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->pincodeTitleValue:Ljava/lang/String;

    if-nez v1, :cond_1

    const v1, 0x7f06005f

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 57
    :goto_0
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 58
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 59
    return-object v0

    .line 56
    :cond_1
    iget-object v1, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->pincodeTitleValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 76
    const v0, 0x7f03004f

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->view:Landroid/view/View;

    .line 78
    iget-object v0, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->view:Landroid/view/View;

    const v2, 0x7f0d0123

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/components/PinCustomEditText;

    iput-object v0, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->pincode:Lcom/tigo/mfsapp/components/PinCustomEditText;

    .line 80
    iget-object v0, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->view:Landroid/view/View;

    const v2, 0x7f0d0125

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->next:Landroid/widget/Button;

    .line 81
    iget-object v0, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->view:Landroid/view/View;

    const v2, 0x7f0d0124

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->cancel:Landroid/widget/Button;

    .line 83
    iget-object v0, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->view:Landroid/view/View;

    const v2, 0x7f0d0122

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->fee:Landroid/widget/TextView;

    .line 84
    iget-object v0, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->view:Landroid/view/View;

    const v2, 0x7f0d0121

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->text:Landroid/widget/TextView;

    .line 85
    iget-object v0, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->pincodeTextValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->text:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->pincodeTextValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fee amount validator: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->feeValue:Ljava/lang/Float;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tigo/mfsapp/utils/Logger;->debug(Ljava/lang/String;)V

    .line 88
    invoke-direct {p0}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->showFeeIfNeeded()V

    .line 90
    iget-object v0, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->next:Landroid/widget/Button;

    new-instance v1, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment$1;-><init>(Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->cancel:Landroid/widget/Button;

    new-instance v1, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment$2;-><init>(Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->view:Landroid/view/View;

    return-object v0

    :cond_1
    move v0, v1

    .line 87
    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->feeValue:Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 67
    const-string v0, "FEE_VALUE"

    iget-object v1, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->feeValue:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 68
    const-string v0, "CURRENCY_SYMBOL"

    iget-object v1, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->currencySymbol:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 71
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->onClickListener:Landroid/view/View$OnClickListener;

    .line 145
    return-void
.end method

.method public setPincodeText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->text:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    :cond_0
    iput-object p1, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->pincodeTextValue:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setPincodeTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 170
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 171
    :cond_0
    iput-object p1, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->pincodeTitleValue:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public showCurrencySynbol(Ljava/lang/String;)V
    .locals 0
    .param p1, "currencySymbol"    # Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->currencySymbol:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public showFee(Ljava/lang/Float;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Float;

    .prologue
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fee value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tigo/mfsapp/utils/Logger;->debug(Ljava/lang/String;)V

    .line 155
    iput-object p1, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->feeValue:Ljava/lang/Float;

    .line 156
    return-void
.end method
