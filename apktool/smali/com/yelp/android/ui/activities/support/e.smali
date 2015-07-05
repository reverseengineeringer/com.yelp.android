.class Lcom/yelp/android/ui/activities/support/e;
.super Landroid/content/BroadcastReceiver;
.source "YelpActivity.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/support/YelpActivity;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/support/YelpActivity;)V
    .locals 0

    .prologue
    .line 1233
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/e;->a:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/e;->a:Lcom/yelp/android/ui/activities/support/YelpActivity;

    # invokes: Lcom/yelp/android/ui/activities/support/YelpActivity;->updateIconBadges()V
    invoke-static {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->access$300(Lcom/yelp/android/ui/activities/support/YelpActivity;)V

    .line 1237
    return-void
.end method
