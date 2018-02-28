.class Lcom/tigo/mfsapp/maps/ListViewFragment$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "ListViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/maps/ListViewFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/tigo/mfsapp/model/maps/Pin;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/maps/ListViewFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/maps/ListViewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/maps/ListViewFragment;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/tigo/mfsapp/maps/ListViewFragment$1;->this$0:Lcom/tigo/mfsapp/maps/ListViewFragment;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
