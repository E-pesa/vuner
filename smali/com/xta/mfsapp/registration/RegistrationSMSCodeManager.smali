.class public Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;
.super Ljava/lang/Object;
.source "RegistrationSMSCodeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager$RegistrationSMSCodeListener;
    }
.end annotation


# static fields
.field private static final ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field protected static final SMS_CODE_LEN:I = 0x8

.field protected static final SMS_CODE_TAG:Ljava/lang/String; = "[SMSCODE]"

.field private static instance:Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;


# instance fields
.field private SMSCode:Ljava/lang/String;

.field private listenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager$RegistrationSMSCodeListener;",
            ">;"
        }
    .end annotation
.end field

.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;->SMSCode:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;->listenerRef:Ljava/lang/ref/WeakReference;

    .line 46
    return-void
.end method

.method public static getInstance()Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;->instance:Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;

    invoke-direct {v0}, Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;-><init>()V

    sput-object v0, Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;->instance:Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;

    .line 40
    :cond_0
    sget-object v0, Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;->instance:Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;

    return-object v0
.end method

.method private noitfyNewSMSCodeReceived(Ljava/lang/String;)V
    .locals 3
    .param p1, "smsCode"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;->SMSCode:Ljava/lang/String;

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "noitfyNewSMSCodeReceived: New SMSCode received >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;->SMSCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tigo/mfsapp/utils/Logger;->debug(Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;->listenerRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;->listenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager$RegistrationSMSCodeListener;

    .line 58
    .local v0, "listener":Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager$RegistrationSMSCodeListener;
    if-eqz v0, :cond_0

    .line 60
    invoke-interface {v0, p1}, Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager$RegistrationSMSCodeListener;->onRegistrationCodeChanged(Ljava/lang/String;)V

    .line 64
    .end local v0    # "listener":Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager$RegistrationSMSCodeListener;
    :cond_0
    return-void
.end method


# virtual methods
.method public clearSMSInputBox()V
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;->SMSCode:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public getSMSCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;->SMSCode:Ljava/lang/String;

    return-object v0
.end method

.method public processSMS(Ljava/lang/String;)V
    .locals 13
    .param p1, "messageBody"    # Ljava/lang/String;

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x0

    .line 92
    const-string v8, "YESICA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sms: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-string v8, "\\s+"

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 95
    .local v7, "words":[Ljava/lang/String;
    array-length v8, v7

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 97
    aget-object v8, v7, v11

    invoke-direct {p0, v8}, Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;->noitfyNewSMSCodeReceived(Ljava/lang/String;)V

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "language"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "language":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 103
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tigo/mfsapp/model/Parameters;->getRegisterSMSs()Ljava/util/HashMap;

    move-result-object v4

    .line 104
    .local v4, "regs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 106
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 107
    .local v3, "matrixSMS":Ljava/lang/String;
    const-string v8, "YESICA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "matrixSMS "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const-string v8, "[SMSCODE]"

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 109
    .local v1, "index":I
    const/4 v8, -0x1

    if-ge v8, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v1, v8, :cond_0

    .line 111
    invoke-virtual {v3, v11, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 112
    .local v6, "stringPattern":Ljava/lang/String;
    const-string v8, "YESICA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "stringPattern "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int v5, v8, v9

    .line 114
    .local v5, "start":I
    const-string v8, "YESICA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "stringPattern start "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " length: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "SmsCode":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v12, :cond_2

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;->noitfyNewSMSCodeReceived(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 120
    :cond_2
    invoke-direct {p0, v0}, Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;->noitfyNewSMSCodeReceived(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setListenerRef(Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager$RegistrationSMSCodeListener;)V
    .locals 1
    .param p1, "listenerRef"    # Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager$RegistrationSMSCodeListener;

    .prologue
    .line 154
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;->listenerRef:Ljava/lang/ref/WeakReference;

    .line 155
    return-void
.end method

.method public startListeningSMSs(Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager$RegistrationSMSCodeListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager$RegistrationSMSCodeListener;

    .prologue
    .line 68
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;->listenerRef:Ljava/lang/ref/WeakReference;

    .line 70
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 71
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    const/16 v1, 0x270f

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 74
    new-instance v1, Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager$1;

    invoke-direct {v1, p0}, Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager$1;-><init>(Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;)V

    iput-object v1, p0, Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;->receiver:Landroid/content/BroadcastReceiver;

    .line 87
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v1

    iget-object v2, p0, Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/tigo/mfsapp/app/MfsApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 88
    return-void
.end method

.method public stopListeningSMSs()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 129
    iget-object v0, p0, Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 131
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v0

    iget-object v1, p0, Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/app/MfsApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 134
    :cond_0
    iput-object v2, p0, Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;->listenerRef:Ljava/lang/ref/WeakReference;

    .line 135
    iput-object v2, p0, Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;->receiver:Landroid/content/BroadcastReceiver;

    .line 136
    return-void
.end method
