.class public final Lcom/yelp/android/ui/activities/addphoto/l;
.super Lcom/yelp/android/analytics/d;
.source "AllTheUploadedMediaAdapter.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/yelp/android/serializable/IdentifiableMedia;


# direct methods
.method public constructor <init>(Lcom/yelp/android/analytics/iris/EventIri;Ljava/util/Map;Ljava/lang/String;Lcom/yelp/android/serializable/IdentifiableMedia;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/EventIri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/serializable/IdentifiableMedia;",
            ")V"
        }
    .end annotation

    .prologue
    .line 446
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/analytics/d;-><init>(Lcom/yelp/android/analytics/iris/EventIri;Ljava/util/Map;)V

    .line 447
    iput-object p3, p0, Lcom/yelp/android/ui/activities/addphoto/l;->a:Ljava/lang/String;

    .line 448
    iput-object p4, p0, Lcom/yelp/android/ui/activities/addphoto/l;->b:Lcom/yelp/android/serializable/IdentifiableMedia;

    .line 449
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 454
    const v0, 0x7f0c002a

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 455
    const v1, 0x7f0c002b

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 458
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gt v2, v3, :cond_1

    .line 459
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 460
    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/l;->b:Lcom/yelp/android/serializable/IdentifiableMedia;

    if-eqz v1, :cond_0

    .line 461
    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/l;->b:Lcom/yelp/android/serializable/IdentifiableMedia;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 464
    iget-object v3, p0, Lcom/yelp/android/ui/activities/addphoto/l;->a:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v3, v4, v2, v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/MediaRequest;Ljava/util/List;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 467
    :cond_1
    return-void
.end method
