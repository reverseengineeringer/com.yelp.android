.class abstract Lcom/yelp/android/serializable/_PlatformSearchAction;
.super Ljava/lang/Object;
.source "_PlatformSearchAction.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Z

.field protected h:[I

.field protected i:[I

.field protected j:[I

.field protected k:[I

.field protected l:[I

.field protected m:[I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->a:Ljava/util/List;

    .line 194
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->b:Ljava/lang/String;

    .line 195
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->c:Ljava/lang/String;

    .line 196
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->d:Ljava/lang/String;

    .line 197
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->e:Ljava/lang/String;

    .line 198
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->f:Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 200
    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->g:Z

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->h:[I

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->i:[I

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->j:[I

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->k:[I

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->l:[I

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->m:[I

    .line 212
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 215
    const-string/jumbo v1, "platform_attributes"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 216
    const-string/jumbo v1, "platform_attributes"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/parcelgen/JsonUtil;->getStringList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->a:Ljava/util/List;

    .line 220
    :goto_0
    const-string/jumbo v1, "type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    const-string/jumbo v1, "type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->b:Ljava/lang/String;

    .line 223
    :cond_0
    const-string/jumbo v1, "text"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 224
    const-string/jumbo v1, "text"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->c:Ljava/lang/String;

    .line 226
    :cond_1
    const-string/jumbo v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 227
    const-string/jumbo v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->d:Ljava/lang/String;

    .line 229
    :cond_2
    const-string/jumbo v1, "biz_action_text"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 230
    const-string/jumbo v1, "biz_action_text"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->e:Ljava/lang/String;

    .line 232
    :cond_3
    const-string/jumbo v1, "supported_vertical_types"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 233
    const-string/jumbo v1, "supported_vertical_types"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->f:Ljava/lang/String;

    .line 235
    :cond_4
    const-string/jumbo v1, "is_disabled"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->g:Z

    .line 236
    const-string/jumbo v1, "text_color"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 237
    const-string/jumbo v1, "text_color"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 238
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 239
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->h:[I

    move v1, v0

    .line 240
    :goto_1
    if-ge v1, v3, :cond_6

    .line 241
    iget-object v4, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->h:[I

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    aput v5, v4, v1

    .line 240
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 218
    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->a:Ljava/util/List;

    goto/16 :goto_0

    .line 244
    :cond_6
    const-string/jumbo v1, "default_color_top"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 245
    const-string/jumbo v1, "default_color_top"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 246
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 247
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->i:[I

    move v1, v0

    .line 248
    :goto_2
    if-ge v1, v3, :cond_7

    .line 249
    iget-object v4, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->i:[I

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    aput v5, v4, v1

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 252
    :cond_7
    const-string/jumbo v1, "default_color_bottom"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 253
    const-string/jumbo v1, "default_color_bottom"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 254
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 255
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->j:[I

    move v1, v0

    .line 256
    :goto_3
    if-ge v1, v3, :cond_8

    .line 257
    iget-object v4, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->j:[I

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    aput v5, v4, v1

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 260
    :cond_8
    const-string/jumbo v1, "selected_color_top"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 261
    const-string/jumbo v1, "selected_color_top"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 262
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 263
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->k:[I

    move v1, v0

    .line 264
    :goto_4
    if-ge v1, v3, :cond_9

    .line 265
    iget-object v4, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->k:[I

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    aput v5, v4, v1

    .line 264
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 268
    :cond_9
    const-string/jumbo v1, "selected_color_bottom"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 269
    const-string/jumbo v1, "selected_color_bottom"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 270
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 271
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->l:[I

    move v1, v0

    .line 272
    :goto_5
    if-ge v1, v3, :cond_a

    .line 273
    iget-object v4, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->l:[I

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    aput v5, v4, v1

    .line 272
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 276
    :cond_a
    const-string/jumbo v1, "border_color"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 277
    const-string/jumbo v1, "border_color"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 278
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 279
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->m:[I

    .line 280
    :goto_6
    if-ge v0, v2, :cond_b

    .line 281
    iget-object v3, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->m:[I

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    aput v4, v3, v0

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 284
    :cond_b
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->g:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->e:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public e()[I
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->m:[I

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 70
    if-nez p1, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v0

    .line 74
    :cond_1
    if-ne p1, p0, :cond_2

    .line 75
    const/4 v0, 0x1

    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 82
    check-cast p1, Lcom/yelp/android/serializable/_PlatformSearchAction;

    .line 84
    new-instance v0, Lcom/yelp/android/dc/b;

    invoke-direct {v0}, Lcom/yelp/android/dc/b;-><init>()V

    iget-object v1, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->a:Ljava/util/List;

    iget-object v2, p1, Lcom/yelp/android/serializable/_PlatformSearchAction;->a:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/_PlatformSearchAction;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/_PlatformSearchAction;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/_PlatformSearchAction;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/_PlatformSearchAction;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->f:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/_PlatformSearchAction;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->g:Z

    iget-boolean v2, p1, Lcom/yelp/android/serializable/_PlatformSearchAction;->g:Z

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(ZZ)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->h:[I

    iget-object v2, p1, Lcom/yelp/android/serializable/_PlatformSearchAction;->h:[I

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a([I[I)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->i:[I

    iget-object v2, p1, Lcom/yelp/android/serializable/_PlatformSearchAction;->i:[I

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a([I[I)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->j:[I

    iget-object v2, p1, Lcom/yelp/android/serializable/_PlatformSearchAction;->j:[I

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a([I[I)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->k:[I

    iget-object v2, p1, Lcom/yelp/android/serializable/_PlatformSearchAction;->k:[I

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a([I[I)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->l:[I

    iget-object v2, p1, Lcom/yelp/android/serializable/_PlatformSearchAction;->l:[I

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a([I[I)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->m:[I

    iget-object v2, p1, Lcom/yelp/android/serializable/_PlatformSearchAction;->m:[I

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a([I[I)Lcom/yelp/android/dc/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dc/b;->a()Z

    move-result v0

    goto/16 :goto_0
.end method

.method public f()[I
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->l:[I

    return-object v0
.end method

.method public g()[I
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->k:[I

    return-object v0
.end method

.method public h()[I
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->j:[I

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 103
    new-instance v0, Lcom/yelp/android/dc/c;

    invoke-direct {v0}, Lcom/yelp/android/dc/c;-><init>()V

    iget-object v1, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->g:Z

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Z)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->h:[I

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a([I)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->i:[I

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a([I)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->j:[I

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a([I)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->k:[I

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a([I)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->l:[I

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a([I)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->m:[I

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a([I)Lcom/yelp/android/dc/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dc/c;->a()I

    move-result v0

    return v0
.end method

.method public i()[I
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->i:[I

    return-object v0
.end method

.method public j()[I
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->h:[I

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->c:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->f:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->d:Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->b:Ljava/lang/String;

    return-object v0
.end method

.method public q()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->a:Ljava/util/List;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->a:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 178
    iget-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 179
    iget-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 180
    iget-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 181
    iget-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 182
    iget-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 183
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->g:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 184
    iget-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->h:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 185
    iget-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->i:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 186
    iget-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->j:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 187
    iget-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->k:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 188
    iget-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->l:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 189
    iget-object v0, p0, Lcom/yelp/android/serializable/_PlatformSearchAction;->m:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 190
    return-void
.end method
