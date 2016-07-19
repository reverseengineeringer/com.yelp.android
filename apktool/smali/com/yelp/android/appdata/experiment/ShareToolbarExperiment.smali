.class public Lcom/yelp/android/appdata/experiment/ShareToolbarExperiment;
.super Lcom/yelp/android/appdata/experiment/c;
.source "ShareToolbarExperiment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/appdata/experiment/ShareToolbarExperiment$Cohort;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/experiment/c",
        "<",
        "Lcom/yelp/android/appdata/experiment/ShareToolbarExperiment$Cohort;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 18
    const-string/jumbo v0, "mobile.android.share_toolbar"

    const-class v1, Lcom/yelp/android/appdata/experiment/ShareToolbarExperiment$Cohort;

    sget-object v2, Lcom/yelp/android/appdata/experiment/ShareToolbarExperiment$Cohort;->status_quo_share_toolbar:Lcom/yelp/android/appdata/experiment/ShareToolbarExperiment$Cohort;

    invoke-direct {p0, v0, v1, v2}, Lcom/yelp/android/appdata/experiment/c;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)V

    .line 19
    return-void
.end method
