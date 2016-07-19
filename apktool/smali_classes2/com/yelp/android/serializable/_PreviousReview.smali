.class abstract Lcom/yelp/android/serializable/_PreviousReview;
.super Ljava/lang/Object;
.source "_PreviousReview.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected a:Lcom/yelp/android/serializable/BusinessOwnerReply;

.field protected b:Ljava/util/Date;

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Photo;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Video;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:Z

.field protected i:Z

.field protected j:Z

.field protected k:I

.field protected l:I

.field protected m:I

.field protected n:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 259
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 260
    iget-object v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->a:Lcom/yelp/android/serializable/BusinessOwnerReply;

    if-eqz v0, :cond_0

    .line 261
    const-string/jumbo v0, "business_owner_reply"

    iget-object v2, p0, Lcom/yelp/android/serializable/_PreviousReview;->a:Lcom/yelp/android/serializable/BusinessOwnerReply;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/BusinessOwnerReply;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->b:Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 264
    const-string/jumbo v0, "time_modified"

    iget-object v2, p0, Lcom/yelp/android/serializable/_PreviousReview;->b:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->c:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 267
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 268
    iget-object v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    .line 269
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->w()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 271
    :cond_2
    const-string/jumbo v0, "photos"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->d:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 274
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 275
    iget-object v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Video;

    .line 276
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Video;->n()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 278
    :cond_4
    const-string/jumbo v0, "videos"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 280
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->e:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 281
    const-string/jumbo v0, "id"

    iget-object v2, p0, Lcom/yelp/android/serializable/_PreviousReview;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 283
    :cond_6
    iget-object v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->f:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 284
    const-string/jumbo v0, "text"

    iget-object v2, p0, Lcom/yelp/android/serializable/_PreviousReview;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 286
    :cond_7
    iget-object v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->g:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 287
    const-string/jumbo v0, "text_excerpt"

    iget-object v2, p0, Lcom/yelp/android/serializable/_PreviousReview;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 289
    :cond_8
    const-string/jumbo v0, "user_feedback.useful"

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_PreviousReview;->h:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 290
    const-string/jumbo v0, "user_feedback.funny"

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_PreviousReview;->i:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 291
    const-string/jumbo v0, "user_feedback.cool"

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_PreviousReview;->j:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 292
    const-string/jumbo v0, "rating"

    iget v2, p0, Lcom/yelp/android/serializable/_PreviousReview;->k:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 293
    const-string/jumbo v0, "feedback.useful"

    iget v2, p0, Lcom/yelp/android/serializable/_PreviousReview;->l:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 294
    const-string/jumbo v0, "feedback.funny"

    iget v2, p0, Lcom/yelp/android/serializable/_PreviousReview;->m:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 295
    const-string/jumbo v0, "feedback.cool"

    iget v2, p0, Lcom/yelp/android/serializable/_PreviousReview;->n:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 296
    return-object v1
.end method

.method public a(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 202
    const-class v0, Lcom/yelp/android/serializable/BusinessOwnerReply;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/BusinessOwnerReply;

    iput-object v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->a:Lcom/yelp/android/serializable/BusinessOwnerReply;

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 204
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 205
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/yelp/android/serializable/_PreviousReview;->b:Ljava/util/Date;

    .line 207
    :cond_0
    const-class v0, Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->c:Ljava/util/List;

    .line 208
    const-class v0, Lcom/yelp/android/serializable/Video;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->d:Ljava/util/List;

    .line 209
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->e:Ljava/lang/String;

    .line 210
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->f:Ljava/lang/String;

    .line 211
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->g:Ljava/lang/String;

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 213
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/yelp/android/serializable/_PreviousReview;->h:Z

    .line 214
    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/yelp/android/serializable/_PreviousReview;->i:Z

    .line 215
    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->j:Z

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->k:I

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->l:I

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->m:I

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->n:I

    .line 220
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
    .line 223
    const-string/jumbo v0, "business_owner_reply"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    sget-object v0, Lcom/yelp/android/serializable/BusinessOwnerReply;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "business_owner_reply"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/BusinessOwnerReply;

    iput-object v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->a:Lcom/yelp/android/serializable/BusinessOwnerReply;

    .line 227
    :cond_0
    const-string/jumbo v0, "time_modified"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 228
    const-string/jumbo v0, "time_modified"

    invoke-static {p1, v0}, Lcom/yelp/parcelgen/JsonUtil;->parseTimestamp(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->b:Ljava/util/Date;

    .line 230
    :cond_1
    const-string/jumbo v0, "photos"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 231
    const-string/jumbo v0, "photos"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/Photo;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->c:Ljava/util/List;

    .line 235
    :goto_0
    const-string/jumbo v0, "videos"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 236
    const-string/jumbo v0, "videos"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/Video;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->d:Ljava/util/List;

    .line 240
    :goto_1
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 241
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->e:Ljava/lang/String;

    .line 243
    :cond_2
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 244
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->f:Ljava/lang/String;

    .line 246
    :cond_3
    const-string/jumbo v0, "text_excerpt"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 247
    const-string/jumbo v0, "text_excerpt"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->g:Ljava/lang/String;

    .line 249
    :cond_4
    const-string/jumbo v0, "user_feedback.useful"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->h:Z

    .line 250
    const-string/jumbo v0, "user_feedback.funny"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->i:Z

    .line 251
    const-string/jumbo v0, "user_feedback.cool"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->j:Z

    .line 252
    const-string/jumbo v0, "rating"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->k:I

    .line 253
    const-string/jumbo v0, "feedback.useful"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->l:I

    .line 254
    const-string/jumbo v0, "feedback.funny"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->m:I

    .line 255
    const-string/jumbo v0, "feedback.cool"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->n:I

    .line 256
    return-void

    .line 233
    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->c:Ljava/util/List;

    goto/16 :goto_0

    .line 238
    :cond_6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->d:Ljava/util/List;

    goto/16 :goto_1
.end method

.method public b()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->n:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->m:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->l:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->k:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 73
    if-nez p1, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v0

    .line 77
    :cond_1
    if-ne p1, p0, :cond_2

    .line 78
    const/4 v0, 0x1

    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 85
    check-cast p1, Lcom/yelp/android/serializable/_PreviousReview;

    .line 87
    new-instance v0, Lcom/yelp/android/dc/b;

    invoke-direct {v0}, Lcom/yelp/android/dc/b;-><init>()V

    iget-object v1, p0, Lcom/yelp/android/serializable/_PreviousReview;->a:Lcom/yelp/android/serializable/BusinessOwnerReply;

    iget-object v2, p1, Lcom/yelp/android/serializable/_PreviousReview;->a:Lcom/yelp/android/serializable/BusinessOwnerReply;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_PreviousReview;->b:Ljava/util/Date;

    iget-object v2, p1, Lcom/yelp/android/serializable/_PreviousReview;->b:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_PreviousReview;->c:Ljava/util/List;

    iget-object v2, p1, Lcom/yelp/android/serializable/_PreviousReview;->c:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_PreviousReview;->d:Ljava/util/List;

    iget-object v2, p1, Lcom/yelp/android/serializable/_PreviousReview;->d:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_PreviousReview;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/_PreviousReview;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_PreviousReview;->f:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/_PreviousReview;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_PreviousReview;->g:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/_PreviousReview;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yelp/android/serializable/_PreviousReview;->h:Z

    iget-boolean v2, p1, Lcom/yelp/android/serializable/_PreviousReview;->h:Z

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(ZZ)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yelp/android/serializable/_PreviousReview;->i:Z

    iget-boolean v2, p1, Lcom/yelp/android/serializable/_PreviousReview;->i:Z

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(ZZ)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yelp/android/serializable/_PreviousReview;->j:Z

    iget-boolean v2, p1, Lcom/yelp/android/serializable/_PreviousReview;->j:Z

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(ZZ)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/serializable/_PreviousReview;->k:I

    iget v2, p1, Lcom/yelp/android/serializable/_PreviousReview;->k:I

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(II)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/serializable/_PreviousReview;->l:I

    iget v2, p1, Lcom/yelp/android/serializable/_PreviousReview;->l:I

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(II)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/serializable/_PreviousReview;->m:I

    iget v2, p1, Lcom/yelp/android/serializable/_PreviousReview;->m:I

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(II)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/serializable/_PreviousReview;->n:I

    iget v2, p1, Lcom/yelp/android/serializable/_PreviousReview;->n:I

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(II)Lcom/yelp/android/dc/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dc/b;->a()Z

    move-result v0

    goto/16 :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->h:Z

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->f:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 107
    new-instance v0, Lcom/yelp/android/dc/c;

    invoke-direct {v0}, Lcom/yelp/android/dc/c;-><init>()V

    iget-object v1, p0, Lcom/yelp/android/serializable/_PreviousReview;->a:Lcom/yelp/android/serializable/BusinessOwnerReply;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_PreviousReview;->b:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_PreviousReview;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_PreviousReview;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_PreviousReview;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_PreviousReview;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_PreviousReview;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yelp/android/serializable/_PreviousReview;->h:Z

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Z)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yelp/android/serializable/_PreviousReview;->i:Z

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Z)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yelp/android/serializable/_PreviousReview;->j:Z

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Z)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/serializable/_PreviousReview;->k:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(I)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/serializable/_PreviousReview;->l:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(I)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/serializable/_PreviousReview;->m:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(I)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/serializable/_PreviousReview;->n:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(I)Lcom/yelp/android/dc/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dc/c;->a()I

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->e:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Video;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->d:Ljava/util/List;

    return-object v0
.end method

.method public k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Photo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->c:Ljava/util/List;

    return-object v0
.end method

.method public l()Ljava/util/Date;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->b:Ljava/util/Date;

    return-object v0
.end method

.method public m()Lcom/yelp/android/serializable/BusinessOwnerReply;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->a:Lcom/yelp/android/serializable/BusinessOwnerReply;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 186
    iget-object v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->a:Lcom/yelp/android/serializable/BusinessOwnerReply;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 187
    iget-object v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->b:Ljava/util/Date;

    if-nez v0, :cond_0

    const-wide/32 v0, -0x80000000

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 188
    iget-object v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->c:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 189
    iget-object v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->d:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 190
    iget-object v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 191
    iget-object v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 192
    iget-object v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 193
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/yelp/android/serializable/_PreviousReview;->h:Z

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_PreviousReview;->i:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_PreviousReview;->j:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 195
    iget v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->k:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->m:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->n:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/_PreviousReview;->b:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0
.end method
