.class Lcom/tigo/mfsapp/common/BaseFormFragment$1;
.super Ljava/lang/Object;
.source "BaseFormFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/common/BaseFormFragment;->didResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

.field final synthetic val$fconnection:Lcom/tigo/mfsapp/service/Connection;

.field final synthetic val$fresponse:Lcom/tigo/mfsapp/service/Response;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/common/BaseFormFragment;Lcom/tigo/mfsapp/service/Response;Lcom/tigo/mfsapp/service/Connection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/common/BaseFormFragment;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    iput-object p2, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fresponse:Lcom/tigo/mfsapp/service/Response;

    iput-object p3, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fconnection:Lcom/tigo/mfsapp/service/Connection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onReceivePincodeInvalidError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 8
    .param p1, "fconnection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "fresponse"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 290
    iget-object v3, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    const v4, 0x7f060155

    invoke-virtual {v3, v4}, Lcom/tigo/mfsapp/common/BaseFormFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 293
    .local v2, "tx":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/Response;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 294
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "ErrorData"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 296
    iget-object v3, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    const v4, 0x7f06014d

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tigo/mfsapp/model/Parameters;->getPhoneCustomerRepresentative()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/tigo/mfsapp/common/BaseFormFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 298
    :cond_0
    iget-object v3, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    iget-object v4, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    const v5, 0x7f06003e

    invoke-virtual {v4, v5}, Lcom/tigo/mfsapp/common/BaseFormFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/tigo/mfsapp/common/BaseFormFragment$1$1;

    invoke-direct {v5, p0}, Lcom/tigo/mfsapp/common/BaseFormFragment$1$1;-><init>(Lcom/tigo/mfsapp/common/BaseFormFragment$1;)V

    invoke-virtual {v3, v4, v2, v5}, Lcom/tigo/mfsapp/common/BaseFormFragment;->showOkDialog(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 306
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const v3, 0x7f060138

    const v4, 0x7f06003e

    .line 88
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->access$000(Lcom/tigo/mfsapp/common/BaseFormFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fresponse:Lcom/tigo/mfsapp/service/Response;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/service/Response;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->hideProgressDialog()V

    .line 92
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResultCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fresponse:Lcom/tigo/mfsapp/service/Response;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/Response;->getResultCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tigo/mfsapp/utils/Logger;->debug(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fresponse:Lcom/tigo/mfsapp/service/Response;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/service/Response;->getResultCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 283
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    iget-object v1, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fconnection:Lcom/tigo/mfsapp/service/Connection;

    iget-object v2, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fresponse:Lcom/tigo/mfsapp/service/Response;

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onReceiveUnknownError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    .line 286
    :goto_0
    return-void

    .line 106
    :sswitch_0
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    iget-object v1, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fconnection:Lcom/tigo/mfsapp/service/Connection;

    iget-object v2, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fresponse:Lcom/tigo/mfsapp/service/Response;

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    goto :goto_0

    .line 110
    :sswitch_1
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    iget-object v1, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fconnection:Lcom/tigo/mfsapp/service/Connection;

    iget-object v2, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fresponse:Lcom/tigo/mfsapp/service/Response;

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onInvalidCredentialsError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    goto :goto_0

    .line 120
    :sswitch_2
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    iget-object v1, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fconnection:Lcom/tigo/mfsapp/service/Connection;

    iget-object v2, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fresponse:Lcom/tigo/mfsapp/service/Response;

    const v3, 0x7f06014a

    const v4, 0x7f060149

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onReceiveError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;II)V

    goto :goto_0

    .line 134
    :sswitch_3
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    iget-object v1, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fconnection:Lcom/tigo/mfsapp/service/Connection;

    iget-object v2, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fresponse:Lcom/tigo/mfsapp/service/Response;

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onReceiveMaintenanceError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    goto :goto_0

    .line 138
    :sswitch_4
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    iget-object v1, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fconnection:Lcom/tigo/mfsapp/service/Connection;

    iget-object v2, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fresponse:Lcom/tigo/mfsapp/service/Response;

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onReceiveBarredUserError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    goto :goto_0

    .line 142
    :sswitch_5
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    iget-object v1, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fconnection:Lcom/tigo/mfsapp/service/Connection;

    iget-object v2, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fresponse:Lcom/tigo/mfsapp/service/Response;

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onReceiveForceChangePINCodeError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    goto :goto_0

    .line 146
    :sswitch_6
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    iget-object v1, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fconnection:Lcom/tigo/mfsapp/service/Connection;

    iget-object v2, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fresponse:Lcom/tigo/mfsapp/service/Response;

    const v3, 0x7f060136

    const v4, 0x7f060135

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onReceiveError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;II)V

    goto :goto_0

    .line 150
    :sswitch_7
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fconnection:Lcom/tigo/mfsapp/service/Connection;

    iget-object v1, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fresponse:Lcom/tigo/mfsapp/service/Response;

    invoke-direct {p0, v0, v1}, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->onReceivePincodeInvalidError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    goto :goto_0

    .line 154
    :sswitch_8
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    iget-object v1, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fconnection:Lcom/tigo/mfsapp/service/Connection;

    iget-object v2, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fresponse:Lcom/tigo/mfsapp/service/Response;

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onReceiveInvalidSessionTokenError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    goto :goto_0

    .line 159
    :sswitch_9
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    iget-object v1, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fconnection:Lcom/tigo/mfsapp/service/Connection;

    iget-object v2, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fresponse:Lcom/tigo/mfsapp/service/Response;

    const v3, 0x7f06012f

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onReceiveError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;II)V

    goto :goto_0

    .line 164
    :sswitch_a
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    iget-object v1, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fconnection:Lcom/tigo/mfsapp/service/Connection;

    iget-object v2, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fresponse:Lcom/tigo/mfsapp/service/Response;

    const v3, 0x7f060132

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onReceiveError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;II)V

    goto :goto_0

    .line 169
    :sswitch_b
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    iget-object v1, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fconnection:Lcom/tigo/mfsapp/service/Connection;

    iget-object v2, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fresponse:Lcom/tigo/mfsapp/service/Response;

    const v3, 0x7f060130

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onReceiveError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;II)V

    goto/16 :goto_0

    .line 174
    :sswitch_c
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    iget-object v1, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fconnection:Lcom/tigo/mfsapp/service/Connection;

    iget-object v2, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fresponse:Lcom/tigo/mfsapp/service/Response;

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onReceiveError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;II)V

    goto/16 :goto_0

    .line 179
    :sswitch_d
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    iget-object v1, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fconnection:Lcom/tigo/mfsapp/service/Connection;

    iget-object v2, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fresponse:Lcom/tigo/mfsapp/service/Response;

    const v3, 0x7f06012d

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onReceiveError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;II)V

    goto/16 :goto_0

    .line 184
    :sswitch_e
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    iget-object v1, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fconnection:Lcom/tigo/mfsapp/service/Connection;

    iget-object v2, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fresponse:Lcom/tigo/mfsapp/service/Response;

    const v3, 0x7f060150

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onReceiveError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;II)V

    goto/16 :goto_0

    .line 189
    :sswitch_f
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    iget-object v1, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fconnection:Lcom/tigo/mfsapp/service/Connection;

    iget-object v2, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fresponse:Lcom/tigo/mfsapp/service/Response;

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onReceiveError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;II)V

    goto/16 :goto_0

    .line 203
    :sswitch_10
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    iget-object v1, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fconnection:Lcom/tigo/mfsapp/service/Connection;

    iget-object v2, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fresponse:Lcom/tigo/mfsapp/service/Response;

    const v3, 0x7f06007a

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onReceiveError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;II)V

    goto/16 :goto_0

    .line 210
    :sswitch_11
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    iget-object v1, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fconnection:Lcom/tigo/mfsapp/service/Connection;

    iget-object v2, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fresponse:Lcom/tigo/mfsapp/service/Response;

    const v3, 0x7f060129

    const v4, 0x7f060128

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onReceiveError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;II)V

    goto/16 :goto_0

    .line 215
    :sswitch_12
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    iget-object v1, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fconnection:Lcom/tigo/mfsapp/service/Connection;

    iget-object v2, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fresponse:Lcom/tigo/mfsapp/service/Response;

    const v3, 0x7f060153

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onReceiveError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;II)V

    goto/16 :goto_0

    .line 218
    :sswitch_13
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    iget-object v1, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fconnection:Lcom/tigo/mfsapp/service/Connection;

    iget-object v2, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fresponse:Lcom/tigo/mfsapp/service/Response;

    const v3, 0x7f060086

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onReceiveError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;II)V

    goto/16 :goto_0

    .line 223
    :sswitch_14
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    iget-object v1, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fconnection:Lcom/tigo/mfsapp/service/Connection;

    iget-object v2, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fresponse:Lcom/tigo/mfsapp/service/Response;

    const v3, 0x7f06014e

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onReceiveError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;II)V

    goto/16 :goto_0

    .line 227
    :sswitch_15
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    iget-object v1, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fconnection:Lcom/tigo/mfsapp/service/Connection;

    iget-object v2, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fresponse:Lcom/tigo/mfsapp/service/Response;

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onReceiveUnregisteredDeviceError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    goto/16 :goto_0

    .line 233
    :sswitch_16
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    iget-object v1, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fconnection:Lcom/tigo/mfsapp/service/Connection;

    iget-object v2, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fresponse:Lcom/tigo/mfsapp/service/Response;

    const v3, 0x7f060145

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onReceiveError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;II)V

    goto/16 :goto_0

    .line 237
    :sswitch_17
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    iget-object v1, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fconnection:Lcom/tigo/mfsapp/service/Connection;

    iget-object v2, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fresponse:Lcom/tigo/mfsapp/service/Response;

    const v3, 0x7f06013d

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onReceiveError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;II)V

    goto/16 :goto_0

    .line 241
    :sswitch_18
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    iget-object v1, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fconnection:Lcom/tigo/mfsapp/service/Connection;

    iget-object v2, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fresponse:Lcom/tigo/mfsapp/service/Response;

    const v3, 0x7f060158

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onReceiveError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;II)V

    goto/16 :goto_0

    .line 252
    :sswitch_19
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    iget-object v1, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fconnection:Lcom/tigo/mfsapp/service/Connection;

    iget-object v2, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fresponse:Lcom/tigo/mfsapp/service/Response;

    const v3, 0x7f060146

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onReceiveError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;II)V

    goto/16 :goto_0

    .line 257
    :sswitch_1a
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    iget-object v1, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fconnection:Lcom/tigo/mfsapp/service/Connection;

    iget-object v2, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fresponse:Lcom/tigo/mfsapp/service/Response;

    const v3, 0x7f06012a

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onReceiveError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;II)V

    goto/16 :goto_0

    .line 262
    :sswitch_1b
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    iget-object v1, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fconnection:Lcom/tigo/mfsapp/service/Connection;

    iget-object v2, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fresponse:Lcom/tigo/mfsapp/service/Response;

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onReceiveCustomError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    goto/16 :goto_0

    .line 266
    :sswitch_1c
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    iget-object v1, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fconnection:Lcom/tigo/mfsapp/service/Connection;

    iget-object v2, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$1;->val$fresponse:Lcom/tigo/mfsapp/service/Response;

    const v3, 0x7f060155

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onReceiveError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;II)V

    goto/16 :goto_0

    .line 102
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x4 -> :sswitch_2
        0x7 -> :sswitch_3
        0x8 -> :sswitch_4
        0x9 -> :sswitch_5
        0xb -> :sswitch_6
        0xc -> :sswitch_7
        0xe -> :sswitch_8
        0xf -> :sswitch_9
        0x10 -> :sswitch_a
        0x11 -> :sswitch_b
        0x12 -> :sswitch_c
        0x14 -> :sswitch_d
        0x15 -> :sswitch_e
        0x16 -> :sswitch_f
        0x1a -> :sswitch_10
        0x1c -> :sswitch_11
        0x1d -> :sswitch_12
        0x1e -> :sswitch_13
        0x1f -> :sswitch_14
        0x20 -> :sswitch_15
        0x21 -> :sswitch_16
        0x22 -> :sswitch_17
        0x23 -> :sswitch_18
        0x28 -> :sswitch_19
        0x29 -> :sswitch_1a
        0x5a -> :sswitch_1b
        0x5d -> :sswitch_1c
    .end sparse-switch
.end method
