.class Lcom/yelp/android/ui/activities/search/p;
.super Ljava/lang/Object;
.source "SearchBusinessesByList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

.field final synthetic b:Lcom/yelp/android/ui/activities/search/l;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/l;Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;)V
    .locals 0

    .prologue
    .line 1055
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/p;->b:Lcom/yelp/android/ui/activities/search/l;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/search/p;->a:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1059
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1060
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/p;->b:Lcom/yelp/android/ui/activities/search/l;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/l;->a(Lcom/yelp/android/ui/activities/search/l;)Lcom/yelp/android/appdata/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ap;->i()Lcom/yelp/android/appdata/webrequests/fv;

    move-result-object v2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/p;->a:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

    sget-object v3, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;->FOLDED:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/yelp/android/appdata/webrequests/fv;->a(Z)Lcom/yelp/android/appdata/webrequests/fv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/fv;->a()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v0

    .line 1063
    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/SearchRequest;)Landroid/content/Intent;

    move-result-object v0

    .line 1064
    const/high16 v2, 0x10000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1065
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1066
    return-void

    .line 1060
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
