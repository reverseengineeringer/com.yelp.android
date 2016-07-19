.class public Lcom/yelp/android/ui/activities/RootActivity;
.super Landroid/app/Activity;
.source "RootActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 158
    sget-object v0, Lcom/yelp/android/appdata/experiment/e;->s:Lcom/yelp/android/appdata/experiment/OnboardingExperiment;

    sget-object v1, Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;->status_quo_illustration_guide:Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/experiment/OnboardingExperiment;->a(Ljava/lang/Enum;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/yelp/android/appdata/experiment/e;->s:Lcom/yelp/android/appdata/experiment/OnboardingExperiment;

    sget-object v1, Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;->illustration_splash:Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/experiment/OnboardingExperiment;->a(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    :cond_0
    invoke-static {p0}, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 167
    :goto_0
    const/16 v1, 0x421

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/RootActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 168
    return-void

    .line 164
    :cond_1
    invoke-static {p0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 175
    invoke-static {p0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/RootActivity;->startActivity(Landroid/content/Intent;)V

    .line 176
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/RootActivity;->finish()V

    .line 177
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 127
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 129
    sparse-switch p1, :sswitch_data_0

    .line 154
    :goto_0
    return-void

    .line 132
    :sswitch_0
    if-ne p2, v0, :cond_1

    .line 133
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/RootActivity;->b()V

    .line 138
    :cond_0
    :goto_1
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->OnboardingCompleted:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 139
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/analytics/i;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/analytics/iris/KahunaEventIri;->OnboardingCompleted:Lcom/yelp/android/analytics/iris/KahunaEventIri;

    invoke-virtual {v0, v1}, Lcom/yelp/android/analytics/i;->a(Lcom/yelp/android/analytics/iris/KahunaEventIri;)V

    goto :goto_0

    .line 134
    :cond_1
    if-nez p2, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/RootActivity;->finish()V

    goto :goto_1

    .line 147
    :sswitch_1
    if-ne p2, v0, :cond_2

    .line 148
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/RootActivity;->a()V

    goto :goto_0

    .line 150
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/RootActivity;->finish()V

    goto :goto_0

    .line 129
    :sswitch_data_0
    .sparse-switch
        0x406 -> :sswitch_1
        0x421 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v1

    .line 41
    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v2

    .line 45
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/RootActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {p0, v3}, Lbolts/a;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 46
    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    move-result-object v3

    const-string/jumbo v4, "yelp:///fb_app_link?utm_source=app_link"

    invoke-virtual {v3, v4}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Ljava/lang/String;)V

    .line 57
    :cond_0
    invoke-virtual {v1}, Lcom/yelp/android/appdata/c;->i()I

    move-result v3

    if-gt v3, v5, :cond_1

    invoke-virtual {v2}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 58
    :cond_1
    invoke-virtual {v1, v5}, Lcom/yelp/android/appdata/c;->k(Z)V

    .line 63
    :cond_2
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/c;->ad()Z

    move-result v2

    if-nez v2, :cond_6

    .line 64
    const/16 v0, 0x17

    invoke-static {v0}, Lcom/yelp/android/appdata/f;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 75
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/c;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    sget-object v0, Lcom/yelp/android/appdata/PermissionGroup;->LOCATION:Lcom/yelp/android/appdata/PermissionGroup;

    iget-object v0, v0, Lcom/yelp/android/appdata/PermissionGroup;->permissions:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/yelp/android/appdata/k;->a(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v0

    .line 85
    :goto_0
    if-eqz v0, :cond_4

    .line 86
    invoke-static {p0}, Lcom/yelp/android/ui/activities/ActivityOnboardingLocationPermission;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x406

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/RootActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 97
    :goto_1
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->OnboardingBegan:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 98
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/analytics/i;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/analytics/iris/KahunaEventIri;->OnboardingBegan:Lcom/yelp/android/analytics/iris/KahunaEventIri;

    invoke-virtual {v0, v1}, Lcom/yelp/android/analytics/i;->a(Lcom/yelp/android/analytics/iris/KahunaEventIri;)V

    .line 123
    :goto_2
    return-void

    .line 80
    :cond_3
    sget-object v0, Lcom/yelp/android/appdata/PermissionGroup;->LOCATION:Lcom/yelp/android/appdata/PermissionGroup;

    invoke-static {p0, v0}, Lcom/yelp/android/appdata/k;->b(Landroid/content/Context;Lcom/yelp/android/appdata/PermissionGroup;)Z

    move-result v0

    goto :goto_0

    .line 91
    :cond_4
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/RootActivity;->a()V

    goto :goto_1

    .line 94
    :cond_5
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/RootActivity;->a()V

    goto :goto_1

    .line 100
    :cond_6
    invoke-virtual {v1}, Lcom/yelp/android/appdata/c;->o()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->s()Lcom/yelp/android/services/backgroundlocation/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/services/backgroundlocation/a;->d()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v1}, Lcom/yelp/android/appdata/c;->i()I

    move-result v0

    if-le v0, v5, :cond_7

    invoke-static {}, Lcom/kahuna/sdk/j;->i()Lcom/kahuna/sdk/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/kahuna/sdk/h;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/yelp/android/appdata/experiment/e;->k:Lcom/yelp/android/appdata/experiment/BackgroundLocationExperiment;

    sget-object v2, Lcom/yelp/android/appdata/experiment/BackgroundLocationExperiment$Cohort;->enabled_opt_in:Lcom/yelp/android/appdata/experiment/BackgroundLocationExperiment$Cohort;

    invoke-virtual {v0, v2}, Lcom/yelp/android/appdata/experiment/BackgroundLocationExperiment;->a(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 106
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/yelp/android/ui/activities/backgroundlocation/ActivityBackgroundLocationOptIn;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/RootActivity;->startActivity(Landroid/content/Intent;)V

    .line 107
    invoke-virtual {v1}, Lcom/yelp/android/appdata/c;->p()V

    .line 108
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/RootActivity;->finish()V

    goto :goto_2

    .line 122
    :cond_7
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/RootActivity;->b()V

    goto :goto_2
.end method
