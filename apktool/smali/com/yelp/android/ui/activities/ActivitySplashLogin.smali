.class public Lcom/yelp/android/ui/activities/ActivitySplashLogin;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivitySplashLogin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/ActivitySplashLogin$a;
    }
.end annotation


# instance fields
.field private a:Landroid/support/v4/view/ViewPager;

.field private b:[Landroid/view/View;

.field private c:[Lcom/yelp/android/analytics/iris/ViewIri;

.field private d:Lcom/yelp/android/ui/activities/ActivitySplashLogin$a;

.field private e:Landroid/view/View$OnClickListener;

.field private f:Landroid/view/View$OnClickListener;

.field private g:Landroid/view/View$OnClickListener;

.field private h:Landroid/view/View$OnClickListener;

.field private i:Landroid/support/v4/view/ViewPager$h;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 187
    new-instance v0, Lcom/yelp/android/ui/activities/ActivitySplashLogin$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/ActivitySplashLogin$1;-><init>(Lcom/yelp/android/ui/activities/ActivitySplashLogin;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->e:Landroid/view/View$OnClickListener;

    .line 198
    new-instance v0, Lcom/yelp/android/ui/activities/ActivitySplashLogin$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/ActivitySplashLogin$2;-><init>(Lcom/yelp/android/ui/activities/ActivitySplashLogin;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->f:Landroid/view/View$OnClickListener;

    .line 209
    new-instance v0, Lcom/yelp/android/ui/activities/ActivitySplashLogin$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/ActivitySplashLogin$3;-><init>(Lcom/yelp/android/ui/activities/ActivitySplashLogin;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->g:Landroid/view/View$OnClickListener;

    .line 221
    new-instance v0, Lcom/yelp/android/ui/activities/ActivitySplashLogin$4;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/ActivitySplashLogin$4;-><init>(Lcom/yelp/android/ui/activities/ActivitySplashLogin;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->h:Landroid/view/View$OnClickListener;

    .line 229
    new-instance v0, Lcom/yelp/android/ui/activities/ActivitySplashLogin$5;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/ActivitySplashLogin$5;-><init>(Lcom/yelp/android/ui/activities/ActivitySplashLogin;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->i:Landroid/support/v4/view/ViewPager$h;

    .line 286
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 53
    const-class v1, Lcom/yelp/android/ui/activities/ActivitySplashLogin;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 54
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 55
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 56
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivitySplashLogin;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->a:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 276
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    const v2, 0x7f0f00e6

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f0f00e7

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f0f00e8

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->b:[Landroid/view/View;

    .line 282
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->b:[Landroid/view/View;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->d:Lcom/yelp/android/ui/activities/ActivitySplashLogin$a;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/ActivitySplashLogin$a;->d()I

    move-result v1

    aget-object v0, v0, v1

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020235

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 284
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/ActivitySplashLogin;)[Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->c:[Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/ActivitySplashLogin;)[Landroid/view/View;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->b:[Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/ActivitySplashLogin;)Lcom/yelp/android/ui/activities/ActivitySplashLogin$a;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->d:Lcom/yelp/android/ui/activities/ActivitySplashLogin$a;

    return-object v0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/a;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    new-instance v0, Lcom/yelp/android/g/a;

    invoke-direct {v0}, Lcom/yelp/android/g/a;-><init>()V

    .line 181
    const-string/jumbo v1, "android_onboarding_experiment"

    sget-object v2, Lcom/yelp/android/appdata/experiment/e;->s:Lcom/yelp/android/appdata/experiment/OnboardingExperiment;

    invoke-virtual {v2}, Lcom/yelp/android/appdata/experiment/OnboardingExperiment;->b()Ljava/lang/Enum;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 143
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 144
    sparse-switch p1, :sswitch_data_0

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 152
    :sswitch_0
    if-ne p2, v0, :cond_0

    .line 158
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->setResult(I)V

    .line 159
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->finish()V

    goto :goto_0

    .line 144
    nop

    :sswitch_data_0
    .sparse-switch
        0x3f8 -> :sswitch_0
        0x418 -> :sswitch_0
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->setResult(I)V

    .line 175
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onBackPressed()V

    .line 176
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const v9, 0x7f0f03bd

    const/4 v8, 0x2

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 61
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v0, 0x7f030111

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->setContentView(I)V

    .line 64
    invoke-static {p0}, Lcom/yelp/android/ui/util/ar;->c(Landroid/app/Activity;)V

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    const v0, 0x7f0f03bb

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->a:Landroid/support/v4/view/ViewPager;

    .line 70
    new-instance v0, Lcom/yelp/android/ui/activities/ActivitySplashLogin$a;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v2

    invoke-direct {v0, p0, v2, v1}, Lcom/yelp/android/ui/activities/ActivitySplashLogin$a;-><init>(Lcom/yelp/android/ui/activities/ActivitySplashLogin;Landroid/support/v4/app/l;Ljava/util/List;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->d:Lcom/yelp/android/ui/activities/ActivitySplashLogin$a;

    .line 71
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->a:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->d:Lcom/yelp/android/ui/activities/ActivitySplashLogin$a;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/ac;)V

    .line 73
    if-eqz p1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->d:Lcom/yelp/android/ui/activities/ActivitySplashLogin$a;

    const-string/jumbo v2, "page_number"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/activities/ActivitySplashLogin$a;->e(I)V

    .line 76
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yelp/android/analytics/iris/ViewIri;

    sget-object v2, Lcom/yelp/android/analytics/iris/ViewIri;->OnboardingGuidePageOne:Lcom/yelp/android/analytics/iris/ViewIri;

    aput-object v2, v0, v5

    sget-object v2, Lcom/yelp/android/analytics/iris/ViewIri;->OnboardingGuidePageTwo:Lcom/yelp/android/analytics/iris/ViewIri;

    aput-object v2, v0, v6

    sget-object v2, Lcom/yelp/android/analytics/iris/ViewIri;->SplashScreenLogin:Lcom/yelp/android/analytics/iris/ViewIri;

    aput-object v2, v0, v8

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->c:[Lcom/yelp/android/analytics/iris/ViewIri;

    .line 83
    const v0, 0x7f0f03c1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 84
    const v2, 0x7f0f00e5

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 86
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->a()V

    .line 87
    sget-object v3, Lcom/yelp/android/appdata/experiment/e;->s:Lcom/yelp/android/appdata/experiment/OnboardingExperiment;

    sget-object v4, Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;->status_quo_illustration_guide:Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;

    invoke-virtual {v3, v4}, Lcom/yelp/android/appdata/experiment/OnboardingExperiment;->a(Ljava/lang/Enum;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 88
    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->a:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->i:Landroid/support/v4/view/ViewPager$h;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ViewPager$e;)V

    .line 90
    const v0, 0x7f0f03be

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 92
    const v0, 0x7f0202ec

    const v2, 0x7f070523

    invoke-static {v0, v2}, Lcom/yelp/android/ui/activities/OnboardingGuidePagerFragment;->a(II)Lcom/yelp/android/ui/activities/OnboardingGuidePagerFragment;

    move-result-object v0

    invoke-interface {v1, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 96
    const v0, 0x7f0201dc

    const v2, 0x7f0704d2

    invoke-static {v0, v2}, Lcom/yelp/android/ui/activities/OnboardingGuidePagerFragment;->a(II)Lcom/yelp/android/ui/activities/OnboardingGuidePagerFragment;

    move-result-object v0

    invoke-interface {v1, v6, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 100
    const v0, 0x7f020380

    const v2, 0x7f07034f

    invoke-static {v0, v2}, Lcom/yelp/android/ui/activities/OnboardingGuidePagerFragment;->a(II)Lcom/yelp/android/ui/activities/OnboardingGuidePagerFragment;

    move-result-object v0

    invoke-interface {v1, v8, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 105
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->c:[Lcom/yelp/android/analytics/iris/ViewIri;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->c:[Lcom/yelp/android/analytics/iris/ViewIri;

    aget-object v1, v1, v5

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->getParametersForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 120
    :goto_0
    const v0, 0x7f0f03bf

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    const v0, 0x7f0f03c0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    invoke-virtual {p0, v9}, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->d:Lcom/yelp/android/ui/activities/ActivitySplashLogin$a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivitySplashLogin$a;->c()V

    .line 128
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/c;->i()I

    move-result v0

    if-ne v0, v6, :cond_1

    .line 129
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/yelp/android/appdata/c;->d(Z)V

    .line 133
    :cond_1
    return-void

    .line 107
    :cond_2
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 108
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 109
    invoke-virtual {p0, v9}, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 111
    const v0, 0x7f0200ff

    const v2, 0x7f07064f

    invoke-static {v0, v2}, Lcom/yelp/android/ui/activities/OnboardingGuidePagerFragment;->a(II)Lcom/yelp/android/ui/activities/OnboardingGuidePagerFragment;

    move-result-object v0

    invoke-interface {v1, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 116
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->SplashScreenLogin:Lcom/yelp/android/analytics/iris/ViewIri;

    sget-object v1, Lcom/yelp/android/analytics/iris/ViewIri;->SplashScreenLogin:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->getParametersForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .prologue
    .line 320
    const/16 v0, 0xfa

    if-ne v0, p1, :cond_2

    .line 321
    invoke-static {p2, p3}, Lcom/yelp/android/appdata/k;->a([Ljava/lang/String;[I)Ljava/util/Map;

    move-result-object v0

    .line 323
    sget-object v1, Lcom/yelp/android/appdata/PermissionGroup;->LOCATION:Lcom/yelp/android/appdata/PermissionGroup;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    sget-object v1, Lcom/yelp/android/appdata/PermissionGroup;->LOCATION:Lcom/yelp/android/appdata/PermissionGroup;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->F()V

    .line 326
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->PermissionLocationAllowed:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->PermissionLocationDenied:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    goto :goto_0

    .line 332
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 138
    const-string/jumbo v0, "page_number"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->d:Lcom/yelp/android/ui/activities/ActivitySplashLogin$a;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/ActivitySplashLogin$a;->d()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 139
    return-void
.end method
