.class Lcom/yelp/android/ui/activities/events/as;
.super Ljava/lang/Object;
.source "EventsFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/panels/aa;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/events/EventsFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/events/EventsFragment;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/as;->a:Lcom/yelp/android/ui/activities/events/EventsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public m_()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/as;->a:Lcom/yelp/android/ui/activities/events/EventsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/events/EventsFragment;->a(Lcom/yelp/android/ui/activities/events/EventsFragment;Lcom/yelp/android/appdata/webrequests/ca;)Lcom/yelp/android/appdata/webrequests/ca;

    .line 224
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/as;->a:Lcom/yelp/android/ui/activities/events/EventsFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/EventsFragment;->x()V

    .line 225
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/as;->a:Lcom/yelp/android/ui/activities/events/EventsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/events/EventsFragment;->a(Lcom/yelp/android/ui/activities/events/EventsFragment;)V

    .line 226
    return-void
.end method
