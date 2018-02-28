.class public Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParserHC4;
.super Ljava/lang/Object;
.source "NetscapeDraftHeaderParserHC4.java"


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field public static final DEFAULT:Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParserHC4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParserHC4;

    invoke-direct {v0}, Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParserHC4;-><init>()V

    sput-object v0, Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParserHC4;->DEFAULT:Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParserHC4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method private parseNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/NameValuePair;
    .locals 11
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cursor"    # Lorg/apache/http/message/ParserCursor;

    .prologue
    const/16 v10, 0x3b

    .line 75
    const/4 v7, 0x0

    .line 77
    .local v7, "terminated":Z
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v6

    .line 78
    .local v6, "pos":I
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v3

    .line 79
    .local v3, "indexFrom":I
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getUpperBound()I

    move-result v4

    .line 82
    .local v4, "indexTo":I
    const/4 v5, 0x0

    .line 83
    .local v5, "name":Ljava/lang/String;
    :goto_0
    if-ge v6, v4, :cond_0

    .line 84
    invoke-virtual {p1, v6}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v0

    .line 85
    .local v0, "ch":C
    const/16 v9, 0x3d

    if-ne v0, v9, :cond_1

    .line 95
    .end local v0    # "ch":C
    :cond_0
    :goto_1
    if-ne v6, v4, :cond_3

    .line 96
    const/4 v7, 0x1

    .line 97
    invoke-virtual {p1, v3, v4}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v5

    .line 103
    :goto_2
    if-eqz v7, :cond_4

    .line 104
    invoke-virtual {p2, v6}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    .line 105
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const/4 v10, 0x0

    invoke-direct {v9, v5, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :goto_3
    return-object v9

    .line 88
    .restart local v0    # "ch":C
    :cond_1
    if-ne v0, v10, :cond_2

    .line 89
    const/4 v7, 0x1

    .line 90
    goto :goto_1

    .line 92
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 93
    goto :goto_0

    .line 99
    .end local v0    # "ch":C
    :cond_3
    invoke-virtual {p1, v3, v6}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v5

    .line 100
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 109
    :cond_4
    const/4 v8, 0x0

    .line 110
    .local v8, "value":Ljava/lang/String;
    move v1, v6

    .line 112
    .local v1, "i1":I
    :goto_4
    if-ge v6, v4, :cond_5

    .line 113
    invoke-virtual {p1, v6}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v0

    .line 114
    .restart local v0    # "ch":C
    if-ne v0, v10, :cond_6

    .line 115
    const/4 v7, 0x1

    .line 121
    .end local v0    # "ch":C
    :cond_5
    move v2, v6

    .line 123
    .local v2, "i2":I
    :goto_5
    if-ge v1, v2, :cond_7

    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 118
    .end local v2    # "i2":I
    .restart local v0    # "ch":C
    :cond_6
    add-int/lit8 v6, v6, 0x1

    .line 119
    goto :goto_4

    .line 127
    .end local v0    # "ch":C
    .restart local v2    # "i2":I
    :cond_7
    :goto_6
    if-le v2, v1, :cond_8

    add-int/lit8 v9, v2, -0x1

    invoke-virtual {p1, v9}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 128
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    .line 130
    :cond_8
    invoke-virtual {p1, v1, v2}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 131
    if-eqz v7, :cond_9

    .line 132
    add-int/lit8 v6, v6, 0x1

    .line 134
    :cond_9
    invoke-virtual {p2, v6}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    .line 135
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v9, v5, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method


# virtual methods
.method public parseHeader(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/HeaderElement;
    .locals 7
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cursor"    # Lorg/apache/http/message/ParserCursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 60
    const-string v3, "Char array buffer"

    invoke-static {p1, v3}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    const-string v3, "Parser cursor"

    invoke-static {p2, v3}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParserHC4;->parseNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/NameValuePair;

    move-result-object v0

    .line 63
    .local v0, "nvp":Lorg/apache/http/NameValuePair;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v2, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :goto_0
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    move-result v3

    if-nez v3, :cond_0

    .line 65
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParserHC4;->parseNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/NameValuePair;

    move-result-object v1

    .line 66
    .local v1, "param":Lorg/apache/http/NameValuePair;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    .end local v1    # "param":Lorg/apache/http/NameValuePair;
    :cond_0
    new-instance v4, Lorg/apache/http/message/BasicHeaderElement;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/apache/http/NameValuePair;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/http/NameValuePair;

    invoke-direct {v4, v5, v6, v3}, Lorg/apache/http/message/BasicHeaderElement;-><init>(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/http/NameValuePair;)V

    return-object v4
.end method