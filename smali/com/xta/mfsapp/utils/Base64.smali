.class public Lcom/tigo/mfsapp/utils/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/utils/Base64$Encoder;,
        Lcom/tigo/mfsapp/utils/Base64$Decoder;,
        Lcom/tigo/mfsapp/utils/Base64$Coder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final CRLF:I = 0x4

.field public static final DEFAULT:I = 0x0

.field public static final NO_CLOSE:I = 0x10

.field public static final NO_PADDING:I = 0x1

.field public static final NO_WRAP:I = 0x2

.field public static final URL_SAFE:I = 0x8

.field private static final base64code:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

.field private static final splitLinesAt:I = 0x4c


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/tigo/mfsapp/utils/Base64;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tigo/mfsapp/utils/Base64;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 748
    return-void
.end method

.method public static decode(Ljava/lang/String;I)[B
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "flags"    # I

    .prologue
    .line 106
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/tigo/mfsapp/utils/Base64;->decode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BI)[B
    .locals 2
    .param p0, "input"    # [B
    .param p1, "flags"    # I

    .prologue
    .line 125
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/tigo/mfsapp/utils/Base64;->decode([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BIII)[B
    .locals 5
    .param p0, "input"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "flags"    # I

    .prologue
    const/4 v4, 0x0

    .line 150
    new-instance v0, Lcom/tigo/mfsapp/utils/Base64$Decoder;

    mul-int/lit8 v2, p2, 0x3

    div-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    invoke-direct {v0, p3, v2}, Lcom/tigo/mfsapp/utils/Base64$Decoder;-><init>(I[B)V

    .line 152
    .local v0, "decoder":Lcom/tigo/mfsapp/utils/Base64$Decoder;
    const/4 v2, 0x1

    invoke-virtual {v0, p0, p1, p2, v2}, Lcom/tigo/mfsapp/utils/Base64$Decoder;->process([BIIZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 154
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "bad base-64"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 158
    :cond_0
    iget v2, v0, Lcom/tigo/mfsapp/utils/Base64$Decoder;->op:I

    iget-object v3, v0, Lcom/tigo/mfsapp/utils/Base64$Decoder;->output:[B

    array-length v3, v3

    if-ne v2, v3, :cond_1

    .line 160
    iget-object v1, v0, Lcom/tigo/mfsapp/utils/Base64$Decoder;->output:[B

    .line 167
    :goto_0
    return-object v1

    .line 165
    :cond_1
    iget v2, v0, Lcom/tigo/mfsapp/utils/Base64$Decoder;->op:I

    new-array v1, v2, [B

    .line 166
    .local v1, "temp":[B
    iget-object v2, v0, Lcom/tigo/mfsapp/utils/Base64$Decoder;->output:[B

    iget v3, v0, Lcom/tigo/mfsapp/utils/Base64$Decoder;->op:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 753
    const-string v0, ""

    .line 757
    .local v0, "encoded":Ljava/lang/String;
    :try_start_0
    const-string v6, "UTF-8"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 765
    .local v5, "stringArray":[B
    :goto_0
    array-length v6, v5

    rem-int/lit8 v6, v6, 0x3

    rsub-int/lit8 v6, v6, 0x3

    rem-int/lit8 v4, v6, 0x3

    .line 767
    .local v4, "paddingCount":I
    array-length v6, v5

    add-int/2addr v6, v4

    invoke-static {v6, v5}, Lcom/tigo/mfsapp/utils/Base64;->zeroPad(I[B)[B

    move-result-object v5

    .line 770
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v6, v5

    if-ge v1, v6, :cond_0

    .line 772
    aget-byte v6, v5, v1

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    add-int/lit8 v7, v1, 0x1

    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    add-int/2addr v6, v7

    add-int/lit8 v7, v1, 0x2

    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    add-int v3, v6, v7

    .line 773
    .local v3, "j":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    shr-int/lit8 v8, v3, 0x12

    and-int/lit8 v8, v8, 0x3f

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    shr-int/lit8 v8, v3, 0xc

    and-int/lit8 v8, v8, 0x3f

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    shr-int/lit8 v8, v3, 0x6

    and-int/lit8 v8, v8, 0x3f

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    and-int/lit8 v8, v3, 0x3f

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 770
    add-int/lit8 v1, v1, 0x3

    goto :goto_1

    .line 759
    .end local v1    # "i":I
    .end local v3    # "j":I
    .end local v4    # "paddingCount":I
    .end local v5    # "stringArray":[B
    :catch_0
    move-exception v2

    .line 761
    .local v2, "ignored":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .restart local v5    # "stringArray":[B
    goto :goto_0

    .line 776
    .end local v2    # "ignored":Ljava/lang/Exception;
    .restart local v1    # "i":I
    .restart local v4    # "paddingCount":I
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-virtual {v0, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=="

    invoke-virtual {v7, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tigo/mfsapp/utils/Base64;->splitLines(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static encode([BI)[B
    .locals 2
    .param p0, "input"    # [B
    .param p1, "flags"    # I

    .prologue
    .line 479
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/tigo/mfsapp/utils/Base64;->encode([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static encode([BIII)[B
    .locals 5
    .param p0, "input"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "flags"    # I

    .prologue
    const/4 v3, 0x1

    .line 496
    new-instance v0, Lcom/tigo/mfsapp/utils/Base64$Encoder;

    const/4 v2, 0x0

    invoke-direct {v0, p3, v2}, Lcom/tigo/mfsapp/utils/Base64$Encoder;-><init>(I[B)V

    .line 499
    .local v0, "encoder":Lcom/tigo/mfsapp/utils/Base64$Encoder;
    div-int/lit8 v2, p2, 0x3

    mul-int/lit8 v1, v2, 0x4

    .line 502
    .local v1, "output_len":I
    iget-boolean v2, v0, Lcom/tigo/mfsapp/utils/Base64$Encoder;->do_padding:Z

    if-eqz v2, :cond_2

    .line 504
    rem-int/lit8 v2, p2, 0x3

    if-lez v2, :cond_0

    .line 506
    add-int/lit8 v1, v1, 0x4

    .line 524
    :cond_0
    :goto_0
    :pswitch_0
    iget-boolean v2, v0, Lcom/tigo/mfsapp/utils/Base64$Encoder;->do_newline:Z

    if-eqz v2, :cond_1

    if-lez p2, :cond_1

    .line 526
    add-int/lit8 v2, p2, -0x1

    div-int/lit8 v2, v2, 0x39

    add-int/lit8 v4, v2, 0x1

    iget-boolean v2, v0, Lcom/tigo/mfsapp/utils/Base64$Encoder;->do_cr:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    :goto_1
    mul-int/2addr v2, v4

    add-int/2addr v1, v2

    .line 529
    :cond_1
    new-array v2, v1, [B

    iput-object v2, v0, Lcom/tigo/mfsapp/utils/Base64$Encoder;->output:[B

    .line 530
    invoke-virtual {v0, p0, p1, p2, v3}, Lcom/tigo/mfsapp/utils/Base64$Encoder;->process([BIIZ)Z

    .line 532
    sget-boolean v2, Lcom/tigo/mfsapp/utils/Base64;->$assertionsDisabled:Z

    if-nez v2, :cond_4

    iget v2, v0, Lcom/tigo/mfsapp/utils/Base64$Encoder;->op:I

    if-eq v2, v1, :cond_4

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 510
    :cond_2
    rem-int/lit8 v2, p2, 0x3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 515
    :pswitch_1
    add-int/lit8 v1, v1, 0x2

    .line 516
    goto :goto_0

    .line 518
    :pswitch_2
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_3
    move v2, v3

    .line 526
    goto :goto_1

    .line 534
    :cond_4
    iget-object v2, v0, Lcom/tigo/mfsapp/utils/Base64$Encoder;->output:[B

    return-object v2

    .line 510
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static encodeToString([BI)Ljava/lang/String;
    .locals 4
    .param p0, "input"    # [B
    .param p1, "flags"    # I

    .prologue
    .line 437
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/tigo/mfsapp/utils/Base64;->encode([BI)[B

    move-result-object v2

    const-string v3, "US-ASCII"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 438
    :catch_0
    move-exception v0

    .line 441
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static encodeToString([BIII)Ljava/lang/String;
    .locals 4
    .param p0, "input"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "flags"    # I

    .prologue
    .line 461
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {p0, p1, p2, p3}, Lcom/tigo/mfsapp/utils/Base64;->encode([BIII)[B

    move-result-object v2

    const-string v3, "US-ASCII"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 462
    :catch_0
    move-exception v0

    .line 465
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static splitLines(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 783
    const-string v1, ""

    .line 784
    .local v1, "lines":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 787
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v4, v0, 0x4c

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 788
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 784
    add-int/lit8 v0, v0, 0x4c

    goto :goto_0

    .line 791
    :cond_0
    return-object v1
.end method

.method public static zeroPad(I[B)[B
    .locals 3
    .param p0, "length"    # I
    .param p1, "bytes"    # [B

    .prologue
    const/4 v2, 0x0

    .line 801
    new-array v0, p0, [B

    .line 802
    .local v0, "padded":[B
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 803
    return-object v0
.end method
