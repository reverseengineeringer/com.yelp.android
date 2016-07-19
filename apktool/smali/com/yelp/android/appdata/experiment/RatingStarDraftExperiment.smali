.class public Lcom/yelp/android/appdata/experiment/RatingStarDraftExperiment;
.super Lcom/yelp/android/appdata/experiment/c;
.source "RatingStarDraftExperiment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/appdata/experiment/RatingStarDraftExperiment$Cohort;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/experiment/c",
        "<",
        "Lcom/yelp/android/appdata/experiment/RatingStarDraftExperiment$Cohort;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 18
    const-string/jumbo v0, "mobile.android.rating_draft"

    const-class v1, Lcom/yelp/android/appdata/experiment/RatingStarDraftExperiment$Cohort;

    sget-object v2, Lcom/yelp/android/appdata/experiment/RatingStarDraftExperiment$Cohort;->status_quo:Lcom/yelp/android/appdata/experiment/RatingStarDraftExperiment$Cohort;

    invoke-direct {p0, v0, v1, v2}, Lcom/yelp/android/appdata/experiment/c;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)V

    .line 19
    return-void
.end method
