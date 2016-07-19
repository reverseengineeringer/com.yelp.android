.class public Lcom/yelp/android/ui/activities/events/ActivityEventAttendees;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityEventAttendees.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/Event;Lcom/yelp/android/serializable/EventAttendees;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 20
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/events/ActivityEventAttendees;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 21
    const-string/jumbo v1, "event"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 22
    const-string/jumbo v1, "event_attendees"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 23
    return-object v0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/ActivityEventAttendees;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const v3, 0x7f0f020d

    .line 28
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/ActivityEventAttendees;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v4/app/l;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;

    .line 32
    if-nez v0, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/ActivityEventAttendees;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "event"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Event;

    .line 34
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/ActivityEventAttendees;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "event_attendees"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/EventAttendees;

    .line 35
    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;->a(Lcom/yelp/android/serializable/Event;Lcom/yelp/android/serializable/EventAttendees;)Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;

    move-result-object v0

    .line 36
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/ActivityEventAttendees;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/support/v4/app/o;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 41
    :cond_0
    return-void
.end method
