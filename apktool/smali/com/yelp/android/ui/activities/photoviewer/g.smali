.class Lcom/yelp/android/ui/activities/photoviewer/g;
.super Ljava/lang/Object;
.source "ActivityMediaViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;I)V
    .locals 0

    .prologue
    .line 564
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/g;->b:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    iput p2, p0, Lcom/yelp/android/ui/activities/photoviewer/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 567
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/g;->b:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/g;->b:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->b(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)Lcom/yelp/android/ui/activities/photoviewer/ak;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/photoviewer/ak;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/yelp/android/ui/activities/photoviewer/g;->a:I

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/g;->b:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->f(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/g;->b:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->g(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)Lcom/yelp/android/appdata/webrequests/MediaRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/g;->b:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->g(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)Lcom/yelp/android/appdata/webrequests/MediaRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/MediaRequest;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/g;->b:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/g;->b:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->g(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)Lcom/yelp/android/appdata/webrequests/MediaRequest;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/MediaRequest;->next(I)Lcom/yelp/android/appdata/webrequests/MediaRequest;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;Lcom/yelp/android/appdata/webrequests/MediaRequest;)Lcom/yelp/android/appdata/webrequests/MediaRequest;

    .line 570
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/g;->b:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;Z)Z

    .line 572
    :cond_0
    return-void
.end method
