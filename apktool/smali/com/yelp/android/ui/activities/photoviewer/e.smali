.class Lcom/yelp/android/ui/activities/photoviewer/e;
.super Ljava/lang/Object;
.source "ActivityMediaViewer.java"

# interfaces
.implements Lcom/yelp/android/ui/dialogs/r;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/yelp/android/serializable/Media;

.field final synthetic c:Lcom/yelp/android/ui/dialogs/FlagMediaDialog;

.field final synthetic d:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;ZLcom/yelp/android/serializable/Media;Lcom/yelp/android/ui/dialogs/FlagMediaDialog;)V
    .locals 0

    .prologue
    .line 443
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/e;->d:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    iput-boolean p2, p0, Lcom/yelp/android/ui/activities/photoviewer/e;->a:Z

    iput-object p3, p0, Lcom/yelp/android/ui/activities/photoviewer/e;->b:Lcom/yelp/android/serializable/Media;

    iput-object p4, p0, Lcom/yelp/android/ui/activities/photoviewer/e;->c:Lcom/yelp/android/ui/dialogs/FlagMediaDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 447
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/e;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yelp/android/appdata/webrequests/BusinessObjectFlagRequest$FlaggableObject;->VIDEO:Lcom/yelp/android/appdata/webrequests/BusinessObjectFlagRequest$FlaggableObject;

    .line 448
    :goto_0
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/photoviewer/e;->a:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->FlagVideo:Lcom/yelp/android/analytics/iris/EventIri;

    :goto_1
    const-string/jumbo v2, "id"

    iget-object v3, p0, Lcom/yelp/android/ui/activities/photoviewer/e;->b:Lcom/yelp/android/serializable/Media;

    invoke-interface {v3}, Lcom/yelp/android/serializable/Media;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/lang/Object;)V

    .line 450
    new-instance v1, Lcom/yelp/android/appdata/webrequests/BusinessObjectFlagRequest;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/e;->b:Lcom/yelp/android/serializable/Media;

    invoke-interface {v2}, Lcom/yelp/android/serializable/Media;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/photoviewer/e;->d:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->d(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)Lcom/yelp/android/appdata/webrequests/m;

    move-result-object v3

    invoke-direct {v1, v0, v2, p1, v3}, Lcom/yelp/android/appdata/webrequests/BusinessObjectFlagRequest;-><init>(Lcom/yelp/android/appdata/webrequests/BusinessObjectFlagRequest$FlaggableObject;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 452
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/BusinessObjectFlagRequest;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 453
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/e;->c:Lcom/yelp/android/ui/dialogs/FlagMediaDialog;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/FlagMediaDialog;->dismiss()V

    .line 454
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/e;->d:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->e(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)V

    .line 455
    return-void

    .line 447
    :cond_0
    sget-object v0, Lcom/yelp/android/appdata/webrequests/BusinessObjectFlagRequest$FlaggableObject;->PHOTO:Lcom/yelp/android/appdata/webrequests/BusinessObjectFlagRequest$FlaggableObject;

    goto :goto_0

    .line 448
    :cond_1
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->FlagPhoto:Lcom/yelp/android/analytics/iris/EventIri;

    goto :goto_1
.end method
