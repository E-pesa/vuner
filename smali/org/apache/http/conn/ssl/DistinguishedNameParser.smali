.class final Lorg/apache/http/conn/ssl/DistinguishedNameParser;
.super Ljava/lang/Object;
.source "DistinguishedNameParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/conn/ssl/DistinguishedNameParser$InternalTokenParser;
    }
.end annotation

.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field private static final COMMA_OR_PLUS:Ljava/util/BitSet;

.field private static final EQUAL_OR_COMMA_OR_PLUS:Ljava/util/BitSet;

.field public static final INSTANCE:Lorg/apache/http/conn/ssl/DistinguishedNameParser;


# instance fields
.field private final tokenParser:Lorg/apache/http/conn/ssl/TokenParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lorg/apache/http/conn/ssl/DistinguishedNameParser;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/DistinguishedNameParser;-><init>()V

    sput-object v0, Lorg/apache/http/conn/ssl/DistinguishedNameParser;->INSTANCE:Lorg/apache/http/conn/ssl/DistinguishedNameParser;

    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lorg/apache/http/conn/ssl/TokenParser;->INIT_BITSET([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/http/conn/ssl/DistinguishedNameParser;->EQUAL_OR_COMMA_OR_PLUS:Ljava/util/BitSet;

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Lorg/apache/http/conn/ssl/TokenParser;->INIT_BITSET([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/http/conn/ssl/DistinguishedNameParser;->COMMA_OR_PLUS:Ljava/util/BitSet;

    return-void

    .line 45
    :array_0
    .array-data 4
        0x3d
        0x2c
        0x2b
    .end array-data

    .line 46
    :array_1
    .array-data 4
        0x2c
        0x2b
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lorg/apache/http/conn/ssl/DistinguishedNameParser$InternalTokenParser;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/DistinguishedNameParser$InternalTokenParser;-><init>()V

    iput-object v0, p0, Lorg/apache/http/conn/ssl/DistinguishedNameParser;->tokenParser:Lorg/apache/http/conn/ssl/TokenParser;

    .line 52
    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    if-nez p1, :cond_0

    .line 91
    const/4 v2, 0x0

    .line 96
    :goto_0
    return-object v2

    .line 93
    :cond_0
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 94
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v0, p1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 95
    new-instance v1, Lorg/apache/http/message/ParserCursor;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .line 96
    .local v1, "cursor":Lorg/apache/http/message/ParserCursor;
    invoke-virtual {p0, v0, v1}, Lorg/apache/http/conn/ssl/DistinguishedNameParser;->parse(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method public parse(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Ljava/util/List;
    .locals 3
    .param p1, "buf"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cursor"    # Lorg/apache/http/message/ParserCursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/util/CharArrayBuffer;",
            "Lorg/apache/http/message/ParserCursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v1, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    iget-object v2, p0, Lorg/apache/http/conn/ssl/DistinguishedNameParser;->tokenParser:Lorg/apache/http/conn/ssl/TokenParser;

    invoke-virtual {v2, p1, p2}, Lorg/apache/http/conn/ssl/TokenParser;->skipWhiteSpace(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)V

    .line 82
    :goto_0
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    move-result v2

    if-nez v2, :cond_0

    .line 83
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/conn/ssl/DistinguishedNameParser;->parseParameter(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/NameValuePair;

    move-result-object v0

    .line 84
    .local v0, "param":Lorg/apache/http/NameValuePair;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    .end local v0    # "param":Lorg/apache/http/NameValuePair;
    :cond_0
    return-object v1
.end method

.method parseParameter(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/NameValuePair;
    .locals 5
    .param p1, "buf"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cursor"    # Lorg/apache/http/message/ParserCursor;

    .prologue
    const/4 v4, 0x0

    .line 63
    sget-object v3, Lorg/apache/http/conn/ssl/DistinguishedNameParser;->EQUAL_OR_COMMA_OR_PLUS:Ljava/util/BitSet;

    invoke-virtual {p0, p1, p2, v3}, Lorg/apache/http/conn/ssl/DistinguishedNameParser;->parseToken(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v3, v1, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :goto_0
    return-object v3

    .line 67
    :cond_0
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v0

    .line 68
    .local v0, "delim":I
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p2, v3}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    .line 69
    const/16 v3, 0x2c

    if-ne v0, v3, :cond_1

    .line 70
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v3, v1, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_1
    sget-object v3, Lorg/apache/http/conn/ssl/DistinguishedNameParser;->COMMA_OR_PLUS:Ljava/util/BitSet;

    invoke-virtual {p0, p1, p2, v3}, Lorg/apache/http/conn/ssl/DistinguishedNameParser;->parseValue(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    move-result v3

    if-nez v3, :cond_2

    .line 74
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p2, v3}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    .line 76
    :cond_2
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v3, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method parseToken(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;
    .locals 1
    .param p1, "buf"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cursor"    # Lorg/apache/http/message/ParserCursor;
    .param p3, "delimiters"    # Ljava/util/BitSet;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/http/conn/ssl/DistinguishedNameParser;->tokenParser:Lorg/apache/http/conn/ssl/TokenParser;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/http/conn/ssl/TokenParser;->parseToken(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method parseValue(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;
    .locals 1
    .param p1, "buf"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cursor"    # Lorg/apache/http/message/ParserCursor;
    .param p3, "delimiters"    # Ljava/util/BitSet;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/http/conn/ssl/DistinguishedNameParser;->tokenParser:Lorg/apache/http/conn/ssl/TokenParser;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/http/conn/ssl/TokenParser;->parseValue(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
