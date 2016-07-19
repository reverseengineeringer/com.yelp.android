.class Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$6;
.super Ljava/lang/Object;
.source "SearchBusinessesByList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->c(Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

.field final synthetic b:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;)V
    .locals 0

    .prologue
    .line 1386
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$6;->b:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$6;->a:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1390
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1391
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$6;->b:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->a(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;)Lcom/yelp/android/appdata/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->h()Lcom/yelp/android/appdata/webrequests/eo;

    move-result-object v2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$6;->a:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

    sget-object v3, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;->FOLDED:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/yelp/android/appdata/webrequests/eo;->a(Z)Lcom/yelp/android/appdata/webrequests/eo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/eo;->a()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v0

    .line 1396
    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/SearchRequest;)Landroid/content/Intent;

    move-result-object v0

    .line 1398
    const/high16 v2, 0x10000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1399
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1400
    return-void

    .line 1391
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
