.class public Lcom/yelp/android/appdata/experiment/TrendingSearchesExperiment;
.super Lcom/yelp/android/appdata/experiment/c;
.source "TrendingSearchesExperiment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/appdata/experiment/TrendingSearchesExperiment$Cohort;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/experiment/c",
        "<",
        "Lcom/yelp/android/appdata/experiment/TrendingSearchesExperiment$Cohort;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 20
    const-string/jumbo v0, "android_trending_searches"

    const-class v1, Lcom/yelp/android/appdata/experiment/TrendingSearchesExperiment$Cohort;

    sget-object v2, Lcom/yelp/android/appdata/experiment/TrendingSearchesExperiment$Cohort;->status_quo_no_trending_searches:Lcom/yelp/android/appdata/experiment/TrendingSearchesExperiment$Cohort;

    invoke-direct {p0, v0, v1, v2}, Lcom/yelp/android/appdata/experiment/c;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)V

    .line 21
    return-void
.end method
