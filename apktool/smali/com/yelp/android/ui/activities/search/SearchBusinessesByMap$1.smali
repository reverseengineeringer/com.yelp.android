.class Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$1;
.super Ljava/lang/Object;
.source "SearchBusinessesByMap.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$1;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$1;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$1;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$1;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)Lcom/yelp/android/ui/map/YelpMap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/map/YelpMap;->getViewableRegion()[D

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a([D)Lcom/yelp/android/appdata/webrequests/eo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;Lcom/yelp/android/appdata/webrequests/eo;)V

    .line 163
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$1;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->b(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 164
    return-void
.end method
