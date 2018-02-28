.class public Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "VoucherDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$OnVoucherDetailListener;
    }
.end annotation


# static fields
.field public static final PARAM_VOUCHER:Ljava/lang/String; = "PARAM_VOUCHER"

.field protected static final REQUEST_CODE_PINCODE:I = 0x1


# instance fields
.field private actionSubmit:I

.field private cancelVoucherButton:Landroid/widget/Button;

.field private dateTimeVoucherText:Landroid/widget/TextView;

.field private dialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

.field private onVoucherDetailListener:Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$OnVoucherDetailListener;

.field private pinCode:Ljava/lang/String;

.field private recipientMsisdnText:Landroid/widget/TextView;

.field private recipientNameText:Landroid/widget/TextView;

.field private resendNotificationButton:Landroid/widget/Button;

.field private voucher:Lcom/tigo/mfsapp/model/PendingVouchers;

.field private voucherAmountText:Landroid/widget/TextView;

.field private voucherNumberText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->pinCode:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->actionSubmit:I

    return p1
.end method

.method static synthetic access$100(Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->submit()V

    return-void
.end method

.method static synthetic access$200(Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;)Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->dialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    return-object v0
.end method

.method static synthetic access$202(Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;)Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;
    .param p1, "x1"    # Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->dialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    return-object p1
.end method

.method static synthetic access$302(Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->pinCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->submit()V

    return-void
.end method

.method static synthetic access$500(Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->submit()V

    return-void
.end method

.method static synthetic access$600(Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->submit()V

    return-void
.end method


# virtual methods
.method protected cancelVoucher()V
    .locals 4

    .prologue
    .line 118
    const v0, 0x7f0601ce

    const v1, 0x7f0601cd

    const/4 v2, 0x1

    new-instance v3, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$3;

    invoke-direct {v3, p0}, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$3;-><init>(Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->showYesNoDialog(IIZLcom/tigo/mfsapp/dialogs/YesNoDialogFragment$OnYesNoListener;)V

    .line 161
    return-void
.end method

.method public didResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 1
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 287
    invoke-super {p0, p1, p2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->didResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    .line 288
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/Response;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->dialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 292
    :cond_0
    return-void
.end method

.method public getNameAnalyticsScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    const-string v0, "PendingVouchersDetails"

    return-object v0
.end method

.method public getOnVoucherDetailListener()Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$OnVoucherDetailListener;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->onVoucherDetailListener:Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$OnVoucherDetailListener;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    const v0, 0x7f0601c1

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 243
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d025d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->voucherNumberText:Landroid/widget/TextView;

    .line 84
    invoke-virtual {p0}, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d025f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->voucherAmountText:Landroid/widget/TextView;

    .line 85
    invoke-virtual {p0}, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d0262

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->dateTimeVoucherText:Landroid/widget/TextView;

    .line 86
    invoke-virtual {p0}, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d0265

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->recipientMsisdnText:Landroid/widget/TextView;

    .line 87
    invoke-virtual {p0}, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d0268

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->recipientNameText:Landroid/widget/TextView;

    .line 89
    invoke-virtual {p0}, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d026a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->cancelVoucherButton:Landroid/widget/Button;

    .line 90
    iget-object v0, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->cancelVoucherButton:Landroid/widget/Button;

    new-instance v1, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$1;

    invoke-direct {v1, p0}, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$1;-><init>(Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-virtual {p0}, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d0269

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->resendNotificationButton:Landroid/widget/Button;

    .line 100
    iget-object v0, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->resendNotificationButton:Landroid/widget/Button;

    new-instance v1, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$2;

    invoke-direct {v1, p0}, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$2;-><init>(Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 227
    packed-switch p1, :pswitch_data_0

    .line 236
    :pswitch_0
    return-void

    .line 227
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 66
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v5, "PARAM_VOUCHER"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 68
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 69
    .local v1, "gson":Lcom/google/gson/Gson;
    const-string v5, "PARAM_VOUCHER"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "jsonString":Ljava/lang/String;
    const-class v3, Lcom/tigo/mfsapp/model/PendingVouchers;

    .line 71
    .local v3, "typeOfVoucher":Ljava/lang/reflect/Type;
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tigo/mfsapp/model/PendingVouchers;

    iput-object v5, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->voucher:Lcom/tigo/mfsapp/model/PendingVouchers;

    .line 74
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .end local v2    # "jsonString":Ljava/lang/String;
    .end local v3    # "typeOfVoucher":Ljava/lang/reflect/Type;
    :cond_0
    const v5, 0x7f0300b0

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 75
    .local v4, "view":Landroid/view/View;
    return-object v4
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 4
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    const/4 v2, 0x0

    .line 256
    instance-of v0, p2, Lcom/tigo/mfsapp/service/ResendOrCancelVoucherResponse;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->onVoucherDetailListener:Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$OnVoucherDetailListener;

    if-eqz v0, :cond_0

    .line 261
    iget v0, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->actionSubmit:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 263
    iget-object v0, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->onVoucherDetailListener:Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$OnVoucherDetailListener;

    iget-object v1, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->voucher:Lcom/tigo/mfsapp/model/PendingVouchers;

    invoke-interface {v0, v1}, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$OnVoucherDetailListener;->voucherDeleted(Lcom/tigo/mfsapp/model/PendingVouchers;)V

    .line 264
    invoke-virtual {p0}, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 266
    invoke-virtual {p0}, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0601c5

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 268
    invoke-virtual {p0}, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "ui_action"

    const-string v2, "button_press"

    const-string v3, "Cancel_Voucher_Button"

    invoke-static {v0, v1, v2, v3}, Lcom/tigo/mfsapp/common/AnalitycsTracker;->sendViewEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    iget v0, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->actionSubmit:I

    if-nez v0, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0601c9

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 213
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onStart()V

    .line 214
    iget-object v0, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->voucher:Lcom/tigo/mfsapp/model/PendingVouchers;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->voucherNumberText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->voucher:Lcom/tigo/mfsapp/model/PendingVouchers;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/PendingVouchers;->getVoucherID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v0, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->voucherAmountText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->voucher:Lcom/tigo/mfsapp/model/PendingVouchers;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/PendingVouchers;->getAmount()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v0, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->dateTimeVoucherText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->voucher:Lcom/tigo/mfsapp/model/PendingVouchers;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/PendingVouchers;->getVoucherDateTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v0, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->recipientMsisdnText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->voucher:Lcom/tigo/mfsapp/model/PendingVouchers;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/PendingVouchers;->getRecipientMSISDN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v0, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->recipientNameText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->voucher:Lcom/tigo/mfsapp/model/PendingVouchers;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/PendingVouchers;->getRecipientName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->voucher:Lcom/tigo/mfsapp/model/PendingVouchers;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/PendingVouchers;->getRecipientLastName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    :cond_0
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 4
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 249
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->voucher:Lcom/tigo/mfsapp/model/PendingVouchers;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/PendingVouchers;->getVoucherID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->pinCode:Ljava/lang/String;

    iget v3, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->actionSubmit:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/tigo/mfsapp/service/Connection;->requestResendOrCancelVoucher(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 251
    return-void
.end method

.method protected onValidateData()Z
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x1

    return v0
.end method

.method protected resendNotification()V
    .locals 4

    .prologue
    .line 165
    const v0, 0x7f0601d0

    const v1, 0x7f0601cf

    const/4 v2, 0x1

    new-instance v3, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$4;

    invoke-direct {v3, p0}, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$4;-><init>(Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->showYesNoDialog(IIZLcom/tigo/mfsapp/dialogs/YesNoDialogFragment$OnYesNoListener;)V

    .line 208
    return-void
.end method

.method public setOnVoucherDetailListener(Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$OnVoucherDetailListener;)V
    .locals 0
    .param p1, "onVoucherDetailListener"    # Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$OnVoucherDetailListener;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->onVoucherDetailListener:Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$OnVoucherDetailListener;

    .line 303
    return-void
.end method
