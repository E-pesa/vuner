.class Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment$1;
.super Ljava/lang/Object;
.source "RegisterDeviceEnterPhoneFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;->onReceiveHttpError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Request;)V
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
    .line 151
    iput-object p1, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment$1;->this$0:Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment$1;->this$0:Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;->hideOkDialog()V

    .line 157
    return-void
.end method
