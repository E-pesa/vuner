.class public Lcom/tigo/mfsapp/maps/GoogleAutoCompleteParser$ResultList;
.super Ljava/lang/Object;
.source "GoogleAutoCompleteParser.java"

# interfaces
.implements Lcom/tigo/mfsapp/maps/ClearableAutoTextView$DisplayStringInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/maps/GoogleAutoCompleteParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResultList"
.end annotation


# instance fields
.field str:Ljava/lang/String;

.field final synthetic this$0:Lcom/tigo/mfsapp/maps/GoogleAutoCompleteParser;


# direct methods
.method public constructor <init>(Lcom/tigo/mfsapp/maps/GoogleAutoCompleteParser;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/maps/GoogleAutoCompleteParser;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/tigo/mfsapp/maps/GoogleAutoCompleteParser$ResultList;->this$0:Lcom/tigo/mfsapp/maps/GoogleAutoCompleteParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisplayString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tigo/mfsapp/maps/GoogleAutoCompleteParser$ResultList;->str:Ljava/lang/String;

    return-object v0
.end method

.method public getStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tigo/mfsapp/maps/GoogleAutoCompleteParser$ResultList;->str:Ljava/lang/String;

    return-object v0
.end method

.method public setStr(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/tigo/mfsapp/maps/GoogleAutoCompleteParser$ResultList;->str:Ljava/lang/String;

    .line 37
    return-void
.end method
