.class public Lcom/yelp/android/cj/f;
.super Ljava/lang/Object;
.source "LocationSettingsPreferenceViewInitializer.java"

# interfaces
.implements Lcom/yelp/android/cj/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/activities/settings/PreferenceView;)V
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/yelp/android/appdata/experiment/e;->k:Lcom/yelp/android/appdata/experiment/BackgroundLocationExperiment;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/experiment/BackgroundLocationExperiment;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->setVisibility(I)V

    .line 21
    :cond_0
    return-void
.end method
