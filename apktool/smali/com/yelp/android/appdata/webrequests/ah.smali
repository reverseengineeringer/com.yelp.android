.class public Lcom/yelp/android/appdata/webrequests/ah;
.super Lcom/yelp/android/appdata/webrequests/w;
.source "BusinessUpdateRequest.java"


# instance fields
.field private final b:Lcom/yelp/android/serializable/YelpBusiness;

.field private final c:Landroid/location/Address;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    const-string/jumbo v0, "business/update"

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/w;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 41
    iput-object v1, p0, Lcom/yelp/android/appdata/webrequests/ah;->b:Lcom/yelp/android/serializable/YelpBusiness;

    .line 42
    iput-object v1, p0, Lcom/yelp/android/appdata/webrequests/ah;->c:Landroid/location/Address;

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/m;Lcom/yelp/android/serializable/YelpBusiness;Z)V
    .locals 2
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
            "Lcom/yelp/android/serializable/YelpBusiness;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 23
    const-string/jumbo v0, "business/update"

    invoke-direct {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/w;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 24
    const-string/jumbo v0, "business_id"

    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/ah;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->isClosed()Z

    move-result v0

    if-eq v0, p3, :cond_0

    .line 26
    const-string/jumbo v0, "is_closed"

    invoke-virtual {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/ah;->addPostParam(Ljava/lang/String;Z)V

    .line 27
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ah;->a:Ljava/util/Collection;

    const-string/jumbo v1, "is_closed"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_0
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/ah;->b:Lcom/yelp/android/serializable/YelpBusiness;

    .line 30
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->getAddress()Landroid/location/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/ah;->c:Landroid/location/Address;

    .line 31
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    invoke-super {p0, p1}, Lcom/yelp/android/appdata/webrequests/w;->a(Lorg/json/JSONObject;)Landroid/util/Pair;

    move-result-object v0

    .line 157
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 158
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/ah;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 160
    :cond_0
    return-object v0
.end method

.method protected a(D)V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ah;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, p1

    if-eqz v0, :cond_0

    .line 78
    invoke-super {p0, p1, p2}, Lcom/yelp/android/appdata/webrequests/w;->a(D)V

    .line 80
    :cond_0
    return-void
.end method

.method protected a(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 47
    add-int/lit8 v0, p1, -0x1

    .line 48
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/ah;->c:Landroid/location/Address;

    invoke-virtual {v1}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v1

    if-lt v1, v0, :cond_0

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/ah;->c:Landroid/location/Address;

    invoke-virtual {v1, v0}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/yelp/android/appdata/webrequests/w;->a(ILjava/lang/String;)V

    .line 52
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ah;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getLocalizedPhone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    invoke-super {p0, p1}, Lcom/yelp/android/appdata/webrequests/w;->a(Ljava/lang/CharSequence;)V

    .line 113
    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ah;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getLocality()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    invoke-super {p0, p1}, Lcom/yelp/android/appdata/webrequests/w;->a(Ljava/lang/String;)V

    .line 66
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
    .line 56
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ah;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getCategories()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    invoke-super {p0, p1}, Lcom/yelp/android/appdata/webrequests/w;->a(Ljava/util/Collection;)V

    .line 59
    :cond_0
    return-void
.end method

.method protected b(D)V
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ah;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, p1

    if-eqz v0, :cond_0

    .line 85
    invoke-super {p0, p1, p2}, Lcom/yelp/android/appdata/webrequests/w;->b(D)V

    .line 87
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ah;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getBestUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    invoke-super {p0, p1}, Lcom/yelp/android/appdata/webrequests/w;->b(Ljava/lang/CharSequence;)V

    .line 132
    :cond_0
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ah;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    invoke-super {p0, p1}, Lcom/yelp/android/appdata/webrequests/w;->b(Ljava/lang/String;)V

    .line 73
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ah;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getMenuUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    invoke-super {p0, p1}, Lcom/yelp/android/appdata/webrequests/w;->c(Ljava/lang/CharSequence;)V

    .line 145
    :cond_0
    return-void
.end method

.method public d(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ah;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    invoke-super {p0, p1}, Lcom/yelp/android/appdata/webrequests/w;->d(Ljava/lang/CharSequence;)V

    .line 100
    :cond_0
    return-void
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/ah;->a(Lorg/json/JSONObject;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method
