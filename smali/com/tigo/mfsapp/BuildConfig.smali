.class public final Lcom/tigo/mfsapp/BuildConfig;
.super Ljava/lang/Object;
.source "BuildConfig.java"


# static fields
.field public static final APPLICATION_ID:Ljava/lang/String; = "tz.tigo.mfsapp"

.field public static final APPLY_HEADER_ENRICHMENT:Ljava/lang/Boolean;

.field public static final BUILD_TYPE:Ljava/lang/String; = "release"

.field public static final DEBUG:Z = false

.field public static final FLAVOR:Ljava/lang/String; = "staging"

.field public static final HEADER_ENRICHMENT_API_URL:Ljava/lang/String; = "http://accessgw.tigo.co.tz:8080/mfsregister/api/"

.field public static final VERSION_CODE:I = 0x61

.field public static final VERSION_NAME:Ljava/lang/String; = "1.0.16"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/tigo/mfsapp/BuildConfig;->APPLY_HEADER_ENRICHMENT:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
