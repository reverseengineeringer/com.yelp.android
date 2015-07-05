.class Lcom/yelp/android/ui/activities/events/ar;
.super Landroid/content/BroadcastReceiver;
.source "EventsFragment.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/events/EventsFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/events/EventsFragment;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/ar;->a:Lcom/yelp/android/ui/activities/events/EventsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/ar;->a:Lcom/yelp/android/ui/activities/events/EventsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/events/EventsFragment;->a(Lcom/yelp/android/ui/activities/events/EventsFragment;)V

    .line 88
    return-void
.end method
