.class abstract Lcom/yelp/android/serializable/_ReservationSearchAction;
.super Ljava/lang/Object;
.source "_ReservationSearchAction.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected a:Ljava/util/Date;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Z

.field protected f:I

.field protected g:[I

.field protected h:[I

.field protected i:[I

.field protected j:[I

.field protected k:[I

.field protected l:[I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 184
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 185
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->a:Ljava/util/Date;

    .line 187
    :cond_0
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->b:Ljava/lang/String;

    .line 188
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->c:Ljava/lang/String;

    .line 189
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->d:Ljava/lang/String;

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 191
    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->e:Z

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->f:I

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->g:[I

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->h:[I

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->i:[I

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->j:[I

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->k:[I

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->l:[I

    .line 204
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

    .line 207
    const-string/jumbo v1, "time"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    const-string/jumbo v1, "time"

    invoke-static {p1, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseTimestamp(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->a:Ljava/util/Date;

    .line 210
    :cond_0
    const-string/jumbo v1, "type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 211
    const-string/jumbo v1, "type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->b:Ljava/lang/String;

    .line 213
    :cond_1
    const-string/jumbo v1, "text"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 214
    const-string/jumbo v1, "text"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->c:Ljava/lang/String;

    .line 216
    :cond_2
    const-string/jumbo v1, "biz_action_text"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 217
    const-string/jumbo v1, "biz_action_text"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->d:Ljava/lang/String;

    .line 219
    :cond_3
    const-string/jumbo v1, "is_disabled"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->e:Z

    .line 220
    const-string/jumbo v1, "party_size"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->f:I

    .line 221
    const-string/jumbo v1, "text_color"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 222
    const-string/jumbo v1, "text_color"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 223
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 224
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->g:[I

    move v1, v0

    .line 225
    :goto_0
    if-ge v1, v3, :cond_4

    .line 226
    iget-object v4, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->g:[I

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    aput v5, v4, v1

    .line 225
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 229
    :cond_4
    const-string/jumbo v1, "default_color_top"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 230
    const-string/jumbo v1, "default_color_top"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 231
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 232
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->h:[I

    move v1, v0

    .line 233
    :goto_1
    if-ge v1, v3, :cond_5

    .line 234
    iget-object v4, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->h:[I

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    aput v5, v4, v1

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 237
    :cond_5
    const-string/jumbo v1, "default_color_bottom"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 238
    const-string/jumbo v1, "default_color_bottom"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 239
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 240
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->i:[I

    move v1, v0

    .line 241
    :goto_2
    if-ge v1, v3, :cond_6

    .line 242
    iget-object v4, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->i:[I

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    aput v5, v4, v1

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 245
    :cond_6
    const-string/jumbo v1, "selected_color_top"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 246
    const-string/jumbo v1, "selected_color_top"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 247
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 248
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->j:[I

    move v1, v0

    .line 249
    :goto_3
    if-ge v1, v3, :cond_7

    .line 250
    iget-object v4, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->j:[I

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    aput v5, v4, v1

    .line 249
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 253
    :cond_7
    const-string/jumbo v1, "selected_color_bottom"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 254
    const-string/jumbo v1, "selected_color_bottom"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 255
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 256
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->k:[I

    move v1, v0

    .line 257
    :goto_4
    if-ge v1, v3, :cond_8

    .line 258
    iget-object v4, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->k:[I

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    aput v5, v4, v1

    .line 257
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 261
    :cond_8
    const-string/jumbo v1, "border_color"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 262
    const-string/jumbo v1, "border_color"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 263
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 264
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->l:[I

    .line 265
    :goto_5
    if-ge v0, v2, :cond_9

    .line 266
    iget-object v3, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->l:[I

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    aput v4, v3, v0

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 269
    :cond_9
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->e:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->d:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public e()[I
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->l:[I

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 67
    if-nez p1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v0

    .line 71
    :cond_1
    if-ne p1, p0, :cond_2

    .line 72
    const/4 v0, 0x1

    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 79
    check-cast p1, Lcom/yelp/android/serializable/_ReservationSearchAction;

    .line 81
    new-instance v0, Lcom/yelp/android/dc/b;

    invoke-direct {v0}, Lcom/yelp/android/dc/b;-><init>()V

    iget-object v1, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->a:Ljava/util/Date;

    iget-object v2, p1, Lcom/yelp/android/serializable/_ReservationSearchAction;->a:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/_ReservationSearchAction;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/_ReservationSearchAction;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/_ReservationSearchAction;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->e:Z

    iget-boolean v2, p1, Lcom/yelp/android/serializable/_ReservationSearchAction;->e:Z

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(ZZ)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->f:I

    iget v2, p1, Lcom/yelp/android/serializable/_ReservationSearchAction;->f:I

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(II)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->g:[I

    iget-object v2, p1, Lcom/yelp/android/serializable/_ReservationSearchAction;->g:[I

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a([I[I)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->h:[I

    iget-object v2, p1, Lcom/yelp/android/serializable/_ReservationSearchAction;->h:[I

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a([I[I)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->i:[I

    iget-object v2, p1, Lcom/yelp/android/serializable/_ReservationSearchAction;->i:[I

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a([I[I)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->j:[I

    iget-object v2, p1, Lcom/yelp/android/serializable/_ReservationSearchAction;->j:[I

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a([I[I)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->k:[I

    iget-object v2, p1, Lcom/yelp/android/serializable/_ReservationSearchAction;->k:[I

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a([I[I)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->l:[I

    iget-object v2, p1, Lcom/yelp/android/serializable/_ReservationSearchAction;->l:[I

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a([I[I)Lcom/yelp/android/dc/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dc/b;->a()Z

    move-result v0

    goto :goto_0
.end method

.method public f()[I
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->k:[I

    return-object v0
.end method

.method public g()[I
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->j:[I

    return-object v0
.end method

.method public h()[I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->i:[I

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 99
    new-instance v0, Lcom/yelp/android/dc/c;

    invoke-direct {v0}, Lcom/yelp/android/dc/c;-><init>()V

    iget-object v1, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->a:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->e:Z

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Z)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->f:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(I)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->g:[I

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a([I)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->h:[I

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a([I)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->i:[I

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a([I)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->j:[I

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a([I)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->k:[I

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a([I)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->l:[I

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a([I)Lcom/yelp/android/dc/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dc/c;->a()I

    move-result v0

    return v0
.end method

.method public i()[I
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->h:[I

    return-object v0
.end method

.method public j()[I
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->g:[I

    return-object v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->f:I

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->c:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->b:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/util/Date;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->a:Ljava/util/Date;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->a:Ljava/util/Date;

    if-nez v0, :cond_0

    const-wide/32 v0, -0x80000000

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 169
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 170
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 171
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 172
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->e:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 173
    iget v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->g:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 175
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->h:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 176
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->i:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 177
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->j:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 178
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->k:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 179
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->l:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 180
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->a:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0
.end method
