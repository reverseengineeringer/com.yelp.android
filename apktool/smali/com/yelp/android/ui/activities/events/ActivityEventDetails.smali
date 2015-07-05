.class public Lcom/yelp/android/ui/activities/events/ActivityEventDetails;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityEventDetails.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/Event;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 15
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/events/ActivityEventDetails;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 16
    const-string/jumbo v1, "extra.event"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 17
    return-object v0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/ActivityEventDetails;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const v2, 0x7f0c01d4

    .line 22
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/ActivityEventDetails;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/events/EventDetailFragment;

    .line 25
    if-nez v0, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/ActivityEventDetails;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.event"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Event;

    .line 27
    invoke-static {v0}, Lcom/yelp/android/ui/activities/events/EventDetailFragment;->a(Lcom/yelp/android/serializable/Event;)Lcom/yelp/android/ui/activities/events/EventDetailFragment;

    move-result-object v0

    .line 28
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/ActivityEventDetails;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 31
    :cond_0
    return-void
.end method
