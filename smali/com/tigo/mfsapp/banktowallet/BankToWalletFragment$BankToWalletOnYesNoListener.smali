.class public Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment$BankToWalletOnYesNoListener;
.super Ljava/lang/Object;
.source "BankToWalletFragment.java"

# interfaces
.implements Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment$OnYesNoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BankToWalletOnYesNoListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;


# direct methods
.method public constructor <init>(Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment$BankToWalletOnYesNoListener;->this$0:Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public confirm(Z)V
    .locals 6
    .param p1, "yes"    # Z

    .prologue
    .line 127
    if-eqz p1, :cond_0

    .line 129
    iget-object v2, p0, Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment$BankToWalletOnYesNoListener;->this$0:Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;

    invoke-static {v2}, Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;->access$000(Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;)Lcom/tigo/mfsapp/model/Bank;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Bank;->getUsddNumber()Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "ussdNumber":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "cToSend":Ljava/lang/String;
    iget-object v2, p0, Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment$BankToWalletOnYesNoListener;->this$0:Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 134
    .end local v0    # "cToSend":Ljava/lang/String;
    .end local v1    # "ussdNumber":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment$BankToWalletOnYesNoListener;->this$0:Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;->access$002(Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;Lcom/tigo/mfsapp/model/Bank;)Lcom/tigo/mfsapp/model/Bank;

    .line 135
    return-void
.end method
