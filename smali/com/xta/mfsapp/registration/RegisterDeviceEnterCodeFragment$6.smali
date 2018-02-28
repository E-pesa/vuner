.class Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment$6;
.super Ljava/lang/Object;
.source "RegisterDeviceEnterCodeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->onRegistrationCodeChanged(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;

.field final synthetic val$fnewCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment$6;->this$0:Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;

    iput-object p2, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment$6;->val$fnewCode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 322
    :try_start_0
    iget-object v1, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment$6;->this$0:Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;

    invoke-static {v1}, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->access$200(Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;)Lcom/tigo/mfsapp/components/CustomEditText;

    move-result-object v1

    iget-object v2, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment$6;->val$fnewCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/components/CustomEditText;->setText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :goto_0
    return-void

    .line 323
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
