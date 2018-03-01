.class Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$2;
.super Ljava/lang/Object;
.source "MsfRegisterDeviceActivity.java"

# interfaces
.implements Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment$OnRegisterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;->doDeviceLoginProcess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$2;->this$0:Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnRequestRegister(Ljava/lang/String;)V
    .locals 1
    .param p1, "GUID"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$2;->this$0:Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;

    invoke-static {v0, p1}, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;->access$102(Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    return-void
.end method
