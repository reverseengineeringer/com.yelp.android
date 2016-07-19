.class public Lcom/yelp/android/appdata/experiment/OnboardingExperiment;
.super Lcom/yelp/android/appdata/experiment/b;
.source "OnboardingExperiment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/experiment/b",
        "<",
        "Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    const-string/jumbo v0, "android_onboarding_v2"

    const-class v1, Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/appdata/experiment/b;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected synthetic a()Ljava/lang/Enum;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/yelp/android/appdata/experiment/OnboardingExperiment;->d()Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;

    move-result-object v0

    return-object v0
.end method

.method protected d()Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 35
    const/16 v1, 0x17

    invoke-static {v1}, Lcom/yelp/android/appdata/f;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    sget-object v1, Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;->status_quo_illustration_guide:Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v1, Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;->illustration_splash:Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;

    const/16 v2, 0x55

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v1, Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;->animated_onboarding_arrows:Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v1, Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;->animated_onboarding_dots_and_arrows:Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :goto_0
    new-instance v1, Lcom/yelp/android/bu/b;

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-direct {v1, v0, v2}, Lcom/yelp/android/bu/b;-><init>(Ljava/util/Map;Ljava/util/Random;)V

    invoke-virtual {v1}, Lcom/yelp/android/bu/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;

    return-object v0

    .line 41
    :cond_0
    sget-object v1, Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;->status_quo_illustration_guide:Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v1, Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;->illustration_splash:Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;

    const/16 v2, 0x5f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
