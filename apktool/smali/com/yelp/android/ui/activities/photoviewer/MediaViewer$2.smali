.class Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$2;
.super Landroid/content/BroadcastReceiver;
.source "MediaViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$2;->a:Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 199
    invoke-static {p2}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Media;

    .line 200
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$2;->a:Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->e:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a(Lcom/yelp/android/serializable/Media;)V

    .line 201
    return-void
.end method
