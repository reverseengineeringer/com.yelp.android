.class public Lcom/yelp/android/appdata/webrequests/t;
.super Lcom/yelp/android/appdata/webrequests/y;
.source "BusinessAddRequest.java"


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Ljava/lang/CharSequence;Landroid/location/Address;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
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
    .line 19
    const-string/jumbo v0, "business/add"

    invoke-direct {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/y;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 20
    invoke-virtual {p0, p2}, Lcom/yelp/android/appdata/webrequests/t;->d(Ljava/lang/CharSequence;)V

    .line 21
    invoke-virtual {p0, p3, p4}, Lcom/yelp/android/appdata/webrequests/t;->a(Landroid/location/Address;Z)V

    .line 22
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    invoke-super {p0, p1}, Lcom/yelp/android/appdata/webrequests/y;->a(Ljava/lang/CharSequence;)V

    .line 61
    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    invoke-super {p0, p1}, Lcom/yelp/android/appdata/webrequests/y;->a(Ljava/lang/String;)V

    .line 35
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
    .line 97
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    invoke-super {p0, p1}, Lcom/yelp/android/appdata/webrequests/y;->a(Ljava/util/Collection;)V

    .line 100
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 71
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-super {p0, p1}, Lcom/yelp/android/appdata/webrequests/y;->b(Ljava/lang/CharSequence;)V

    .line 74
    :cond_0
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    invoke-super {p0, p1}, Lcom/yelp/android/appdata/webrequests/y;->b(Ljava/lang/String;)V

    .line 48
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 84
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    invoke-super {p0, p1}, Lcom/yelp/android/appdata/webrequests/y;->c(Ljava/lang/CharSequence;)V

    .line 87
    :cond_0
    return-void
.end method
