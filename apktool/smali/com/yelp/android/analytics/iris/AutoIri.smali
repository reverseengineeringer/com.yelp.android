.class public final enum Lcom/yelp/android/analytics/iris/AutoIri;
.super Ljava/lang/Enum;
.source "AutoIri.java"

# interfaces
.implements Lcom/yelp/android/analytics/iris/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/analytics/iris/AutoIri;",
        ">;",
        "Lcom/yelp/android/analytics/iris/b;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/analytics/iris/AutoIri;

.field public static final AUTO_CATEGORY:Lcom/yelp/android/analytics/iris/AnalyticCategory;

.field public static final enum AdBusinessImpression:Lcom/yelp/android/analytics/iris/AutoIri;

.field public static final enum AdSearchListImpression:Lcom/yelp/android/analytics/iris/AutoIri;

.field public static final enum AdSearchMapImpression:Lcom/yelp/android/analytics/iris/AutoIri;

.field public static final enum AppRate:Lcom/yelp/android/analytics/iris/AutoIri;

.field public static final enum AppRateBack:Lcom/yelp/android/analytics/iris/AutoIri;

.field public static final enum AppRateCancel:Lcom/yelp/android/analytics/iris/AutoIri;

.field public static final enum AppRateRate:Lcom/yelp/android/analytics/iris/AutoIri;

.field public static final enum AppRateRemind:Lcom/yelp/android/analytics/iris/AutoIri;

.field public static final enum DFPFailed:Lcom/yelp/android/analytics/iris/AutoIri;

.field public static final enum DFPSucceeded:Lcom/yelp/android/analytics/iris/AutoIri;

.field public static final enum DFPWillRequest:Lcom/yelp/android/analytics/iris/AutoIri;

.field public static final enum GooglePlayServicesUnavailable:Lcom/yelp/android/analytics/iris/AutoIri;


# instance fields
.field public final mIri:Ljava/lang/String;

.field private final mIsExcluded:Z

.field private final mIsSampled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 8
    new-instance v0, Lcom/yelp/android/analytics/iris/AutoIri;

    const-string/jumbo v1, "AppRate"

    const-string/jumbo v2, "app_rate"

    invoke-direct {v0, v1, v5, v2}, Lcom/yelp/android/analytics/iris/AutoIri;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/AutoIri;->AppRate:Lcom/yelp/android/analytics/iris/AutoIri;

    .line 9
    new-instance v0, Lcom/yelp/android/analytics/iris/AutoIri;

    const-string/jumbo v1, "AppRateRate"

    const-string/jumbo v2, "app_rate/rate"

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/analytics/iris/AutoIri;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/AutoIri;->AppRateRate:Lcom/yelp/android/analytics/iris/AutoIri;

    .line 10
    new-instance v0, Lcom/yelp/android/analytics/iris/AutoIri;

    const-string/jumbo v1, "AppRateRemind"

    const-string/jumbo v2, "app_rate/remind"

    invoke-direct {v0, v1, v6, v2}, Lcom/yelp/android/analytics/iris/AutoIri;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/AutoIri;->AppRateRemind:Lcom/yelp/android/analytics/iris/AutoIri;

    .line 11
    new-instance v0, Lcom/yelp/android/analytics/iris/AutoIri;

    const-string/jumbo v1, "AppRateCancel"

    const-string/jumbo v2, "app_rate/cancel"

    invoke-direct {v0, v1, v7, v2}, Lcom/yelp/android/analytics/iris/AutoIri;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/AutoIri;->AppRateCancel:Lcom/yelp/android/analytics/iris/AutoIri;

    .line 12
    new-instance v0, Lcom/yelp/android/analytics/iris/AutoIri;

    const-string/jumbo v1, "AppRateBack"

    const-string/jumbo v2, "app_rate/back"

    invoke-direct {v0, v1, v8, v2}, Lcom/yelp/android/analytics/iris/AutoIri;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/AutoIri;->AppRateBack:Lcom/yelp/android/analytics/iris/AutoIri;

    .line 15
    new-instance v0, Lcom/yelp/android/analytics/iris/AutoIri;

    const-string/jumbo v1, "AdSearchListImpression"

    const/4 v2, 0x5

    const-string/jumbo v3, "ads/search/list/impression"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/iris/AutoIri;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/AutoIri;->AdSearchListImpression:Lcom/yelp/android/analytics/iris/AutoIri;

    .line 16
    new-instance v0, Lcom/yelp/android/analytics/iris/AutoIri;

    const-string/jumbo v1, "AdSearchMapImpression"

    const/4 v2, 0x6

    const-string/jumbo v3, "ads/search/map/impression"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/iris/AutoIri;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/AutoIri;->AdSearchMapImpression:Lcom/yelp/android/analytics/iris/AutoIri;

    .line 17
    new-instance v0, Lcom/yelp/android/analytics/iris/AutoIri;

    const-string/jumbo v1, "AdBusinessImpression"

    const/4 v2, 0x7

    const-string/jumbo v3, "ads/business/impression"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/iris/AutoIri;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/AutoIri;->AdBusinessImpression:Lcom/yelp/android/analytics/iris/AutoIri;

    .line 20
    new-instance v0, Lcom/yelp/android/analytics/iris/AutoIri;

    const-string/jumbo v1, "GooglePlayServicesUnavailable"

    const/16 v2, 0x8

    const-string/jumbo v3, "dependency/google_play_services_unavailable"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/iris/AutoIri;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/AutoIri;->GooglePlayServicesUnavailable:Lcom/yelp/android/analytics/iris/AutoIri;

    .line 23
    new-instance v0, Lcom/yelp/android/analytics/iris/AutoIri;

    const-string/jumbo v1, "DFPWillRequest"

    const/16 v2, 0x9

    const-string/jumbo v3, "dfp_request/start"

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/analytics/iris/AutoIri;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v0, Lcom/yelp/android/analytics/iris/AutoIri;->DFPWillRequest:Lcom/yelp/android/analytics/iris/AutoIri;

    .line 24
    new-instance v0, Lcom/yelp/android/analytics/iris/AutoIri;

    const-string/jumbo v1, "DFPFailed"

    const/16 v2, 0xa

    const-string/jumbo v3, "dfp_request/fail"

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/analytics/iris/AutoIri;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v0, Lcom/yelp/android/analytics/iris/AutoIri;->DFPFailed:Lcom/yelp/android/analytics/iris/AutoIri;

    .line 25
    new-instance v0, Lcom/yelp/android/analytics/iris/AutoIri;

    const-string/jumbo v1, "DFPSucceeded"

    const/16 v2, 0xb

    const-string/jumbo v3, "dfp_request/success"

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/analytics/iris/AutoIri;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v0, Lcom/yelp/android/analytics/iris/AutoIri;->DFPSucceeded:Lcom/yelp/android/analytics/iris/AutoIri;

    .line 6
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/yelp/android/analytics/iris/AutoIri;

    sget-object v1, Lcom/yelp/android/analytics/iris/AutoIri;->AppRate:Lcom/yelp/android/analytics/iris/AutoIri;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/analytics/iris/AutoIri;->AppRateRate:Lcom/yelp/android/analytics/iris/AutoIri;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/analytics/iris/AutoIri;->AppRateRemind:Lcom/yelp/android/analytics/iris/AutoIri;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/analytics/iris/AutoIri;->AppRateCancel:Lcom/yelp/android/analytics/iris/AutoIri;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yelp/android/analytics/iris/AutoIri;->AppRateBack:Lcom/yelp/android/analytics/iris/AutoIri;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/analytics/iris/AutoIri;->AdSearchListImpression:Lcom/yelp/android/analytics/iris/AutoIri;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yelp/android/analytics/iris/AutoIri;->AdSearchMapImpression:Lcom/yelp/android/analytics/iris/AutoIri;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/yelp/android/analytics/iris/AutoIri;->AdBusinessImpression:Lcom/yelp/android/analytics/iris/AutoIri;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/yelp/android/analytics/iris/AutoIri;->GooglePlayServicesUnavailable:Lcom/yelp/android/analytics/iris/AutoIri;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/yelp/android/analytics/iris/AutoIri;->DFPWillRequest:Lcom/yelp/android/analytics/iris/AutoIri;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/yelp/android/analytics/iris/AutoIri;->DFPFailed:Lcom/yelp/android/analytics/iris/AutoIri;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/yelp/android/analytics/iris/AutoIri;->DFPSucceeded:Lcom/yelp/android/analytics/iris/AutoIri;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/analytics/iris/AutoIri;->$VALUES:[Lcom/yelp/android/analytics/iris/AutoIri;

    .line 27
    sget-object v0, Lcom/yelp/android/analytics/iris/AnalyticCategory;->AUTO:Lcom/yelp/android/analytics/iris/AnalyticCategory;

    sput-object v0, Lcom/yelp/android/analytics/iris/AutoIri;->AUTO_CATEGORY:Lcom/yelp/android/analytics/iris/AnalyticCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 34
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/analytics/iris/AutoIri;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    .line 35
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput-object p3, p0, Lcom/yelp/android/analytics/iris/AutoIri;->mIri:Ljava/lang/String;

    .line 43
    iput-boolean p4, p0, Lcom/yelp/android/analytics/iris/AutoIri;->mIsExcluded:Z

    .line 44
    iput-boolean p5, p0, Lcom/yelp/android/analytics/iris/AutoIri;->mIsSampled:Z

    .line 45
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/analytics/iris/AutoIri;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/yelp/android/analytics/iris/AutoIri;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/analytics/iris/AutoIri;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/analytics/iris/AutoIri;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/yelp/android/analytics/iris/AutoIri;->$VALUES:[Lcom/yelp/android/analytics/iris/AutoIri;

    invoke-virtual {v0}, [Lcom/yelp/android/analytics/iris/AutoIri;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/analytics/iris/AutoIri;

    return-object v0
.end method


# virtual methods
.method public getCategory()Lcom/yelp/android/analytics/iris/AnalyticCategory;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/yelp/android/analytics/iris/AutoIri;->AUTO_CATEGORY:Lcom/yelp/android/analytics/iris/AnalyticCategory;

    return-object v0
.end method

.method public getGaCustomDimenLinks()[Lcom/yelp/android/analytics/c;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/yelp/android/analytics/GaCustomDimenLink;->EMPTY_ARRAY:[Lcom/yelp/android/analytics/GaCustomDimenLink;

    return-object v0
.end method

.method public getGoogleAnalyticsCategory()Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;->OTHER:Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;

    return-object v0
.end method

.method public getIriName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yelp/android/analytics/iris/AutoIri;->mIri:Ljava/lang/String;

    return-object v0
.end method

.method public isExcludedFromGoogleAnalytics()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/yelp/android/analytics/iris/AutoIri;->mIsExcluded:Z

    return v0
.end method

.method public isSampledInGoogleAnalytics()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/yelp/android/analytics/iris/AutoIri;->mIsSampled:Z

    return v0
.end method
