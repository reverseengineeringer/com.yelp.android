.class public final enum Lcom/yelp/android/analytics/iris/TimingIri;
.super Ljava/lang/Enum;
.source "TimingIri.java"

# interfaces
.implements Lcom/yelp/android/analytics/iris/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/analytics/iris/TimingIri;",
        ">;",
        "Lcom/yelp/android/analytics/iris/a;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/analytics/iris/TimingIri;

.field public static final enum ApplicationStartup:Lcom/yelp/android/analytics/iris/TimingIri;

.field public static final enum BusinessDetailsFullyLoaded:Lcom/yelp/android/analytics/iris/TimingIri;

.field public static final enum BusinessDetailsLoad:Lcom/yelp/android/analytics/iris/TimingIri;

.field public static final enum PlatformWebViewIframeLoad:Lcom/yelp/android/analytics/iris/TimingIri;

.field public static final enum PlatformWebViewInitLoad:Lcom/yelp/android/analytics/iris/TimingIri;


# instance fields
.field private final mIri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/yelp/android/analytics/iris/TimingIri;

    const-string/jumbo v1, "ApplicationStartup"

    const-string/jumbo v2, "startup/initialize"

    invoke-direct {v0, v1, v3, v2}, Lcom/yelp/android/analytics/iris/TimingIri;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/TimingIri;->ApplicationStartup:Lcom/yelp/android/analytics/iris/TimingIri;

    .line 11
    new-instance v0, Lcom/yelp/android/analytics/iris/TimingIri;

    const-string/jumbo v1, "BusinessDetailsLoad"

    const-string/jumbo v2, "business_details/ready"

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/analytics/iris/TimingIri;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/TimingIri;->BusinessDetailsLoad:Lcom/yelp/android/analytics/iris/TimingIri;

    .line 12
    new-instance v0, Lcom/yelp/android/analytics/iris/TimingIri;

    const-string/jumbo v1, "BusinessDetailsFullyLoaded"

    const-string/jumbo v2, "business_details/fully_loaded"

    invoke-direct {v0, v1, v5, v2}, Lcom/yelp/android/analytics/iris/TimingIri;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/TimingIri;->BusinessDetailsFullyLoaded:Lcom/yelp/android/analytics/iris/TimingIri;

    .line 13
    new-instance v0, Lcom/yelp/android/analytics/iris/TimingIri;

    const-string/jumbo v1, "PlatformWebViewInitLoad"

    const-string/jumbo v2, "platform/webview/initial_load"

    invoke-direct {v0, v1, v6, v2}, Lcom/yelp/android/analytics/iris/TimingIri;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/TimingIri;->PlatformWebViewInitLoad:Lcom/yelp/android/analytics/iris/TimingIri;

    .line 14
    new-instance v0, Lcom/yelp/android/analytics/iris/TimingIri;

    const-string/jumbo v1, "PlatformWebViewIframeLoad"

    const-string/jumbo v2, "platform/webview/iframe_load"

    invoke-direct {v0, v1, v7, v2}, Lcom/yelp/android/analytics/iris/TimingIri;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/TimingIri;->PlatformWebViewIframeLoad:Lcom/yelp/android/analytics/iris/TimingIri;

    .line 9
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/yelp/android/analytics/iris/TimingIri;

    sget-object v1, Lcom/yelp/android/analytics/iris/TimingIri;->ApplicationStartup:Lcom/yelp/android/analytics/iris/TimingIri;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/analytics/iris/TimingIri;->BusinessDetailsLoad:Lcom/yelp/android/analytics/iris/TimingIri;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/analytics/iris/TimingIri;->BusinessDetailsFullyLoaded:Lcom/yelp/android/analytics/iris/TimingIri;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/analytics/iris/TimingIri;->PlatformWebViewInitLoad:Lcom/yelp/android/analytics/iris/TimingIri;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/analytics/iris/TimingIri;->PlatformWebViewIframeLoad:Lcom/yelp/android/analytics/iris/TimingIri;

    aput-object v1, v0, v7

    sput-object v0, Lcom/yelp/android/analytics/iris/TimingIri;->$VALUES:[Lcom/yelp/android/analytics/iris/TimingIri;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Lcom/yelp/android/analytics/iris/TimingIri;->mIri:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/analytics/iris/TimingIri;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/yelp/android/analytics/iris/TimingIri;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/analytics/iris/TimingIri;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/analytics/iris/TimingIri;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/yelp/android/analytics/iris/TimingIri;->$VALUES:[Lcom/yelp/android/analytics/iris/TimingIri;

    invoke-virtual {v0}, [Lcom/yelp/android/analytics/iris/TimingIri;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/analytics/iris/TimingIri;

    return-object v0
.end method


# virtual methods
.method public getCategory()Lcom/yelp/android/analytics/iris/AnalyticCategory;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/yelp/android/analytics/iris/AnalyticCategory;->TIMING:Lcom/yelp/android/analytics/iris/AnalyticCategory;

    return-object v0
.end method

.method public bridge synthetic getGoogleAnalyticMetric()Lcom/yelp/android/bs/b;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/yelp/android/analytics/iris/TimingIri;->getGoogleAnalyticMetric()Lcom/yelp/android/bs/d;

    move-result-object v0

    return-object v0
.end method

.method public getGoogleAnalyticMetric()Lcom/yelp/android/bs/d;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/yelp/android/bs/d;->a:Lcom/yelp/android/bs/d;

    return-object v0
.end method

.method public getIriName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/yelp/android/analytics/iris/TimingIri;->mIri:Ljava/lang/String;

    return-object v0
.end method

.method public isExcludedFromGoogleAnalytics()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method
