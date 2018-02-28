.class public Lcom/tigo/mfsapp/utils/CompareAppVersions;
.super Ljava/lang/Object;
.source "CompareAppVersions.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "v1"    # Ljava/lang/String;
    .param p1, "v2"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-static {p0}, Lcom/tigo/mfsapp/utils/CompareAppVersions;->normalisedVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 20
    .local v2, "s1":Ljava/lang/String;
    invoke-static {p1}, Lcom/tigo/mfsapp/utils/CompareAppVersions;->normalisedVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 22
    .local v3, "s2":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 23
    .local v0, "cmp":I
    if-gez v0, :cond_0

    const/4 v1, -0x1

    .line 24
    .local v1, "res":I
    :goto_0
    return v1

    .line 23
    .end local v1    # "res":I
    :cond_0
    if-lez v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static normalisedVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "version"    # Ljava/lang/String;

    .prologue
    .line 29
    const-string v0, "."

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/tigo/mfsapp/utils/CompareAppVersions;->normalisedVersion(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static normalisedVersion(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .param p0, "version"    # Ljava/lang/String;
    .param p1, "sep"    # Ljava/lang/String;
    .param p2, "maxWidth"    # I

    .prologue
    const/4 v4, 0x0

    .line 34
    const/16 v3, 0x10

    invoke-static {p1, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, "split":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .local v1, "sb":Ljava/lang/StringBuilder;
    array-length v5, v2

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v0, v2, v3

    .line 38
    .local v0, "s":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x73

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 40
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
