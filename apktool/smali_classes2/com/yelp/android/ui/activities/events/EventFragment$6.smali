.class Lcom/yelp/android/ui/activities/events/EventFragment$6;
.super Ljava/lang/Object;
.source "EventFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/dialogs/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/events/EventFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/events/EventFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/events/EventFragment;)V
    .locals 0

    .prologue
    .line 1037
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/EventFragment$6;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment$6;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/events/EventFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    .line 1042
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment$6;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->e(Lcom/yelp/android/ui/activities/events/EventFragment;)Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment$6;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/events/EventFragment;->a(Lcom/yelp/android/ui/activities/events/EventFragment;)Lcom/yelp/android/serializable/Event;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Event;->I()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->FlagEventSent:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "event_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/EventFragment$6;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/events/EventFragment;->a(Lcom/yelp/android/ui/activities/events/EventFragment;)Lcom/yelp/android/serializable/Event;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Event;->I()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1044
    return-void
.end method
