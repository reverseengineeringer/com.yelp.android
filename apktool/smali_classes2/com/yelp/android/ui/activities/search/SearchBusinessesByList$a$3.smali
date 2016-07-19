.class Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$3;
.super Ljava/lang/Object;
.source "SearchBusinessesByList.java"

# interfaces
.implements Lcom/yelp/android/ui/dialogs/ListDialogFragment$a;


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
    .line 1861
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$3;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 1864
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$3;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->a(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;)Lcom/yelp/android/appdata/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->k()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1865
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$3;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->d(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$3;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->a(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;)Lcom/yelp/android/appdata/o;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/yelp/android/ui/activities/search/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/appdata/o;)V

    .line 1867
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$3;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->d(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$3;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->a(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;)Lcom/yelp/android/appdata/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/o;->h()Lcom/yelp/android/appdata/webrequests/eo;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/yelp/android/appdata/webrequests/eo;->a(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/eo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/eo;->a()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/SearchRequest;)Landroid/content/Intent;

    move-result-object v1

    .line 1874
    const/high16 v0, 0x10000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1875
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$3;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->d(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Intent;)V

    .line 1877
    :cond_0
    return-void
.end method
