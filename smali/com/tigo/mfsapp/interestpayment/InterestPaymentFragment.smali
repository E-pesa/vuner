.class public Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "InterestPaymentFragment.java"

# interfaces
.implements Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter$ItemConfirmListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment$InterestPaymentItemClickListener;
    }
.end annotation


# static fields
.field protected static final REQUEST_CODE_PINCODE:I = 0x1


# instance fields
.field private action:I

.field private adapter:Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter;

.field dialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

.field interestPayments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/InterestPaymentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Landroid/widget/ListView;

.field private pinCode:Ljava/lang/String;

.field private progressView:Landroid/view/View;

.field private selectedItemFromAppServer:Ljava/lang/String;

.field private selectedItemId:Ljava/lang/String;

.field private thereWasAnError:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->action:I

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->pinCode:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->selectedItemId:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->selectedItemFromAppServer:Ljava/lang/String;

    .line 75
    return-void
.end method

.method static synthetic access$102(Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->pinCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->action:I

    return p1
.end method

.method static synthetic access$300(Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->submit()V

    return-void
.end method

.method private appendInterestPayments(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/InterestPaymentInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/InterestPaymentInfo;>;"
    iget-object v1, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->interestPayments:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 142
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->interestPayments:Ljava/util/ArrayList;

    .line 144
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/model/InterestPaymentInfo;

    .line 147
    .local v0, "info":Lcom/tigo/mfsapp/model/InterestPaymentInfo;
    iget-object v2, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->selectedItemFromAppServer:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/InterestPaymentInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/tigo/mfsapp/model/InterestPaymentInfo;->setSelected(Z)V

    .line 152
    :cond_1
    iget-object v2, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->interestPayments:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 154
    .end local v0    # "info":Lcom/tigo/mfsapp/model/InterestPaymentInfo;
    :cond_2
    return-void
.end method

.method private showTransactionConfirm()V
    .locals 4

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060076

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060172

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "idString":Ljava/lang/String;
    new-instance v2, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment$2;

    invoke-direct {v2, p0}, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment$2;-><init>(Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;)V

    invoke-virtual {p0, v1, v0, v2}, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->showOkDialog(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 250
    return-void
.end method


# virtual methods
.method protected confirmInterestPayment()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 201
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->isLoginRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->isAskPinOnTransactions()Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    iput v4, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->action:I

    .line 204
    invoke-virtual {p0}, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->submit()V

    .line 233
    :goto_0
    return-void

    .line 210
    :cond_0
    new-instance v1, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    invoke-direct {v1}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;-><init>()V

    iput-object v1, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->dialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    .line 212
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 214
    .local v0, "currentapiVersion":I
    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 216
    iget-object v1, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->dialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    const/4 v2, 0x0

    const v3, 0x7f0b0085

    invoke-virtual {v1, v2, v3}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->setStyle(II)V

    .line 219
    :cond_1
    iget-object v1, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->dialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    invoke-virtual {v1, p0, v4}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 220
    iget-object v1, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->dialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 221
    iget-object v1, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->dialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    new-instance v2, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment$1;

    invoke-direct {v2, p0}, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment$1;-><init>(Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;)V

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public didReceiveHttpError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Request;)V
    .locals 1
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "request"    # Lcom/tigo/mfsapp/service/Request;

    .prologue
    .line 179
    invoke-super {p0, p1, p2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->didReceiveHttpError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Request;)V

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->thereWasAnError:Z

    .line 181
    return-void
.end method

.method public didResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 1
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 171
    invoke-super {p0, p1, p2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->didResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    .line 172
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/Response;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->thereWasAnError:Z

    .line 174
    :cond_0
    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    const v0, 0x7f060173

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideOkDialog()V
    .locals 1

    .prologue
    .line 186
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->hideOkDialog()V

    .line 187
    iget-boolean v0, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->thereWasAnError:Z

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->closeAndGoHome()V

    .line 189
    :cond_0
    return-void
.end method

.method public hideProgressDialog()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->progressView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 95
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->hideProgressDialog()V

    .line 96
    return-void
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 101
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 60
    iget-object v0, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->interestPayments:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->interestPayments:Ljava/util/ArrayList;

    .line 63
    invoke-virtual {p0}, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->submit()V

    .line 66
    :cond_0
    new-instance v0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f03008b

    const v3, 0x7f0d020b

    iget-object v4, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->interestPayments:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->adapter:Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter;

    .line 68
    iget-object v0, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->adapter:Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter;

    invoke-virtual {v0, p0}, Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter;->setItemConfirmListener(Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter$ItemConfirmListener;)V

    .line 70
    iget-object v0, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment$InterestPaymentItemClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment$InterestPaymentItemClickListener;-><init>(Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->adapter:Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    return-void
.end method

.method public onConfirm(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->selectedItemId:Ljava/lang/String;

    .line 195
    invoke-virtual {p0}, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->confirmInterestPayment()V

    .line 196
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    const v1, 0x7f030065

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 49
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d0159

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->listView:Landroid/widget/ListView;

    .line 50
    const v1, 0x7f0d015a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->progressView:Landroid/view/View;

    .line 52
    return-object v0
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 2
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 121
    instance-of v1, p2, Lcom/tigo/mfsapp/service/InterestPaymentResponse;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 123
    check-cast v0, Lcom/tigo/mfsapp/service/InterestPaymentResponse;

    .line 124
    .local v0, "interestPaymentResponse":Lcom/tigo/mfsapp/service/InterestPaymentResponse;
    invoke-virtual {v0}, Lcom/tigo/mfsapp/service/InterestPaymentResponse;->getSelected()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->selectedItemFromAppServer:Ljava/lang/String;

    .line 125
    invoke-virtual {v0}, Lcom/tigo/mfsapp/service/InterestPaymentResponse;->getInterestPayments()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->appendInterestPayments(Ljava/util/ArrayList;)V

    .line 126
    invoke-virtual {p0}, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->hideProgressDialog()V

    .line 130
    .end local v0    # "interestPaymentResponse":Lcom/tigo/mfsapp/service/InterestPaymentResponse;
    :cond_0
    instance-of v1, p2, Lcom/tigo/mfsapp/service/SetInterestPaymentResponse;

    if-eqz v1, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->hideProgressDialog()V

    .line 133
    invoke-direct {p0}, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->showTransactionConfirm()V

    .line 137
    :cond_1
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 3
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 106
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "token":Ljava/lang/String;
    iget v1, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->action:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 110
    iget-object v1, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->pinCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->selectedItemId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/tigo/mfsapp/service/Connection;->requestSetInterestPayment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const/4 v1, 0x0

    iput v1, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->action:I

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-virtual {p1, v0}, Lcom/tigo/mfsapp/service/Connection;->requestInterestPayment(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onValidateData()Z
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public showProgressDialog()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->progressView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->showProgressDialog()V

    .line 89
    return-void
.end method
