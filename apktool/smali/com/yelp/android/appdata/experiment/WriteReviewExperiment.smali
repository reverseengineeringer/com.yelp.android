.class public Lcom/yelp/android/appdata/experiment/WriteReviewExperiment;
.super Lcom/yelp/android/appdata/experiment/c;
.source "WriteReviewExperiment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/experiment/c",
        "<",
        "Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 12
    const-string/jumbo v0, "mobile.android.write_a_review_cta"

    const-class v1, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;

    sget-object v2, Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;->status_quo:Lcom/yelp/android/appdata/experiment/WriteReviewExperiment$Cohort;

    invoke-direct {p0, v0, v1, v2}, Lcom/yelp/android/appdata/experiment/c;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)V

    .line 13
    return-void
.end method
