.class Lcom/yelp/android/ui/activities/photoviewer/a;
.super Landroid/content/BroadcastReceiver;
.source "ActivityMediaViewer.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 261
    invoke-static {p2}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Media;

    .line 262
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->b(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)Lcom/yelp/android/ui/activities/photoviewer/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/ak;->notifyDataSetChanged()V

    .line 265
    :cond_0
    return-void
.end method
