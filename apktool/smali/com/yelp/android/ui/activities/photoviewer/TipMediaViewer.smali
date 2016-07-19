.class public Lcom/yelp/android/ui/activities/photoviewer/TipMediaViewer;
.super Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;
.source "TipMediaViewer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/Photo;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    if-eqz p1, :cond_0

    .line 24
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/yelp/android/ui/activities/photoviewer/TipMediaViewer;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/yelp/android/ui/activities/photoviewer/TipMediaViewer;->a(Landroid/content/Intent;Ljava/util/List;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a()Ljava/util/Set;
    .locals 1
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
    .line 43
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected b()Lcom/yelp/android/ui/activities/photoviewer/a;
    .locals 3

    .prologue
    .line 48
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/a;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/TipMediaViewer;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/photoviewer/a;-><init>(Landroid/support/v4/app/l;Lcom/yelp/android/serializable/YelpBusiness;)V

    return-object v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->UserPhotosFullscreen:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/TipMediaViewer;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/util/Map;
    .locals 1
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
    .line 38
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
