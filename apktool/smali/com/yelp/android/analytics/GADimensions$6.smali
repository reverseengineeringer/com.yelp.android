.class final enum Lcom/yelp/android/analytics/GADimensions$6;
.super Lcom/yelp/android/analytics/GADimensions;
.source "GADimensions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/analytics/GADimensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yelp/android/analytics/GADimensions;-><init>(Ljava/lang/String;IILcom/yelp/android/analytics/GADimensions$1;)V

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/yelp/android/appdata/experiment/e;->h:Lcom/yelp/android/appdata/experiment/UfcNotificationExperiment;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/experiment/UfcNotificationExperiment;->b()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/experiment/UfcNotificationExperiment$Cohort;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/experiment/UfcNotificationExperiment$Cohort;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
