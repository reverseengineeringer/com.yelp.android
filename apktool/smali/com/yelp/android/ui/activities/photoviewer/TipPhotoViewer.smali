.class public Lcom/yelp/android/ui/activities/photoviewer/TipPhotoViewer;
.super Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;
.source "TipPhotoViewer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/Photo;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_0
    invoke-static {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity$IntentData;->setData(Ljava/lang/Object;)V

    .line 22
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/photoviewer/TipPhotoViewer;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    const-string/jumbo v1, "extra.media_index"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 24
    return-object v0
.end method


# virtual methods
.method protected d()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method protected e()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->UserPhotosFullscreen:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/TipPhotoViewer;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/b;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
