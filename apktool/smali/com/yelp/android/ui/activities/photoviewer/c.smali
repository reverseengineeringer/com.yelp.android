.class Lcom/yelp/android/ui/activities/photoviewer/c;
.super Landroid/content/BroadcastReceiver;
.source "ActivityMediaViewer.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/c;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 272
    invoke-static {p2}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Media;

    .line 273
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/c;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->c(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a(Lcom/yelp/android/serializable/Media;)V

    .line 274
    return-void
.end method
