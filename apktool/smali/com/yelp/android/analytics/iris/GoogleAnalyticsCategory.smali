.class public final enum Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;
.super Ljava/lang/Enum;
.source "GoogleAnalyticsCategory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;

.field public static final enum EVENT:Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;

.field public static final enum OTHER:Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;

.field public static final enum PUSH_NOTIFICATION:Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;

.field public static final enum REVIEW:Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;

.field public static final enum TIMING:Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;

.field public static final enum VIEW:Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;


# instance fields
.field private final mGoogleAnalyticsCategoryName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 9
    new-instance v0, Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;

    const-string/jumbo v1, "PUSH_NOTIFICATION"

    const-string/jumbo v2, "Push Notification"

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;->PUSH_NOTIFICATION:Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;

    .line 10
    new-instance v0, Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;

    const-string/jumbo v1, "REVIEW"

    const-string/jumbo v2, "Review"

    invoke-direct {v0, v1, v5, v2}, Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;->REVIEW:Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;

    .line 12
    new-instance v0, Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;

    const-string/jumbo v1, "EVENT"

    const-string/jumbo v2, "Other"

    invoke-direct {v0, v1, v6, v2}, Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;->EVENT:Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;

    .line 13
    new-instance v0, Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;

    const-string/jumbo v1, "OTHER"

    const-string/jumbo v2, "Other"

    invoke-direct {v0, v1, v7, v2}, Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;->OTHER:Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;

    .line 15
    new-instance v0, Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;

    const-string/jumbo v1, "VIEW"

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v8, v2}, Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;->VIEW:Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;

    .line 16
    new-instance v0, Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;

    const-string/jumbo v1, "TIMING"

    const/4 v2, 0x5

    const-string/jumbo v3, "Timing"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;->TIMING:Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;

    .line 4
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;

    sget-object v1, Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;->PUSH_NOTIFICATION:Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;->REVIEW:Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;->EVENT:Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;->OTHER:Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;->VIEW:Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;->TIMING:Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;->$VALUES:[Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput-object p3, p0, Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;->mGoogleAnalyticsCategoryName:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;
    .locals 1

    .prologue
    .line 4
    const-class v0, Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;->$VALUES:[Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;

    invoke-virtual {v0}, [Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;

    return-object v0
.end method


# virtual methods
.method public getGoogleAnalyticsCategoryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;->mGoogleAnalyticsCategoryName:Ljava/lang/String;

    return-object v0
.end method
