.class public Lcom/yelp/android/appdata/experiment/BizDetailsAdsExperiment;
.super Lcom/yelp/android/appdata/experiment/c;
.source "BizDetailsAdsExperiment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/appdata/experiment/BizDetailsAdsExperiment$Cohort;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/experiment/c",
        "<",
        "Lcom/yelp/android/appdata/experiment/BizDetailsAdsExperiment$Cohort;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 17
    const-string/jumbo v0, "ad.mobile_biz_ad_unit_restyling"

    const-class v1, Lcom/yelp/android/appdata/experiment/BizDetailsAdsExperiment$Cohort;

    sget-object v2, Lcom/yelp/android/appdata/experiment/BizDetailsAdsExperiment$Cohort;->biz_ad_unit_restyling_status_quo:Lcom/yelp/android/appdata/experiment/BizDetailsAdsExperiment$Cohort;

    invoke-direct {p0, v0, v1, v2}, Lcom/yelp/android/appdata/experiment/c;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)V

    .line 21
    return-void
.end method
