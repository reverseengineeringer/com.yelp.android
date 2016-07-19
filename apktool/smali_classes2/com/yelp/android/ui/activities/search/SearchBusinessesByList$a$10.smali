.class Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$10;
.super Ljava/lang/Object;
.source "SearchBusinessesByList.java"

# interfaces
.implements Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;)V
    .locals 0

    .prologue
    .line 1766
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$10;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/PlatformFilter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1772
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$10;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->a(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;)Lcom/yelp/android/appdata/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->o()Lcom/yelp/android/appdata/webrequests/SearchRequest;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yelp/android/serializable/PlatformFilter;->a(Lcom/yelp/android/appdata/webrequests/SearchRequest;)V

    .line 1773
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$10;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->d(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$10;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->d(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1, p1, p2, p3}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Context;Lcom/yelp/android/serializable/PlatformFilter;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->startActivity(Landroid/content/Intent;)V

    .line 1785
    sget-object v0, Lcom/yelp/android/analytics/GADimensions;->MOBILE_VERTICAL_SEARCH_ENTRY:Lcom/yelp/android/analytics/GADimensions;

    const-string/jumbo v1, "promoted_filter"

    iput-object v1, v0, Lcom/yelp/android/analytics/GADimensions;->value:Ljava/lang/String;

    .line 1786
    sget-object v0, Lcom/yelp/android/analytics/GADimensions;->MOBILE_VERTICAL_SEARCH_TYPE:Lcom/yelp/android/analytics/GADimensions;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PlatformFilter;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/analytics/GADimensions;->value:Ljava/lang/String;

    .line 1788
    return-void
.end method
