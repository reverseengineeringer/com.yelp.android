.class Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$1;
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
    .line 184
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$1;->a:Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 187
    invoke-static {p2}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Media;

    .line 188
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$1;->a:Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/photoviewer/a;->b(Lcom/yelp/android/serializable/Media;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$1;->a:Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/a;->c()V

    .line 191
    :cond_0
    return-void
.end method
