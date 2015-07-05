.class public Lcom/yelp/android/appdata/experiment/FirstSearchExperiment;
.super Lcom/yelp/android/appdata/experiment/b;
.source "FirstSearchExperiment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/experiment/b",
        "<",
        "Lcom/yelp/android/appdata/experiment/FirstSearchExperiment$Cohort;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 8
    const-string/jumbo v0, "mobile_android_search_onboarding"

    const-class v1, Lcom/yelp/android/appdata/experiment/FirstSearchExperiment$Cohort;

    sget-object v2, Lcom/yelp/android/appdata/experiment/FirstSearchExperiment$Cohort;->no_search_step:Lcom/yelp/android/appdata/experiment/FirstSearchExperiment$Cohort;

    invoke-direct {p0, v0, v1, v2}, Lcom/yelp/android/appdata/experiment/b;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)V

    .line 9
    return-void
.end method
