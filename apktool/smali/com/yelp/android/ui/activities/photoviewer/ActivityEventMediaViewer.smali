.class public Lcom/yelp/android/ui/activities/photoviewer/ActivityEventMediaViewer;
.super Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;
.source "ActivityEventMediaViewer.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;I)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Lcom/yelp/android/serializable/Media;",
            ">;I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/photoviewer/ActivityEventMediaViewer;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    invoke-static {v0, p2, p3}, Lcom/yelp/android/ui/activities/photoviewer/ActivityEventMediaViewer;->a(Landroid/content/Intent;Ljava/util/List;I)Landroid/content/Intent;

    move-result-object v0

    .line 38
    const-string/jumbo v1, "extra.event_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;I)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Lcom/yelp/android/serializable/Media;",
            ">;I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/photoviewer/ActivityEventMediaViewer;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    invoke-static {v0, p1, p2}, Lcom/yelp/android/ui/activities/photoviewer/ActivityEventMediaViewer;->a(Landroid/content/Intent;Ljava/util/List;I)Landroid/content/Intent;

    move-result-object v0

    .line 53
    return-object v0
.end method


# virtual methods
.method protected a()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 64
    sget-object v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->USER_PASSPORT:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    return-object v0
.end method

.method protected a(I)V
    .locals 4

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityEventMediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/photoviewer/a;->e(I)Lcom/yelp/android/serializable/Media;

    move-result-object v0

    .line 77
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 79
    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityEventMediaViewer;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 80
    const-string/jumbo v2, "event_id"

    iget-object v3, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityEventMediaViewer;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_0
    const-string/jumbo v2, "photo_id"

    invoke-interface {v0}, Lcom/yelp/android/serializable/Media;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->EventPhoto:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 85
    return-void
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityEventMediaViewer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.event_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityEventMediaViewer;->a:Ljava/lang/String;

    .line 59
    return-void
.end method

.method protected b()Lcom/yelp/android/ui/activities/photoviewer/a;
    .locals 3

    .prologue
    .line 70
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/a;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityEventMediaViewer;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/photoviewer/a;-><init>(Landroid/support/v4/app/l;Lcom/yelp/android/serializable/YelpBusiness;)V

    return-object v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->EventPhotoFullScreen:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityEventMediaViewer;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/a;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityEventMediaViewer;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 95
    const/4 v0, 0x0

    .line 98
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "event_id"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityEventMediaViewer;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method
