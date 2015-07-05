.class Lcom/yelp/android/ui/activities/search/t;
.super Ljava/lang/Object;
.source "SearchBusinessesByMap.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/support/o;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/t;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .prologue
    .line 436
    if-eqz p1, :cond_0

    .line 437
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/t;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchUtils;->a(Landroid/app/Activity;)V

    .line 439
    :cond_0
    return-void
.end method

.method public k_()V
    .locals 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/t;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/t;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a(Landroid/content/Intent;)V

    .line 444
    return-void
.end method
