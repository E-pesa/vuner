.class Lorg/apache/http/conn/ssl/DistinguishedNameParser$InternalTokenParser;
.super Lorg/apache/http/conn/ssl/TokenParser;
.source "DistinguishedNameParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/conn/ssl/DistinguishedNameParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InternalTokenParser"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Lorg/apache/http/conn/ssl/TokenParser;-><init>()V

    return-void
.end method


# virtual methods
.method public copyUnquotedContent(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;Ljava/util/BitSet;Ljava/lang/StringBuilder;)V
    .locals 7
    .param p1, "buf"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cursor"    # Lorg/apache/http/message/ParserCursor;
    .param p3, "delimiters"    # Ljava/util/BitSet;
    .param p4, "dst"    # Ljava/lang/StringBuilder;

    .prologue
    .line 107
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v5

    .line 108
    .local v5, "pos":I
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v3

    .line 109
    .local v3, "indexFrom":I
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getUpperBound()I

    move-result v4

    .line 110
    .local v4, "indexTo":I
    const/4 v1, 0x0

    .line 111
    .local v1, "escaped":Z
    move v2, v3

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 112
    invoke-virtual {p1, v2}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v0

    .line 113
    .local v0, "current":C
    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    const/4 v1, 0x0

    .line 111
    :goto_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 117
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    invoke-static {v0}, Lorg/apache/http/conn/ssl/TokenParser;->isWhitespace(C)Z

    move-result v6

    if-nez v6, :cond_2

    const/16 v6, 0x22

    if-ne v0, v6, :cond_3

    .line 127
    .end local v0    # "current":C
    :cond_2
    invoke-virtual {p2, v5}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    .line 128
    return-void

    .line 120
    .restart local v0    # "current":C
    :cond_3
    const/16 v6, 0x5c

    if-ne v0, v6, :cond_4

    .line 121
    const/4 v1, 0x1

    goto :goto_1

    .line 123
    :cond_4
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
