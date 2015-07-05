.class Lcom/yelp/android/ui/activities/events/n;
.super Ljava/lang/Object;
.source "EventFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/yelp/android/ui/activities/events/EventFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/events/EventFragment;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 583
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/n;->b:Lcom/yelp/android/ui/activities/events/EventFragment;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/events/n;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 586
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->EventDirections:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "event_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/n;->b:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/events/EventFragment;->a(Lcom/yelp/android/ui/activities/events/EventFragment;)Lcom/yelp/android/serializable/Event;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Event;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/lang/Object;)V

    .line 587
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/n;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/n;->b:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/events/EventFragment;->a(Lcom/yelp/android/ui/activities/events/EventFragment;)Lcom/yelp/android/serializable/Event;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/util/r;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Event;)V

    .line 588
    return-void
.end method
