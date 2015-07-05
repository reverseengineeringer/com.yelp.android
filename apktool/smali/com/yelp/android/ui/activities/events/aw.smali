.class Lcom/yelp/android/ui/activities/events/aw;
.super Landroid/content/BroadcastReceiver;
.source "MoreEventsFragment.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/events/MoreEventsFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/events/MoreEventsFragment;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/aw;->a:Lcom/yelp/android/ui/activities/events/MoreEventsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 74
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/aw;->a:Lcom/yelp/android/ui/activities/events/MoreEventsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->a(Lcom/yelp/android/ui/activities/events/MoreEventsFragment;)Lcom/yelp/android/ui/activities/events/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/b;->a()Ljava/util/List;

    move-result-object v2

    .line 75
    invoke-static {p2}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Event;

    .line 77
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->isUserParticipating()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    invoke-virtual {v0, v2}, Lcom/yelp/android/serializable/Event;->updateEventObjectInList(Ljava/util/List;)V

    .line 95
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/aw;->a:Lcom/yelp/android/ui/activities/events/MoreEventsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->a(Lcom/yelp/android/ui/activities/events/MoreEventsFragment;)Lcom/yelp/android/ui/activities/events/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/b;->notifyDataSetChanged()V

    .line 96
    return-void

    .line 81
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 84
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/Event;

    .line 85
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Event;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 86
    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 90
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/aw;->a:Lcom/yelp/android/ui/activities/events/MoreEventsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->a(Lcom/yelp/android/ui/activities/events/MoreEventsFragment;)Lcom/yelp/android/ui/activities/events/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/b;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/aw;->a:Lcom/yelp/android/ui/activities/events/MoreEventsFragment;

    sget-object v1, Lcom/yelp/android/util/ErrorType;->NO_EVENTS:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->a(Lcom/yelp/android/util/ErrorType;)V

    goto :goto_0
.end method
