.class Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$11;
.super Ljava/lang/Object;
.source "SearchBusinessesByMap.java"

# interfaces
.implements Lcom/yelp/android/ui/dialogs/ListDialogFragment$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;
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
    .line 712
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$11;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 715
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$11;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$11;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->k()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$11;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$11;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/o;

    invoke-static {v0, p1, v1}, Lcom/yelp/android/ui/activities/search/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/appdata/o;)V

    .line 718
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$11;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$11;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a:Lcom/yelp/android/appdata/o;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/o;->h()Lcom/yelp/android/appdata/webrequests/eo;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/yelp/android/appdata/webrequests/eo;->a(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/eo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;Lcom/yelp/android/appdata/webrequests/eo;)V

    .line 720
    :cond_0
    return-void
.end method
