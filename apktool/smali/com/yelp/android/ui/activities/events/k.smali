.class Lcom/yelp/android/ui/activities/events/k;
.super Ljava/lang/Object;
.source "EventFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/dialogs/r;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/events/EventFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/events/EventFragment;)V
    .locals 0

    .prologue
    .line 964
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/k;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 968
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/k;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/events/EventFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    .line 969
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/k;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->c(Lcom/yelp/android/ui/activities/events/EventFragment;)Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/k;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/events/EventFragment;->a(Lcom/yelp/android/ui/activities/events/EventFragment;)Lcom/yelp/android/serializable/Event;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Event;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->FlagEventSent:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "event_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/k;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/events/EventFragment;->a(Lcom/yelp/android/ui/activities/events/EventFragment;)Lcom/yelp/android/serializable/Event;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Event;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/lang/Object;)V

    .line 971
    return-void
.end method
