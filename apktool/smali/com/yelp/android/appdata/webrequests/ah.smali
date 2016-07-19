.class public Lcom/yelp/android/appdata/webrequests/ah;
.super Lcom/yelp/android/appdata/webrequests/y;
.source "BusinessUpdateRequest.java"


# instance fields
.field private final g:Lcom/yelp/android/serializable/YelpBusiness;

.field private final h:Landroid/location/Address;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    const-string/jumbo v0, "business/update"

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/y;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 48
    iput-object v1, p0, Lcom/yelp/android/appdata/webrequests/ah;->g:Lcom/yelp/android/serializable/YelpBusiness;

    .line 49
    iput-object v1, p0, Lcom/yelp/android/appdata/webrequests/ah;->h:Landroid/location/Address;

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Lcom/yelp/android/serializable/YelpBusiness;ZZ)V
    .locals 2
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
            "Lcom/yelp/android/serializable/YelpBusiness;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 27
    const-string/jumbo v0, "business/update"

    invoke-direct {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/y;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 28
    const-string/jumbo v0, "business_id"

    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/ah;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->r()Z

    move-result v0

    if-eq v0, p3, :cond_0

    .line 30
    const-string/jumbo v0, "is_closed"

    invoke-virtual {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/ah;->b(Ljava/lang/String;Z)V

    .line 31
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ah;->a:Ljava/util/Collection;

    const-string/jumbo v1, "is_closed"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_0
    if-eqz p4, :cond_1

    .line 34
    const-string/jumbo v0, "is_duplicate"

    invoke-virtual {p0, v0, p4}, Lcom/yelp/android/appdata/webrequests/ah;->b(Ljava/lang/String;Z)V

    .line 36
    :cond_1
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/ah;->g:Lcom/yelp/android/serializable/YelpBusiness;

    .line 37
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->f()Landroid/location/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/ah;->h:Landroid/location/Address;

    .line 38
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/webrequests/YelpException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-super {p0, p1}, Lcom/yelp/android/appdata/webrequests/y;->a(Lorg/json/JSONObject;)Landroid/util/Pair;

    move-result-object v0

    .line 164
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 165
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/ah;->g:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 167
    :cond_0
    return-object v0
.end method

.method protected a(D)V
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ah;->g:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->Q()D

    move-result-wide v0

    cmpl-double v0, v0, p1

    if-eqz v0, :cond_0

    .line 85
    invoke-super {p0, p1, p2}, Lcom/yelp/android/appdata/webrequests/y;->a(D)V

    .line 87
    :cond_0
    return-void
.end method

.method protected a(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 54
    add-int/lit8 v0, p1, -0x1

    .line 55
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/ah;->h:Landroid/location/Address;

    invoke-virtual {v1}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v1

    if-lt v1, v0, :cond_0

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/ah;->h:Landroid/location/Address;

    invoke-virtual {v1, v0}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/yelp/android/appdata/webrequests/y;->a(ILjava/lang/String;)V

    .line 59
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ah;->g:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->as()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    invoke-super {p0, p1}, Lcom/yelp/android/appdata/webrequests/y;->a(Ljava/lang/CharSequence;)V

    .line 120
    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ah;->g:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->av()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    invoke-super {p0, p1}, Lcom/yelp/android/appdata/webrequests/y;->a(Ljava/lang/String;)V

    .line 73
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
    .line 63
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ah;->g:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aV()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    invoke-super {p0, p1}, Lcom/yelp/android/appdata/webrequests/y;->a(Ljava/util/Collection;)V

    .line 66
    :cond_0
    return-void
.end method

.method public synthetic b(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/webrequests/YelpException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/ah;->a(Lorg/json/JSONObject;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected b(D)V
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ah;->g:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->R()D

    move-result-wide v0

    cmpl-double v0, v0, p1

    if-eqz v0, :cond_0

    .line 92
    invoke-super {p0, p1, p2}, Lcom/yelp/android/appdata/webrequests/y;->b(D)V

    .line 94
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ah;->g:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    invoke-super {p0, p1}, Lcom/yelp/android/appdata/webrequests/y;->b(Ljava/lang/CharSequence;)V

    .line 139
    :cond_0
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ah;->g:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aw()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-super {p0, p1}, Lcom/yelp/android/appdata/webrequests/y;->b(Ljava/lang/String;)V

    .line 80
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ah;->g:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    invoke-super {p0, p1}, Lcom/yelp/android/appdata/webrequests/y;->c(Ljava/lang/CharSequence;)V

    .line 152
    :cond_0
    return-void
.end method

.method public d(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ah;->g:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aq()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    invoke-super {p0, p1}, Lcom/yelp/android/appdata/webrequests/y;->d(Ljava/lang/CharSequence;)V

    .line 107
    :cond_0
    return-void
.end method
