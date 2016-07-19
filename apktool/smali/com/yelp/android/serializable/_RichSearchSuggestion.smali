.class abstract Lcom/yelp/android/serializable/_RichSearchSuggestion;
.super Ljava/lang/Object;
.source "_RichSearchSuggestion.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected c:Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

.field protected d:Lcom/yelp/android/serializable/PlatformRSSTermMap;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:Ljava/lang/String;

.field protected i:Ljava/lang/String;

.field protected j:Ljava/lang/String;

.field protected k:Ljava/lang/String;

.field protected l:Lcom/yelp/android/serializable/YelpBusiness;

.field protected m:Z

.field protected n:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 180
    const-class v0, Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    iput-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->c:Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    .line 182
    const-class v0, Lcom/yelp/android/serializable/PlatformRSSTermMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PlatformRSSTermMap;

    iput-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->d:Lcom/yelp/android/serializable/PlatformRSSTermMap;

    .line 183
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->e:Ljava/lang/String;

    .line 184
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->f:Ljava/lang/String;

    .line 185
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->g:Ljava/lang/String;

    .line 186
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->h:Ljava/lang/String;

    .line 187
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->i:Ljava/lang/String;

    .line 188
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->j:Ljava/lang/String;

    .line 189
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->k:Ljava/lang/String;

    .line 190
    const-class v0, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->l:Lcom/yelp/android/serializable/YelpBusiness;

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 192
    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->m:Z

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->n:I

    .line 194
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
    .line 197
    const-string/jumbo v0, "user_delivery_address"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    sget-object v0, Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "user_delivery_address"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    iput-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->c:Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    .line 202
    :cond_0
    const-string/jumbo v0, "terms_map"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 203
    sget-object v0, Lcom/yelp/android/serializable/PlatformRSSTermMap;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "terms_map"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PlatformRSSTermMap;

    iput-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->d:Lcom/yelp/android/serializable/PlatformRSSTermMap;

    .line 205
    :cond_1
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 206
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->e:Ljava/lang/String;

    .line 208
    :cond_2
    const-string/jumbo v0, "term"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 209
    const-string/jumbo v0, "term"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->f:Ljava/lang/String;

    .line 211
    :cond_3
    const-string/jumbo v0, "description"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 212
    const-string/jumbo v0, "description"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->g:Ljava/lang/String;

    .line 214
    :cond_4
    const-string/jumbo v0, "image_path"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 215
    const-string/jumbo v0, "image_path"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->h:Ljava/lang/String;

    .line 217
    :cond_5
    const-string/jumbo v0, "image_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 218
    const-string/jumbo v0, "image_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->i:Ljava/lang/String;

    .line 220
    :cond_6
    const-string/jumbo v0, "alias"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 221
    const-string/jumbo v0, "alias"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->j:Ljava/lang/String;

    .line 223
    :cond_7
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 224
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->k:Ljava/lang/String;

    .line 226
    :cond_8
    const-string/jumbo v0, "business"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 227
    sget-object v0, Lcom/yelp/android/serializable/YelpBusiness;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "business"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->l:Lcom/yelp/android/serializable/YelpBusiness;

    .line 229
    :cond_9
    const-string/jumbo v0, "is_new"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->m:Z

    .line 230
    const-string/jumbo v0, "icon_resource"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->n:I

    .line 231
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->m:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->e:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public e()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 234
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 235
    iget-object v1, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->c:Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    if-eqz v1, :cond_0

    .line 236
    const-string/jumbo v1, "user_delivery_address"

    iget-object v2, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->c:Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->d:Lcom/yelp/android/serializable/PlatformRSSTermMap;

    if-eqz v1, :cond_1

    .line 239
    const-string/jumbo v1, "terms_map"

    iget-object v2, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->d:Lcom/yelp/android/serializable/PlatformRSSTermMap;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/PlatformRSSTermMap;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->e:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 242
    const-string/jumbo v1, "type"

    iget-object v2, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->f:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 245
    const-string/jumbo v1, "term"

    iget-object v2, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    :cond_3
    iget-object v1, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->g:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 248
    const-string/jumbo v1, "description"

    iget-object v2, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    :cond_4
    iget-object v1, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->h:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 251
    const-string/jumbo v1, "image_path"

    iget-object v2, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    :cond_5
    iget-object v1, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->i:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 254
    const-string/jumbo v1, "image_url"

    iget-object v2, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    :cond_6
    iget-object v1, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->j:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 257
    const-string/jumbo v1, "alias"

    iget-object v2, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    :cond_7
    iget-object v1, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->k:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 260
    const-string/jumbo v1, "title"

    iget-object v2, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    :cond_8
    iget-object v1, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->l:Lcom/yelp/android/serializable/YelpBusiness;

    if-eqz v1, :cond_9

    .line 263
    const-string/jumbo v1, "business"

    iget-object v2, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->l:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->E()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    :cond_9
    const-string/jumbo v1, "is_new"

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->m:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 266
    const-string/jumbo v1, "icon_resource"

    iget v2, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->n:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 267
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 64
    if-nez p1, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v0

    .line 68
    :cond_1
    if-ne p1, p0, :cond_2

    .line 69
    const/4 v0, 0x1

    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 76
    check-cast p1, Lcom/yelp/android/serializable/_RichSearchSuggestion;

    .line 78
    new-instance v0, Lcom/yelp/android/dc/b;

    invoke-direct {v0}, Lcom/yelp/android/dc/b;-><init>()V

    iget-object v1, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->c:Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    iget-object v2, p1, Lcom/yelp/android/serializable/_RichSearchSuggestion;->c:Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->d:Lcom/yelp/android/serializable/PlatformRSSTermMap;

    iget-object v2, p1, Lcom/yelp/android/serializable/_RichSearchSuggestion;->d:Lcom/yelp/android/serializable/PlatformRSSTermMap;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/_RichSearchSuggestion;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->f:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/_RichSearchSuggestion;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->g:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/_RichSearchSuggestion;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->h:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/_RichSearchSuggestion;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->i:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/_RichSearchSuggestion;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->j:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/_RichSearchSuggestion;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->k:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/_RichSearchSuggestion;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->l:Lcom/yelp/android/serializable/YelpBusiness;

    iget-object v2, p1, Lcom/yelp/android/serializable/_RichSearchSuggestion;->l:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->m:Z

    iget-boolean v2, p1, Lcom/yelp/android/serializable/_RichSearchSuggestion;->m:Z

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(ZZ)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->n:I

    iget v2, p1, Lcom/yelp/android/serializable/_RichSearchSuggestion;->n:I

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(II)Lcom/yelp/android/dc/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dc/b;->a()Z

    move-result v0

    goto :goto_0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->n:I

    return v0
.end method

.method public g()Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->l:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->k:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 96
    new-instance v0, Lcom/yelp/android/dc/c;

    invoke-direct {v0}, Lcom/yelp/android/dc/c;-><init>()V

    iget-object v1, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->c:Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->d:Lcom/yelp/android/serializable/PlatformRSSTermMap;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->l:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->m:Z

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Z)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->n:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(I)Lcom/yelp/android/dc/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dc/c;->a()I

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->j:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->i:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->h:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->g:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->f:Ljava/lang/String;

    return-object v0
.end method

.method public n()Lcom/yelp/android/serializable/PlatformRSSTermMap;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->d:Lcom/yelp/android/serializable/PlatformRSSTermMap;

    return-object v0
.end method

.method public o()Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->c:Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 165
    iget-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->c:Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 166
    iget-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->d:Lcom/yelp/android/serializable/PlatformRSSTermMap;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 167
    iget-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 168
    iget-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 169
    iget-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 170
    iget-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 171
    iget-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 172
    iget-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 173
    iget-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 174
    iget-object v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->l:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 175
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->m:Z

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 176
    iget v0, p0, Lcom/yelp/android/serializable/_RichSearchSuggestion;->n:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    return-void
.end method
