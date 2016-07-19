.class Lcom/yelp/android/ui/activities/events/MoreEventsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "MoreEventsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/events/MoreEventsFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/events/MoreEventsFragment;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment$1;->a:Lcom/yelp/android/ui/activities/events/MoreEventsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment$1;->a:Lcom/yelp/android/ui/activities/events/MoreEventsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->a(Lcom/yelp/android/ui/activities/events/MoreEventsFragment;)Lcom/yelp/android/ui/activities/events/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/a;->a()Ljava/util/List;

    move-result-object v2

    .line 76
    invoke-static {p2}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Event;

    .line 78
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 79
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    invoke-virtual {v0, v2}, Lcom/yelp/android/serializable/Event;->a(Ljava/util/List;)V

    .line 96
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment$1;->a:Lcom/yelp/android/ui/activities/events/MoreEventsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->a(Lcom/yelp/android/ui/activities/events/MoreEventsFragment;)Lcom/yelp/android/ui/activities/events/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/a;->notifyDataSetChanged()V

    .line 97
    return-void

    .line 82
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 85
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

    .line 86
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Event;->I()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->I()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 87
    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 91
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment$1;->a:Lcom/yelp/android/ui/activities/events/MoreEventsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->a(Lcom/yelp/android/ui/activities/events/MoreEventsFragment;)Lcom/yelp/android/ui/activities/events/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/a;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/MoreEventsFragment$1;->a:Lcom/yelp/android/ui/activities/events/MoreEventsFragment;

    sget-object v1, Lcom/yelp/android/util/ErrorType;->NO_EVENTS:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/events/MoreEventsFragment;->a(Lcom/yelp/android/util/ErrorType;)V

    goto :goto_0
.end method
