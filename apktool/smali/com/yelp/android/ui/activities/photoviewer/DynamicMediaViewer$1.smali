.class Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer$1;
.super Ljava/lang/Object;
.source "DynamicMediaViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;I)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer$1;->b:Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;

    iput p2, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer$1;->b:Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/a;->d()I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer$1;->b:Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/photoviewer/a;->b()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer$1;->a:I

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer$1;->b:Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->a(Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;)I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer$1;->b:Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->a:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer$1;->b:Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->a:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/MediaRequest;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer$1;->b:Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer$1;->b:Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->a:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    const/16 v2, 0x2a

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/MediaRequest;->d(I)Lcom/yelp/android/appdata/webrequests/MediaRequest;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->a:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    .line 161
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer$1;->b:Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->a(Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;Z)Z

    .line 163
    :cond_0
    return-void
.end method
