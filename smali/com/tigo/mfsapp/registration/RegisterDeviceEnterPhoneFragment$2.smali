.class Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment$2;
.super Ljava/lang/Object;
.source "RegisterDeviceEnterPhoneFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;->onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment$2;->this$0:Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment$2;->this$0:Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;->access$000(Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;)Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment$OnRegisterListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment$2;->this$0:Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;->access$000(Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;)Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment$OnRegisterListener;

    move-result-object v0

    iget-object v1, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment$2;->this$0:Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;

    invoke-static {v1}, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;->access$100(Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment$OnRegisterListener;->OnRequestRegister(Ljava/lang/String;)V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment$2;->this$0:Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;->access$200(Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;)Lcom/tigo/mfsapp/components/CustomEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tigo/mfsapp/common/AppPreferences;->setMSISDN(Ljava/lang/String;)V

    .line 179
    return-void
.end method
