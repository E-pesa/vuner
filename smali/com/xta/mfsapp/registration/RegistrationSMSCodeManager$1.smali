.class Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager$1;
.super Landroid/content/BroadcastReceiver;
.source "RegistrationSMSCodeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;->startListeningSMSs(Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager$RegistrationSMSCodeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager$1;->this$0:Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 80
    .local v2, "pudsBundle":Landroid/os/Bundle;
    const-string v3, "pdus"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, [Ljava/lang/Object;

    .line 81
    .local v1, "pdus":[Ljava/lang/Object;
    const/4 v3, 0x0

    aget-object v3, v1, v3

    check-cast v3, [B

    check-cast v3, [B

    invoke-static {v3}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 82
    .local v0, "messages":Landroid/telephony/SmsMessage;
    iget-object v3, p0, Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager$1;->this$0:Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;->processSMS(Ljava/lang/String;)V

    .line 84
    return-void
.end method
