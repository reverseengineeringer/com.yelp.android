.class public Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityEventSubscriptions;
.super Lcom/yelp/android/ui/util/YelpListActivity;
.source "ActivityEventSubscriptions.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpListActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/EventAttendees;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 19
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityEventSubscriptions;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    const-string/jumbo v1, "event_attendees"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 21
    return-object v0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityEventSubscriptions;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v0, 0x7f070338

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityEventSubscriptions;->setTitle(I)V

    .line 28
    new-instance v1, Lcom/yelp/android/ui/activities/events/b;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityEventSubscriptions;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "event_attendees"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/EventAttendees;

    invoke-direct {v1, v0, p1}, Lcom/yelp/android/ui/activities/events/b;-><init>(Lcom/yelp/android/serializable/EventAttendees;Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityEventSubscriptions;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 35
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityEventSubscriptions;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 36
    return-void
.end method
