.class public final enum Lcom/yelp/android/appdata/webrequests/core/MetricsManager$GaTrackerType;
.super Ljava/lang/Enum;
.source "MetricsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/webrequests/core/MetricsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GaTrackerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/appdata/webrequests/core/MetricsManager$GaTrackerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/appdata/webrequests/core/MetricsManager$GaTrackerType;

.field public static final enum appwidget_tracker:Lcom/yelp/android/appdata/webrequests/core/MetricsManager$GaTrackerType;

.field public static final enum default_tracker:Lcom/yelp/android/appdata/webrequests/core/MetricsManager$GaTrackerType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 175
    new-instance v0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager$GaTrackerType;

    const-string/jumbo v1, "default_tracker"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager$GaTrackerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager$GaTrackerType;->default_tracker:Lcom/yelp/android/appdata/webrequests/core/MetricsManager$GaTrackerType;

    .line 176
    new-instance v0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager$GaTrackerType;

    const-string/jumbo v1, "appwidget_tracker"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager$GaTrackerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager$GaTrackerType;->appwidget_tracker:Lcom/yelp/android/appdata/webrequests/core/MetricsManager$GaTrackerType;

    .line 174
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/yelp/android/appdata/webrequests/core/MetricsManager$GaTrackerType;

    sget-object v1, Lcom/yelp/android/appdata/webrequests/core/MetricsManager$GaTrackerType;->default_tracker:Lcom/yelp/android/appdata/webrequests/core/MetricsManager$GaTrackerType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/appdata/webrequests/core/MetricsManager$GaTrackerType;->appwidget_tracker:Lcom/yelp/android/appdata/webrequests/core/MetricsManager$GaTrackerType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager$GaTrackerType;->$VALUES:[Lcom/yelp/android/appdata/webrequests/core/MetricsManager$GaTrackerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 174
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/core/MetricsManager$GaTrackerType;
    .locals 1

    .prologue
    .line 174
    const-class v0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager$GaTrackerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager$GaTrackerType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/appdata/webrequests/core/MetricsManager$GaTrackerType;
    .locals 1

    .prologue
    .line 174
    sget-object v0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager$GaTrackerType;->$VALUES:[Lcom/yelp/android/appdata/webrequests/core/MetricsManager$GaTrackerType;

    invoke-virtual {v0}, [Lcom/yelp/android/appdata/webrequests/core/MetricsManager$GaTrackerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/appdata/webrequests/core/MetricsManager$GaTrackerType;

    return-object v0
.end method
