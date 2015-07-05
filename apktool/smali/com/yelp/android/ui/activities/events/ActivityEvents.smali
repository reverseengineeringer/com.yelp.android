.class public Lcom/yelp/android/ui/activities/events/ActivityEvents;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityEvents.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/events/av;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 19
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/events/ActivityEvents;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/EventSection;)V
    .locals 3

    .prologue
    .line 34
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->EventSectionsMore:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "section_alias"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/EventSection;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    invoke-static {p1}, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->a(Lcom/yelp/android/serializable/EventSection;)Lcom/yelp/android/ui/activities/events/MoreEventsFragment;

    move-result-object v0

    .line 36
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/ActivityEvents;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0c01d4

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 41
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/ActivityEvents;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const v2, 0x7f0c01d4

    .line 24
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/ActivityEvents;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/ActivityEvents;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/events/EventsFragment;

    invoke-direct {v1}, Lcom/yelp/android/ui/activities/events/EventsFragment;-><init>()V

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 30
    :cond_0
    return-void
.end method
