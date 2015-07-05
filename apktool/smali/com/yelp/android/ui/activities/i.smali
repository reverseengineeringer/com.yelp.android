.class Lcom/yelp/android/ui/activities/i;
.super Landroid/content/BroadcastReceiver;
.source "ActivityBookmarks.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityBookmarks;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityBookmarks;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/yelp/android/ui/activities/i;->a:Lcom/yelp/android/ui/activities/ActivityBookmarks;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 104
    invoke-static {p2}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    .line 105
    iget-object v1, p0, Lcom/yelp/android/ui/activities/i;->a:Lcom/yelp/android/ui/activities/ActivityBookmarks;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->a(Lcom/yelp/android/ui/activities/ActivityBookmarks;Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 106
    return-void
.end method
