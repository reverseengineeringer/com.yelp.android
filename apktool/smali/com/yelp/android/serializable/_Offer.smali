.class abstract Lcom/yelp/android/serializable/_Offer;
.super Ljava/lang/Object;
.source "_Offer.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected b:Ljava/util/Date;

.field protected c:Ljava/util/Date;

.field protected d:Lcom/yelp/android/serializable/OfferRedemption;

.field protected e:Lcom/yelp/android/serializable/Offer$OfferState;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:Ljava/lang/String;

.field protected i:Lcom/yelp/android/serializable/YelpBusiness;

.field protected j:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const-wide/32 v4, -0x80000000

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 153
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 154
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/yelp/android/serializable/_Offer;->b:Ljava/util/Date;

    .line 156
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 157
    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    .line 158
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/yelp/android/serializable/_Offer;->c:Ljava/util/Date;

    .line 160
    :cond_1
    const-class v0, Lcom/yelp/android/serializable/OfferRedemption;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/OfferRedemption;

    iput-object v0, p0, Lcom/yelp/android/serializable/_Offer;->d:Lcom/yelp/android/serializable/OfferRedemption;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Offer$OfferState;

    iput-object v0, p0, Lcom/yelp/android/serializable/_Offer;->e:Lcom/yelp/android/serializable/Offer$OfferState;

    .line 162
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/_Offer;->f:Ljava/lang/String;

    .line 163
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/_Offer;->g:Ljava/lang/String;

    .line 164
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/_Offer;->h:Ljava/lang/String;

    .line 165
    const-class v0, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/serializable/_Offer;->i:Lcom/yelp/android/serializable/YelpBusiness;

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_Offer;->j:I

    .line 167
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 170
    const-string/jumbo v0, "time_awarded"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    const-string/jumbo v0, "time_awarded"

    invoke-static {p1, v0}, Lcom/yelp/parcelgen/JsonUtil;->parseTimestamp(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Offer;->b:Ljava/util/Date;

    .line 173
    :cond_0
    const-string/jumbo v0, "time_expires"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    const-string/jumbo v0, "time_expires"

    invoke-static {p1, v0}, Lcom/yelp/parcelgen/JsonUtil;->parseTimestamp(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Offer;->c:Ljava/util/Date;

    .line 176
    :cond_1
    const-string/jumbo v0, "redemption"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 177
    sget-object v0, Lcom/yelp/android/serializable/OfferRedemption;->CREATOR:Lcom/yelp/android/serializable/a;

    const-string/jumbo v1, "redemption"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/a;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/OfferRedemption;

    iput-object v0, p0, Lcom/yelp/android/serializable/_Offer;->d:Lcom/yelp/android/serializable/OfferRedemption;

    .line 179
    :cond_2
    const-string/jumbo v0, "offer_text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 180
    const-string/jumbo v0, "offer_text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Offer;->f:Ljava/lang/String;

    .line 182
    :cond_3
    const-string/jumbo v0, "promo_text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 183
    const-string/jumbo v0, "promo_text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Offer;->g:Ljava/lang/String;

    .line 185
    :cond_4
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 186
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Offer;->h:Ljava/lang/String;

    .line 188
    :cond_5
    const-string/jumbo v0, "business"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 189
    sget-object v0, Lcom/yelp/android/serializable/YelpBusiness;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "business"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/serializable/_Offer;->i:Lcom/yelp/android/serializable/YelpBusiness;

    .line 191
    :cond_6
    const-string/jumbo v0, "check_ins_remaining"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_Offer;->j:I

    .line 192
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 57
    if-nez p1, :cond_1

    .line 71
    :cond_0
    :goto_0
    return v0

    .line 61
    :cond_1
    if-ne p1, p0, :cond_2

    .line 62
    const/4 v0, 0x1

    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 69
    check-cast p1, Lcom/yelp/android/serializable/_Offer;

    .line 71
    new-instance v0, Lcom/yelp/android/dc/b;

    invoke-direct {v0}, Lcom/yelp/android/dc/b;-><init>()V

    iget-object v1, p0, Lcom/yelp/android/serializable/_Offer;->b:Ljava/util/Date;

    iget-object v2, p1, Lcom/yelp/android/serializable/_Offer;->b:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_Offer;->c:Ljava/util/Date;

    iget-object v2, p1, Lcom/yelp/android/serializable/_Offer;->c:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_Offer;->d:Lcom/yelp/android/serializable/OfferRedemption;

    iget-object v2, p1, Lcom/yelp/android/serializable/_Offer;->d:Lcom/yelp/android/serializable/OfferRedemption;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_Offer;->e:Lcom/yelp/android/serializable/Offer$OfferState;

    iget-object v2, p1, Lcom/yelp/android/serializable/_Offer;->e:Lcom/yelp/android/serializable/Offer$OfferState;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_Offer;->f:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/_Offer;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_Offer;->g:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/_Offer;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_Offer;->h:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/_Offer;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_Offer;->i:Lcom/yelp/android/serializable/YelpBusiness;

    iget-object v2, p1, Lcom/yelp/android/serializable/_Offer;->i:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/serializable/_Offer;->j:I

    iget v2, p1, Lcom/yelp/android/serializable/_Offer;->j:I

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(II)Lcom/yelp/android/dc/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dc/b;->a()Z

    move-result v0

    goto :goto_0
.end method

.method public f()Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x3e8

    .line 195
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 196
    iget-object v1, p0, Lcom/yelp/android/serializable/_Offer;->b:Ljava/util/Date;

    if-eqz v1, :cond_0

    .line 197
    const-string/jumbo v1, "time_awarded"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Offer;->b:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/serializable/_Offer;->c:Ljava/util/Date;

    if-eqz v1, :cond_1

    .line 200
    const-string/jumbo v1, "time_expires"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Offer;->c:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 202
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/serializable/_Offer;->d:Lcom/yelp/android/serializable/OfferRedemption;

    if-eqz v1, :cond_2

    .line 203
    const-string/jumbo v1, "redemption"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Offer;->d:Lcom/yelp/android/serializable/OfferRedemption;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/OfferRedemption;->b()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/serializable/_Offer;->f:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 206
    const-string/jumbo v1, "offer_text"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Offer;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 208
    :cond_3
    iget-object v1, p0, Lcom/yelp/android/serializable/_Offer;->g:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 209
    const-string/jumbo v1, "promo_text"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Offer;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    :cond_4
    iget-object v1, p0, Lcom/yelp/android/serializable/_Offer;->h:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 212
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Offer;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    :cond_5
    iget-object v1, p0, Lcom/yelp/android/serializable/_Offer;->i:Lcom/yelp/android/serializable/YelpBusiness;

    if-eqz v1, :cond_6

    .line 215
    const-string/jumbo v1, "business"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Offer;->i:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->E()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    :cond_6
    const-string/jumbo v1, "check_ins_remaining"

    iget v2, p0, Lcom/yelp/android/serializable/_Offer;->j:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 218
    return-object v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/yelp/android/serializable/_Offer;->j:I

    return v0
.end method

.method public h()Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/yelp/android/serializable/_Offer;->i:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 86
    new-instance v0, Lcom/yelp/android/dc/c;

    invoke-direct {v0}, Lcom/yelp/android/dc/c;-><init>()V

    iget-object v1, p0, Lcom/yelp/android/serializable/_Offer;->b:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_Offer;->c:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_Offer;->d:Lcom/yelp/android/serializable/OfferRedemption;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_Offer;->e:Lcom/yelp/android/serializable/Offer$OfferState;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_Offer;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_Offer;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_Offer;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_Offer;->i:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/serializable/_Offer;->j:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(I)Lcom/yelp/android/dc/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dc/c;->a()I

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/yelp/android/serializable/_Offer;->h:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/yelp/android/serializable/_Offer;->g:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/yelp/android/serializable/_Offer;->f:Ljava/lang/String;

    return-object v0
.end method

.method public l()Lcom/yelp/android/serializable/Offer$OfferState;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/yelp/android/serializable/_Offer;->e:Lcom/yelp/android/serializable/Offer$OfferState;

    return-object v0
.end method

.method public m()Lcom/yelp/android/serializable/OfferRedemption;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/yelp/android/serializable/_Offer;->d:Lcom/yelp/android/serializable/OfferRedemption;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .prologue
    const-wide/32 v2, -0x80000000

    const/4 v4, 0x0

    .line 140
    iget-object v0, p0, Lcom/yelp/android/serializable/_Offer;->b:Ljava/util/Date;

    if-nez v0, :cond_0

    move-wide v0, v2

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 141
    iget-object v0, p0, Lcom/yelp/android/serializable/_Offer;->c:Ljava/util/Date;

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 142
    iget-object v0, p0, Lcom/yelp/android/serializable/_Offer;->d:Lcom/yelp/android/serializable/OfferRedemption;

    invoke-virtual {p1, v0, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 143
    iget-object v0, p0, Lcom/yelp/android/serializable/_Offer;->e:Lcom/yelp/android/serializable/Offer$OfferState;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 144
    iget-object v0, p0, Lcom/yelp/android/serializable/_Offer;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 145
    iget-object v0, p0, Lcom/yelp/android/serializable/_Offer;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lcom/yelp/android/serializable/_Offer;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/yelp/android/serializable/_Offer;->i:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p1, v0, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 148
    iget v0, p0, Lcom/yelp/android/serializable/_Offer;->j:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/_Offer;->b:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/serializable/_Offer;->c:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto :goto_1
.end method
