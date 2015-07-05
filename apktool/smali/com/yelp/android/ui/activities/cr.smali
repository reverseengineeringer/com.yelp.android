.class Lcom/yelp/android/ui/activities/cr;
.super Landroid/content/BroadcastReceiver;
.source "ActivityMediaBrowser.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityMediaBrowser;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityMediaBrowser;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/yelp/android/ui/activities/cr;->a:Lcom/yelp/android/ui/activities/ActivityMediaBrowser;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 134
    invoke-static {p2}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Media;

    .line 135
    iget-object v1, p0, Lcom/yelp/android/ui/activities/cr;->a:Lcom/yelp/android/ui/activities/ActivityMediaBrowser;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->a(Lcom/yelp/android/ui/activities/ActivityMediaBrowser;Lcom/yelp/android/serializable/Media;)V

    .line 136
    return-void
.end method
