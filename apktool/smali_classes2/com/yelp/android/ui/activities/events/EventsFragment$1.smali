.class Lcom/yelp/android/ui/activities/events/EventsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "EventsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/events/EventsFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/events/EventsFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/events/EventsFragment;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/EventsFragment$1;->a:Lcom/yelp/android/ui/activities/events/EventsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment$1;->a:Lcom/yelp/android/ui/activities/events/EventsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/events/EventsFragment;->a(Lcom/yelp/android/ui/activities/events/EventsFragment;)V

    .line 94
    return-void
.end method
