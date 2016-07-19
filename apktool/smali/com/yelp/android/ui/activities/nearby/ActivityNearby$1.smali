.class Lcom/yelp/android/ui/activities/nearby/ActivityNearby$1;
.super Ljava/lang/Object;
.source "ActivityNearby.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/nearby/ActivityNearby;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/nearby/ActivityNearby;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/ActivityNearby$1;->a:Lcom/yelp/android/ui/activities/nearby/ActivityNearby;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 122
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->SearchBar:Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v1, Lcom/yelp/android/analytics/iris/IriSource;->Nearby:Lcom/yelp/android/analytics/iris/IriSource;

    invoke-virtual {v1}, Lcom/yelp/android/analytics/iris/IriSource;->getMapWithParameter()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 124
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ActivityNearby$1;->a:Lcom/yelp/android/ui/activities/nearby/ActivityNearby;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070231

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 127
    iget-object v6, p0, Lcom/yelp/android/ui/activities/nearby/ActivityNearby$1;->a:Lcom/yelp/android/ui/activities/nearby/ActivityNearby;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ActivityNearby$1;->a:Lcom/yelp/android/ui/activities/nearby/ActivityNearby;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    sget-object v4, Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;->SEARCH:Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;

    sget-object v5, Lcom/yelp/android/analytics/iris/IriSource;->Nearby:Lcom/yelp/android/analytics/iris/IriSource;

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;Lcom/yelp/android/analytics/iris/IriSource;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->startActivity(Landroid/content/Intent;)V

    .line 136
    return-void
.end method
