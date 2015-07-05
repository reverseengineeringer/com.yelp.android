.class public Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;
.super Lcom/yelp/android/ui/activities/support/YelpListFragment;
.source "EventAttendeesFragment.java"


# instance fields
.field private a:Lcom/yelp/android/serializable/Event;

.field private b:Lcom/yelp/android/serializable/EventAttendees;

.field private c:Lcom/yelp/android/ui/activities/events/e;

.field private d:Lcom/yelp/android/appdata/webrequests/bu;

.field private final e:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/User;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;-><init>()V

    .line 111
    new-instance v0, Lcom/yelp/android/ui/activities/events/g;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/g;-><init>(Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;->e:Lcom/yelp/android/appdata/webrequests/m;

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;)Lcom/yelp/android/appdata/webrequests/bu;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;->d:Lcom/yelp/android/appdata/webrequests/bu;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;Lcom/yelp/android/appdata/webrequests/bu;)Lcom/yelp/android/appdata/webrequests/bu;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;->d:Lcom/yelp/android/appdata/webrequests/bu;

    return-object p1
.end method

.method public static a(Lcom/yelp/android/serializable/Event;Lcom/yelp/android/serializable/EventAttendees;)Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;
    .locals 3

    .prologue
    .line 36
    new-instance v0, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;-><init>()V

    .line 37
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 38
    const-string/jumbo v2, "event"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 39
    const-string/jumbo v2, "event_attendees"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 40
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;->setArguments(Landroid/os/Bundle;)V

    .line 41
    return-object v0
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 93
    new-instance v0, Lcom/yelp/android/ui/activities/events/e;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;->b:Lcom/yelp/android/serializable/EventAttendees;

    invoke-direct {v0, v1, p1}, Lcom/yelp/android/ui/activities/events/e;-><init>(Lcom/yelp/android/serializable/EventAttendees;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;->c:Lcom/yelp/android/ui/activities/events/e;

    .line 94
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;->c:Lcom/yelp/android/ui/activities/events/e;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;->a(Landroid/widget/ListAdapter;)V

    .line 95
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;->c:Lcom/yelp/android/ui/activities/events/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/e;->c()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;->a(Z)V

    .line 96
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;->c:Lcom/yelp/android/ui/activities/events/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/e;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/events/f;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/events/f;-><init>(Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setOnLoadNeeded(Ljava/lang/Runnable;)V

    .line 109
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 0

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;)Lcom/yelp/android/ui/activities/events/e;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;->c:Lcom/yelp/android/ui/activities/events/e;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;)Lcom/yelp/android/serializable/Event;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;->a:Lcom/yelp/android/serializable/Event;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;)Lcom/yelp/android/appdata/webrequests/m;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;->e:Lcom/yelp/android/appdata/webrequests/m;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;->c:Lcom/yelp/android/ui/activities/events/e;

    invoke-virtual {v0, p3}, Lcom/yelp/android/ui/activities/events/e;->a(I)Lcom/yelp/android/serializable/User;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_0

    .line 82
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->EventUser:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v2, "event_id"

    iget-object v3, p0, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;->a:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/Event;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;->startActivity(Landroid/content/Intent;)V

    .line 85
    :cond_0
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->EventAttendees:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 55
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;->a(Landroid/os/Bundle;)V

    .line 56
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "event"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Event;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;->a:Lcom/yelp/android/serializable/Event;

    .line 49
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "event_attendees"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/EventAttendees;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;->b:Lcom/yelp/android/serializable/EventAttendees;

    .line 50
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onPause()V

    .line 68
    const-string/jumbo v0, "event_more_attendees_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;->d:Lcom/yelp/android/appdata/webrequests/bu;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 69
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 60
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onResume()V

    .line 61
    const-string/jumbo v0, "event_more_attendees_request"

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;->e:Lcom/yelp/android/appdata/webrequests/m;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/m;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/bu;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;->d:Lcom/yelp/android/appdata/webrequests/bu;

    .line 63
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 74
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventAttendeesFragment;->c:Lcom/yelp/android/ui/activities/events/e;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/events/e;->a(Landroid/os/Bundle;)V

    .line 75
    return-void
.end method
