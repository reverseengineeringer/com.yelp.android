.class public Lcom/yelp/android/appdata/webrequests/u;
.super Lcom/yelp/android/appdata/webrequests/w;
.source "BusinessAddRequest.java"


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/m;Ljava/lang/CharSequence;Landroid/location/Address;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;>;",
            "Ljava/lang/CharSequence;",
            "Landroid/location/Address;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 16
    const-string/jumbo v0, "business/add"

    invoke-direct {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/w;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 17
    invoke-virtual {p0, p2}, Lcom/yelp/android/appdata/webrequests/u;->d(Ljava/lang/CharSequence;)V

    .line 18
    invoke-virtual {p0, p3, p4}, Lcom/yelp/android/appdata/webrequests/u;->a(Landroid/location/Address;Z)V

    .line 19
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    invoke-super {p0, p1}, Lcom/yelp/android/appdata/webrequests/w;->a(Ljava/lang/CharSequence;)V

    .line 58
    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 29
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    invoke-super {p0, p1}, Lcom/yelp/android/appdata/webrequests/w;->a(Ljava/lang/String;)V

    .line 32
    :cond_0
    return-void
.end method

.method public a(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/yelp/android/serializable/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-super {p0, p1}, Lcom/yelp/android/appdata/webrequests/w;->a(Ljava/util/Collection;)V

    .line 97
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    invoke-super {p0, p1}, Lcom/yelp/android/appdata/webrequests/w;->b(Ljava/lang/CharSequence;)V

    .line 71
    :cond_0
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 42
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    invoke-super {p0, p1}, Lcom/yelp/android/appdata/webrequests/w;->b(Ljava/lang/String;)V

    .line 45
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 81
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    invoke-super {p0, p1}, Lcom/yelp/android/appdata/webrequests/w;->c(Ljava/lang/CharSequence;)V

    .line 84
    :cond_0
    return-void
.end method
