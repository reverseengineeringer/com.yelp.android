.class public Lcom/yelp/android/ui/activities/backgroundlocation/ActivityBackgroundLocationOptIn;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityBackgroundLocationOptIn.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 85
    invoke-static {p0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/backgroundlocation/ActivityBackgroundLocationOptIn;->startActivity(Landroid/content/Intent;)V

    .line 86
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/backgroundlocation/ActivityBackgroundLocationOptIn;->finish()V

    .line 87
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/backgroundlocation/ActivityBackgroundLocationOptIn;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/backgroundlocation/ActivityBackgroundLocationOptIn;->a()V

    return-void
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BackgroundLocationOptIn:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/backgroundlocation/ActivityBackgroundLocationOptIn;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onBackPressed()V

    .line 75
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BackgroundLocationOptInNo:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 76
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/backgroundlocation/ActivityBackgroundLocationOptIn;->a()V

    .line 77
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v0, 0x7f03001e

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/backgroundlocation/ActivityBackgroundLocationOptIn;->setContentView(I)V

    .line 27
    const v0, 0x7f0f00f1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/backgroundlocation/ActivityBackgroundLocationOptIn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/backgroundlocation/ActivityBackgroundLocationOptIn$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/backgroundlocation/ActivityBackgroundLocationOptIn$1;-><init>(Lcom/yelp/android/ui/activities/backgroundlocation/ActivityBackgroundLocationOptIn;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v0, 0x7f0f00f0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/backgroundlocation/ActivityBackgroundLocationOptIn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/backgroundlocation/ActivityBackgroundLocationOptIn$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/backgroundlocation/ActivityBackgroundLocationOptIn$2;-><init>(Lcom/yelp/android/ui/activities/backgroundlocation/ActivityBackgroundLocationOptIn;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void
.end method
