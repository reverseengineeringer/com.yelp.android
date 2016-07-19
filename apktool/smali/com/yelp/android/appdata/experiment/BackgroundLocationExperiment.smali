.class public Lcom/yelp/android/appdata/experiment/BackgroundLocationExperiment;
.super Lcom/yelp/android/appdata/experiment/c;
.source "BackgroundLocationExperiment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/appdata/experiment/BackgroundLocationExperiment$Cohort;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/experiment/c",
        "<",
        "Lcom/yelp/android/appdata/experiment/BackgroundLocationExperiment$Cohort;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 18
    const-string/jumbo v0, "mobile.background_location_track_android_v2"

    const-class v1, Lcom/yelp/android/appdata/experiment/BackgroundLocationExperiment$Cohort;

    sget-object v2, Lcom/yelp/android/appdata/experiment/BackgroundLocationExperiment$Cohort;->disabled:Lcom/yelp/android/appdata/experiment/BackgroundLocationExperiment$Cohort;

    invoke-direct {p0, v0, v1, v2}, Lcom/yelp/android/appdata/experiment/c;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)V

    .line 19
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/yelp/android/appdata/experiment/BackgroundLocationExperiment$Cohort;->enabled_settings:Lcom/yelp/android/appdata/experiment/BackgroundLocationExperiment$Cohort;

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/experiment/BackgroundLocationExperiment;->a(Ljava/lang/Enum;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/yelp/android/appdata/experiment/BackgroundLocationExperiment$Cohort;->enabled_opt_in:Lcom/yelp/android/appdata/experiment/BackgroundLocationExperiment$Cohort;

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/experiment/BackgroundLocationExperiment;->a(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
