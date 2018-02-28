.class Lorg/apache/http/conn/ssl/TokenParser;
.super Ljava/lang/Object;
.source "TokenParser.java"


# static fields
.field public static final CR:C = '\r'

.field public static final DQUOTE:C = '\"'

.field public static final ESCAPE:C = '\\'

.field public static final HT:C = '\t'

.field public static final INSTANCE:Lorg/apache/http/conn/ssl/TokenParser;

.field public static final LF:C = '\n'

.field public static final SP:C = ' '


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lorg/apache/http/conn/ssl/TokenParser;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/TokenParser;-><init>()V

    sput-object v0, Lorg/apache/http/conn/ssl/TokenParser;->INSTANCE:Lorg/apache/http/conn/ssl/TokenParser;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs INIT_BITSET([I)Ljava/util/BitSet;
    .locals 5
    .param p0, "b"    # [I

    .prologue
    .line 46
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    .line 47
    .local v2, "bitset":Ljava/util/BitSet;
    move-object v1, p0

    .local v1, "arr$":[I
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget v0, v1, v3

    .line 48
    .local v0, "aB":I
    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    .line 47
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 50
    .end local v0    # "aB":I
    :cond_0
    return-object v2
.end method

.method public static isWhitespace(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 72
    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public copyContent(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;Ljava/util/BitSet;Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "buf"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cursor"    # Lorg/apache/http/message/ParserCursor;
    .param p3, "delimiters"    # Ljava/util/BitSet;
    .param p4, "dst"    # Ljava/lang/StringBuilder;

    .prologue
    .line 178
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v4

    .line 179
    .local v4, "pos":I
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v2

    .line 180
    .local v2, "indexFrom":I
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getUpperBound()I

    move-result v3

    .line 181
    .local v3, "indexTo":I
    move v1, v2

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 182
    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v0

    .line 183
    .local v0, "current":C
    if-eqz p3, :cond_0

    invoke-virtual {p3, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    invoke-static {v0}, Lorg/apache/http/conn/ssl/TokenParser;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 190
    .end local v0    # "current":C
    :cond_1
    invoke-virtual {p2, v4}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    .line 191
    return-void

    .line 186
    .restart local v0    # "current":C
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 187
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public copyQuotedContent(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;Ljava/lang/StringBuilder;)V
    .locals 9
    .param p1, "buf"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cursor"    # Lorg/apache/http/message/ParserCursor;
    .param p3, "dst"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v8, 0x5c

    const/16 v7, 0x22

    .line 230
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v5

    .line 234
    .local v5, "pos":I
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v3

    .line 235
    .local v3, "indexFrom":I
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getUpperBound()I

    move-result v4

    .line 236
    .local v4, "indexTo":I
    invoke-virtual {p1, v5}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v0

    .line 237
    .local v0, "current":C
    if-ne v0, v7, :cond_0

    .line 240
    add-int/lit8 v5, v5, 0x1

    .line 241
    add-int/lit8 v3, v3, 0x1

    .line 242
    const/4 v1, 0x0

    .line 243
    .local v1, "escaped":Z
    move v2, v3

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_5

    .line 244
    invoke-virtual {p1, v2}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v0

    .line 245
    if-eqz v1, :cond_4

    .line 246
    if-eq v0, v7, :cond_2

    if-eq v0, v8, :cond_2

    .line 247
    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 249
    :cond_2
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 250
    const/4 v1, 0x0

    .line 243
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 252
    :cond_4
    if-ne v0, v7, :cond_6

    .line 253
    add-int/lit8 v5, v5, 0x1

    .line 263
    :cond_5
    invoke-virtual {p2, v5}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    goto :goto_0

    .line 256
    :cond_6
    if-ne v0, v8, :cond_7

    .line 257
    const/4 v1, 0x1

    goto :goto_2

    .line 258
    :cond_7
    const/16 v6, 0xd

    if-eq v0, v6, :cond_3

    const/16 v6, 0xa

    if-eq v0, v6, :cond_3

    .line 259
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public copyUnquotedContent(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;Ljava/util/BitSet;Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "buf"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cursor"    # Lorg/apache/http/message/ParserCursor;
    .param p3, "delimiters"    # Ljava/util/BitSet;
    .param p4, "dst"    # Ljava/lang/StringBuilder;

    .prologue
    .line 205
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v4

    .line 206
    .local v4, "pos":I
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v2

    .line 207
    .local v2, "indexFrom":I
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getUpperBound()I

    move-result v3

    .line 208
    .local v3, "indexTo":I
    move v1, v2

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 209
    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v0

    .line 210
    .local v0, "current":C
    if-eqz p3, :cond_0

    invoke-virtual {p3, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    invoke-static {v0}, Lorg/apache/http/conn/ssl/TokenParser;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_1

    const/16 v5, 0x22

    if-ne v0, v5, :cond_2

    .line 218
    .end local v0    # "current":C
    :cond_1
    invoke-virtual {p2, v4}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    .line 219
    return-void

    .line 214
    .restart local v0    # "current":C
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 215
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public parseToken(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;
    .locals 4
    .param p1, "buf"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cursor"    # Lorg/apache/http/message/ParserCursor;
    .param p3, "delimiters"    # Ljava/util/BitSet;

    .prologue
    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .local v1, "dst":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 89
    .local v2, "whitespace":Z
    :goto_0
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    move-result v3

    if-nez v3, :cond_0

    .line 90
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v0

    .line 91
    .local v0, "current":C
    if-eqz p3, :cond_1

    invoke-virtual {p3, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 104
    .end local v0    # "current":C
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 93
    .restart local v0    # "current":C
    :cond_1
    invoke-static {v0}, Lorg/apache/http/conn/ssl/TokenParser;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 94
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/conn/ssl/TokenParser;->skipWhiteSpace(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)V

    .line 95
    const/4 v2, 0x1

    goto :goto_0

    .line 97
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 98
    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    :cond_3
    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/apache/http/conn/ssl/TokenParser;->copyContent(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;Ljava/util/BitSet;Ljava/lang/StringBuilder;)V

    .line 101
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public parseValue(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;
    .locals 5
    .param p1, "buf"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cursor"    # Lorg/apache/http/message/ParserCursor;
    .param p3, "delimiters"    # Ljava/util/BitSet;

    .prologue
    const/16 v4, 0x20

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .local v1, "dst":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 120
    .local v2, "whitespace":Z
    :goto_0
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    move-result v3

    if-nez v3, :cond_0

    .line 121
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v0

    .line 122
    .local v0, "current":C
    if-eqz p3, :cond_1

    invoke-virtual {p3, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 141
    .end local v0    # "current":C
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 124
    .restart local v0    # "current":C
    :cond_1
    invoke-static {v0}, Lorg/apache/http/conn/ssl/TokenParser;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 125
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/conn/ssl/TokenParser;->skipWhiteSpace(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)V

    .line 126
    const/4 v2, 0x1

    goto :goto_0

    .line 127
    :cond_2
    const/16 v3, 0x22

    if-ne v0, v3, :cond_4

    .line 128
    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 129
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    :cond_3
    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/http/conn/ssl/TokenParser;->copyQuotedContent(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;Ljava/lang/StringBuilder;)V

    .line 132
    const/4 v2, 0x0

    goto :goto_0

    .line 134
    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 135
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 137
    :cond_5
    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/apache/http/conn/ssl/TokenParser;->copyUnquotedContent(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;Ljava/util/BitSet;Ljava/lang/StringBuilder;)V

    .line 138
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public skipWhiteSpace(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)V
    .locals 6
    .param p1, "buf"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cursor"    # Lorg/apache/http/message/ParserCursor;

    .prologue
    .line 152
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v4

    .line 153
    .local v4, "pos":I
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v2

    .line 154
    .local v2, "indexFrom":I
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getUpperBound()I

    move-result v3

    .line 155
    .local v3, "indexTo":I
    move v1, v2

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 156
    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v0

    .line 157
    .local v0, "current":C
    invoke-static {v0}, Lorg/apache/http/conn/ssl/TokenParser;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_1

    .line 163
    .end local v0    # "current":C
    :cond_0
    invoke-virtual {p2, v4}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    .line 164
    return-void

    .line 160
    .restart local v0    # "current":C
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
