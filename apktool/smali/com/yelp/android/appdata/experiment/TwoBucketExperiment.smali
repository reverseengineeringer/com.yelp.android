.class public Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;
.super Lcom/yelp/android/appdata/experiment/c;
.source "TwoBucketExperiment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/experiment/c",
        "<",
        "Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 24
    const-class v1, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;

    if-eqz p2, :cond_0

    sget-object v0, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;->enabled:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;

    :goto_0
    invoke-direct {p0, p1, v1, v0}, Lcom/yelp/android/appdata/experiment/c;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)V

    .line 25
    return-void

    .line 24
    :cond_0
    sget-object v0, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;->status_quo:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;

    goto :goto_0
.end method
