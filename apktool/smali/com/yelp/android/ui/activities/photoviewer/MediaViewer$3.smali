.class Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$3;
.super Ljava/lang/Object;
.source "MediaViewer.java"

# interfaces
.implements Lcom/yelp/android/ui/dialogs/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->e(Lcom/yelp/android/serializable/Media;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/Media;

.field final synthetic b:Z

.field final synthetic c:Lcom/yelp/android/ui/dialogs/FlagMediaDialog;

.field final synthetic d:Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;Lcom/yelp/android/serializable/Media;ZLcom/yelp/android/ui/dialogs/FlagMediaDialog;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$3;->d:Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$3;->a:Lcom/yelp/android/serializable/Media;

    iput-boolean p3, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$3;->b:Z

    iput-object p4, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$3;->c:Lcom/yelp/android/ui/dialogs/FlagMediaDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 336
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$3;->d:Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$3;->a:Lcom/yelp/android/serializable/Media;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->a(Lcom/yelp/android/serializable/Media;)Lcom/yelp/android/appdata/webrequests/MediaFlagRequest$FlaggableMedia;

    move-result-object v1

    .line 337
    if-nez v1, :cond_0

    .line 338
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "You should override getFlaggableMedia() to not return null if your MediaViewer can flag media."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_0
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$3;->b:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->FlagVideo:Lcom/yelp/android/analytics/iris/EventIri;

    :goto_0
    const-string/jumbo v2, "id"

    iget-object v3, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$3;->a:Lcom/yelp/android/serializable/Media;

    invoke-interface {v3}, Lcom/yelp/android/serializable/Media;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 346
    new-instance v0, Lcom/yelp/android/appdata/webrequests/MediaFlagRequest;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$3;->a:Lcom/yelp/android/serializable/Media;

    invoke-interface {v2}, Lcom/yelp/android/serializable/Media;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$3;->d:Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->a(Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;)Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    move-result-object v3

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/yelp/android/appdata/webrequests/MediaFlagRequest;-><init>(Lcom/yelp/android/appdata/webrequests/MediaFlagRequest$FlaggableMedia;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 349
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/MediaFlagRequest;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 350
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$3;->c:Lcom/yelp/android/ui/dialogs/FlagMediaDialog;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/FlagMediaDialog;->dismiss()V

    .line 351
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$3;->d:Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->showLoadingDialog()V

    .line 352
    return-void

    .line 342
    :cond_1
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->FlagPhoto:Lcom/yelp/android/analytics/iris/EventIri;

    goto :goto_0
.end method
