.class public abstract Lcom/yelp/android/appdata/webrequests/w;
.super Lcom/yelp/android/av/g;
.source "BusinessChangeRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/av/g",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/String;",
        "Lcom/yelp/android/serializable/YelpBusiness;",
        ">;>;"
    }
.end annotation


# instance fields
.field protected a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    invoke-direct {p0, v0, p1, p2}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 59
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/w;->a:Ljava/util/Collection;

    .line 60
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Landroid/util/Pair;
    .locals 3
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
    .line 304
    const-string/jumbo v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 305
    const/4 v0, 0x0

    .line 306
    const-string/jumbo v2, "business"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 307
    sget-object v0, Lcom/yelp/android/serializable/YelpBusiness;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v2, "business"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    .line 309
    :cond_0
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/w;->a:Ljava/util/Collection;

    return-object v0
.end method

.method protected a(D)V
    .locals 3

    .prologue
    .line 121
    const-string/jumbo v0, "longitude"

    invoke-virtual {p0, v0, p1, p2}, Lcom/yelp/android/appdata/webrequests/w;->addPostParam(Ljava/lang/String;D)V

    .line 122
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/w;->a:Ljava/util/Collection;

    const-string/jumbo v1, "longitude"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 123
    return-void
.end method

.method protected a(ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 146
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "address%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/w;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/w;->a:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 149
    return-void
.end method

.method public a(Landroid/location/Address;Z)V
    .locals 3

    .prologue
    .line 70
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 71
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/appdata/webrequests/w;->a(ILjava/lang/String;)V

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/webrequests/w;->a(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/webrequests/w;->b(Ljava/lang/String;)V

    .line 76
    if-eqz p2, :cond_1

    .line 77
    const-string/jumbo v0, "is_geocoded_address"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/w;->addPostParam(Ljava/lang/String;Z)V

    .line 78
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/w;->a:Ljava/util/Collection;

    const-string/jumbo v1, "is_geocoded_address"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_1
    invoke-virtual {p1}, Landroid/location/Address;->hasLatitude()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    invoke-virtual {p1}, Landroid/location/Address;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/w;->b(D)V

    .line 83
    :cond_2
    invoke-virtual {p1}, Landroid/location/Address;->hasLongitude()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 84
    invoke-virtual {p1}, Landroid/location/Address;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/w;->a(D)V

    .line 86
    :cond_3
    return-void
.end method

.method public a(Landroid/location/Location;)V
    .locals 4

    .prologue
    .line 211
    if-eqz p1, :cond_0

    .line 212
    const-string/jumbo v0, "user_latitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/yelp/android/appdata/webrequests/w;->addPostParam(Ljava/lang/String;D)V

    .line 213
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/w;->a:Ljava/util/Collection;

    const-string/jumbo v1, "user_latitude"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 214
    const-string/jumbo v0, "user_longitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/yelp/android/appdata/webrequests/w;->addPostParam(Ljava/lang/String;D)V

    .line 215
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/w;->a:Ljava/util/Collection;

    const-string/jumbo v1, "user_longitude"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 216
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    const-string/jumbo v0, "user_accuracy"

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Lcom/yelp/android/util/o;->d(D)D

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/yelp/android/appdata/webrequests/w;->addPostParam(Ljava/lang/String;D)V

    .line 219
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/w;->a:Ljava/util/Collection;

    const-string/jumbo v1, "user_accuracy"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 167
    const-string/jumbo v0, "phone"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/w;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/w;->a:Ljava/util/Collection;

    const-string/jumbo v1, "phone"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 169
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 97
    const-string/jumbo v0, "locality"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/w;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/w;->a:Ljava/util/Collection;

    const-string/jumbo v1, "locality"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method

.method public a(Ljava/util/Collection;)V
    .locals 3
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
    .line 243
    const-string/jumbo v0, "categories"

    const-string/jumbo v1, ","

    new-instance v2, Lcom/yelp/android/serializable/v;

    invoke-direct {v2}, Lcom/yelp/android/serializable/v;-><init>()V

    invoke-static {v1, p1, v2}, Lcom/yelp/android/util/StringUtils;->a(Ljava/lang/CharSequence;Ljava/lang/Iterable;Lcom/yelp/android/util/ag;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/w;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/w;->a:Ljava/util/Collection;

    const-string/jumbo v1, "categories"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 246
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yelp/android/serializable/YelpDetailedAddress;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 284
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 285
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 286
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 287
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/YelpDetailedAddress;

    .line 289
    :try_start_0
    const-string/jumbo v5, "address1"

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpDetailedAddress;->getAddress1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 290
    const-string/jumbo v5, "address2"

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpDetailedAddress;->getAddress2()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 291
    const-string/jumbo v5, "address3"

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpDetailedAddress;->getAddress3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 292
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 293
    :catch_0
    move-exception v0

    .line 294
    const-string/jumbo v1, "BusinessChangeRequest"

    const-string/jumbo v4, "Error serializing alternate addresses as JSON, dumping"

    invoke-static {v1, v4, v0}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 298
    :cond_0
    const-string/jumbo v0, "alternate_addresses"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/w;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method protected b(D)V
    .locals 3

    .prologue
    .line 133
    const-string/jumbo v0, "latitude"

    invoke-virtual {p0, v0, p1, p2}, Lcom/yelp/android/appdata/webrequests/w;->addPostParam(Ljava/lang/String;D)V

    .line 134
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/w;->a:Ljava/util/Collection;

    const-string/jumbo v1, "latitude"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 135
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 177
    const-string/jumbo v0, "url"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/w;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/w;->a:Ljava/util/Collection;

    const-string/jumbo v1, "url"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 179
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 109
    const-string/jumbo v0, "country"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/w;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/w;->a:Ljava/util/Collection;

    const-string/jumbo v1, "country"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 111
    return-void
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 187
    const-string/jumbo v0, "menu_url"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/w;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/w;->a:Ljava/util/Collection;

    const-string/jumbo v1, "menu_url"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 189
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 254
    const-string/jumbo v0, "alternate_names_ja_primary"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/w;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/w;->a:Ljava/util/Collection;

    const-string/jumbo v1, "alternate_names_ja_primary"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 256
    return-void
.end method

.method public d(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 157
    const-string/jumbo v0, "name"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/w;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/w;->a:Ljava/util/Collection;

    const-string/jumbo v1, "name"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 159
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 262
    const-string/jumbo v0, "alternate_names_en_primary"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/w;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/w;->a:Ljava/util/Collection;

    const-string/jumbo v1, "alternate_names_en_primary"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 264
    return-void
.end method

.method public final e(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 198
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    const-string/jumbo v0, "open_hours_description"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/w;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/w;->a:Ljava/util/Collection;

    const-string/jumbo v1, "open_hours_description"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 273
    const-string/jumbo v0, "alternate_names_ja_romanized"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/w;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/w;->a:Ljava/util/Collection;

    const-string/jumbo v1, "alternate_names_ja_romanized"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 275
    return-void
.end method

.method public final f(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 231
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    const-string/jumbo v0, "notes"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/w;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/w;->a:Ljava/util/Collection;

    const-string/jumbo v1, "notes"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_0
    return-void
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/w;->a(Lorg/json/JSONObject;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method
