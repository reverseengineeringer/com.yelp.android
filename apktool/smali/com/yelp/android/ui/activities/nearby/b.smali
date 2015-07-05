.class Lcom/yelp/android/ui/activities/nearby/b;
.super Ljava/lang/Object;
.source "ActivityNearby.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/nearby/ActivityNearby;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/nearby/ActivityNearby;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/b;->a:Lcom/yelp/android/ui/activities/nearby/ActivityNearby;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 119
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->SearchBar:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v1, Lcom/yelp/android/analytics/iris/IriSource;->Nearby:Lcom/yelp/android/analytics/iris/IriSource;

    invoke-virtual {v1}, Lcom/yelp/android/analytics/iris/IriSource;->getMapWithParameter()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 120
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/b;->a:Lcom/yelp/android/ui/activities/nearby/ActivityNearby;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/b;->a:Lcom/yelp/android/ui/activities/nearby/ActivityNearby;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/nearby/b;->a:Lcom/yelp/android/ui/activities/nearby/ActivityNearby;

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    sget-object v5, Lcom/yelp/android/analytics/iris/IriSource;->Nearby:Lcom/yelp/android/analytics/iris/IriSource;

    invoke-static {v2, v0, v3, v4, v5}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/analytics/iris/IriSource;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->startActivity(Landroid/content/Intent;)V

    .line 124
    return-void
.end method
