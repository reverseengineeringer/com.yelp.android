.class public Lcom/yelp/android/appdata/experiment/PhotoAdsExperiment;
.super Lcom/yelp/android/appdata/experiment/c;
.source "PhotoAdsExperiment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/appdata/experiment/PhotoAdsExperiment$Cohort;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/experiment/c",
        "<",
        "Lcom/yelp/android/appdata/experiment/PhotoAdsExperiment$Cohort;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 16
    const-string/jumbo v0, "ad.photo_ads_rollout_android_v2"

    const-class v1, Lcom/yelp/android/appdata/experiment/PhotoAdsExperiment$Cohort;

    sget-object v2, Lcom/yelp/android/appdata/experiment/PhotoAdsExperiment$Cohort;->status_quo:Lcom/yelp/android/appdata/experiment/PhotoAdsExperiment$Cohort;

    invoke-direct {p0, v0, v1, v2}, Lcom/yelp/android/appdata/experiment/c;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)V

    .line 17
    return-void
.end method
