.class abstract Lcom/yelp/android/serializable/_YelpBusinessReview;
.super Ljava/lang/Object;
.source "_YelpBusinessReview.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected A:I

.field protected B:I

.field protected C:I

.field protected D:I

.field protected E:I

.field protected F:[I

.field protected G:J

.field protected a:Lcom/yelp/android/serializable/BusinessOwnerReply;

.field protected b:Ljava/util/Date;

.field protected c:Ljava/util/Date;

.field protected d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Photo;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/PreviousReview;",
            ">;"
        }
    .end annotation
.end field

.field protected f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Video;",
            ">;"
        }
    .end annotation
.end field

.field protected i:Ljava/lang/String;

.field protected j:Ljava/lang/String;

.field protected k:Ljava/lang/String;

.field protected l:Ljava/lang/String;

.field protected m:Ljava/lang/String;

.field protected n:Ljava/lang/String;

.field protected o:Ljava/lang/String;

.field protected p:Ljava/lang/String;

.field protected q:Ljava/lang/String;

.field protected r:Ljava/lang/String;

.field protected s:Ljava/lang/String;

.field protected t:Ljava/lang/String;

.field protected u:Ljava/lang/String;

.field protected v:Lcom/yelp/android/serializable/TranslatedReview;

.field protected w:Z

.field protected x:Z

.field protected y:Z

.field protected z:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    return-void
.end method


# virtual methods
.method public A()I
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->B:I

    return v0
.end method

.method public B()I
    .locals 1

    .prologue
    .line 326
    iget v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->A:I

    return v0
.end method

.method public C()I
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->z:I

    return v0
.end method

.method public D()Z
    .locals 1

    .prologue
    .line 318
    iget-boolean v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->y:Z

    return v0
.end method

.method public E()Z
    .locals 1

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->x:Z

    return v0
.end method

.method public F()Z
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->w:Z

    return v0
.end method

.method public G()Lcom/yelp/android/serializable/TranslatedReview;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->v:Lcom/yelp/android/serializable/TranslatedReview;

    return-object v0
.end method

.method public H()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->u:Ljava/lang/String;

    return-object v0
.end method

.method public I()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->t:Ljava/lang/String;

    return-object v0
.end method

.method public J()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->s:Ljava/lang/String;

    return-object v0
.end method

.method public K()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->r:Ljava/lang/String;

    return-object v0
.end method

.method public L()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->q:Ljava/lang/String;

    return-object v0
.end method

.method public M()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->p:Ljava/lang/String;

    return-object v0
.end method

.method public N()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->o:Ljava/lang/String;

    return-object v0
.end method

.method public O()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->n:Ljava/lang/String;

    return-object v0
.end method

.method public P()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->m:Ljava/lang/String;

    return-object v0
.end method

.method public Q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->k:Ljava/lang/String;

    return-object v0
.end method

.method public R()Ljava/util/List;
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
    .line 250
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->h:Ljava/util/List;

    return-object v0
.end method

.method public S()Ljava/util/List;
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
    .line 242
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->f:Ljava/util/List;

    return-object v0
.end method

.method public T()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/PreviousReview;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->e:Ljava/util/List;

    return-object v0
.end method

.method public U()Ljava/util/List;
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
    .line 234
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->d:Ljava/util/List;

    return-object v0
.end method

.method public V()Ljava/util/Date;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->c:Ljava/util/Date;

    return-object v0
.end method

.method public W()Ljava/util/Date;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->b:Ljava/util/Date;

    return-object v0
.end method

.method public X()Lcom/yelp/android/serializable/BusinessOwnerReply;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->a:Lcom/yelp/android/serializable/BusinessOwnerReply;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->i:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 436
    const-string/jumbo v0, "business_owner_reply"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 437
    sget-object v0, Lcom/yelp/android/serializable/BusinessOwnerReply;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "business_owner_reply"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/BusinessOwnerReply;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->a:Lcom/yelp/android/serializable/BusinessOwnerReply;

    .line 440
    :cond_0
    const-string/jumbo v0, "time_modified"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 441
    const-string/jumbo v0, "time_modified"

    invoke-static {p1, v0}, Lcom/yelp/parcelgen/JsonUtil;->parseTimestamp(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->b:Ljava/util/Date;

    .line 443
    :cond_1
    const-string/jumbo v0, "rotd_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 444
    const-string/jumbo v0, "rotd_time"

    invoke-static {p1, v0}, Lcom/yelp/parcelgen/JsonUtil;->parseTimestamp(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->c:Ljava/util/Date;

    .line 446
    :cond_2
    const-string/jumbo v0, "photos"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 447
    const-string/jumbo v0, "photos"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/Photo;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->d:Ljava/util/List;

    .line 451
    :goto_0
    const-string/jumbo v0, "previous_reviews"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 452
    const-string/jumbo v0, "previous_reviews"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/PreviousReview;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->e:Ljava/util/List;

    .line 458
    :goto_1
    const-string/jumbo v0, "user_disabled_features"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 459
    const-string/jumbo v0, "user_disabled_features"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/parcelgen/JsonUtil;->getStringList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->f:Ljava/util/List;

    .line 464
    :goto_2
    const-string/jumbo v0, "milestones"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 465
    const-string/jumbo v0, "milestones"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/parcelgen/JsonUtil;->getStringList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->g:Ljava/util/List;

    .line 469
    :goto_3
    const-string/jumbo v0, "videos"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 470
    const-string/jumbo v0, "videos"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/Video;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->h:Ljava/util/List;

    .line 474
    :goto_4
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 475
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->i:Ljava/lang/String;

    .line 477
    :cond_3
    const-string/jumbo v0, "user_encid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 478
    const-string/jumbo v0, "user_encid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->j:Ljava/lang/String;

    .line 480
    :cond_4
    const-string/jumbo v0, "business_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 481
    const-string/jumbo v0, "business_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->k:Ljava/lang/String;

    .line 483
    :cond_5
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 484
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->l:Ljava/lang/String;

    .line 486
    :cond_6
    const-string/jumbo v0, "text_excerpt"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 487
    const-string/jumbo v0, "text_excerpt"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->m:Ljava/lang/String;

    .line 489
    :cond_7
    const-string/jumbo v0, "user_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 490
    const-string/jumbo v0, "user_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->n:Ljava/lang/String;

    .line 492
    :cond_8
    const-string/jumbo v0, "user_photo_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 493
    const-string/jumbo v0, "user_photo_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->o:Ljava/lang/String;

    .line 495
    :cond_9
    const-string/jumbo v0, "business_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 496
    const-string/jumbo v0, "business_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->p:Ljava/lang/String;

    .line 498
    :cond_a
    const-string/jumbo v0, "business_photo_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 499
    const-string/jumbo v0, "business_photo_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->q:Ljava/lang/String;

    .line 501
    :cond_b
    const-string/jumbo v0, "user_location_rank_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 502
    const-string/jumbo v0, "user_location_rank_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->r:Ljava/lang/String;

    .line 504
    :cond_c
    const-string/jumbo v0, "text_attributed"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 505
    const-string/jumbo v0, "text_attributed"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->s:Ljava/lang/String;

    .line 507
    :cond_d
    const-string/jumbo v0, "language"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 508
    const-string/jumbo v0, "language"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->t:Ljava/lang/String;

    .line 510
    :cond_e
    const-string/jumbo v0, "share_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 511
    const-string/jumbo v0, "share_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->u:Ljava/lang/String;

    .line 513
    :cond_f
    const-string/jumbo v0, "translated_review"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 514
    sget-object v0, Lcom/yelp/android/serializable/TranslatedReview;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "translated_review"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/TranslatedReview;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->v:Lcom/yelp/android/serializable/TranslatedReview;

    .line 517
    :cond_10
    const-string/jumbo v0, "user_is_friend"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->w:Z

    .line 518
    const-string/jumbo v0, "user_is_followed"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->x:Z

    .line 519
    const-string/jumbo v0, "is_first_review"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->y:Z

    .line 520
    const-string/jumbo v0, "rating"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->z:I

    .line 521
    const-string/jumbo v0, "user_review_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->A:I

    .line 522
    const-string/jumbo v0, "user_friend_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->B:I

    .line 523
    const-string/jumbo v0, "user_check_in_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->C:I

    .line 524
    const-string/jumbo v0, "user_photo_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->D:I

    .line 525
    const-string/jumbo v0, "user_video_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->E:I

    .line 526
    const-string/jumbo v0, "user_elite_years"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 527
    const-string/jumbo v0, "user_elite_years"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 528
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 529
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->F:[I

    .line 530
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v2, :cond_16

    .line 531
    iget-object v3, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->F:[I

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    aput v4, v3, v0

    .line 530
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 449
    :cond_11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->d:Ljava/util/List;

    goto/16 :goto_0

    .line 456
    :cond_12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->e:Ljava/util/List;

    goto/16 :goto_1

    .line 462
    :cond_13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->f:Ljava/util/List;

    goto/16 :goto_2

    .line 467
    :cond_14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->g:Ljava/util/List;

    goto/16 :goto_3

    .line 472
    :cond_15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->h:Ljava/util/List;

    goto/16 :goto_4

    .line 534
    :cond_16
    const-string/jumbo v0, "updatable_after"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->G:J

    .line 535
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->j:Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const-wide/32 v4, -0x80000000

    .line 392
    const-class v0, Lcom/yelp/android/serializable/BusinessOwnerReply;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/BusinessOwnerReply;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->a:Lcom/yelp/android/serializable/BusinessOwnerReply;

    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 394
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 395
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->b:Ljava/util/Date;

    .line 397
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 398
    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    .line 399
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->c:Ljava/util/Date;

    .line 401
    :cond_1
    const-class v0, Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->d:Ljava/util/List;

    .line 402
    const-class v0, Lcom/yelp/android/serializable/PreviousReview;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->e:Ljava/util/List;

    .line 403
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->f:Ljava/util/List;

    .line 404
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->g:Ljava/util/List;

    .line 405
    const-class v0, Lcom/yelp/android/serializable/Video;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->h:Ljava/util/List;

    .line 406
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->i:Ljava/lang/String;

    .line 407
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->j:Ljava/lang/String;

    .line 408
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->k:Ljava/lang/String;

    .line 409
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->l:Ljava/lang/String;

    .line 410
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->m:Ljava/lang/String;

    .line 411
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->n:Ljava/lang/String;

    .line 412
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->o:Ljava/lang/String;

    .line 413
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->p:Ljava/lang/String;

    .line 414
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->q:Ljava/lang/String;

    .line 415
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->r:Ljava/lang/String;

    .line 416
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->s:Ljava/lang/String;

    .line 417
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->t:Ljava/lang/String;

    .line 418
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->u:Ljava/lang/String;

    .line 419
    const-class v0, Lcom/yelp/android/serializable/TranslatedReview;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/TranslatedReview;

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->v:Lcom/yelp/android/serializable/TranslatedReview;

    .line 420
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 421
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->w:Z

    .line 422
    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->x:Z

    .line 423
    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->y:Z

    .line 424
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->z:I

    .line 425
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->A:I

    .line 426
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->B:I

    .line 427
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->C:I

    .line 428
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->D:I

    .line 429
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->E:I

    .line 430
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->F:[I

    .line 432
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->G:J

    .line 433
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->l:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 131
    if-nez p1, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v0

    .line 135
    :cond_1
    if-ne p1, p0, :cond_2

    .line 136
    const/4 v0, 0x1

    goto :goto_0

    .line 139
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 143
    check-cast p1, Lcom/yelp/android/serializable/_YelpBusinessReview;

    .line 145
    new-instance v0, Lcom/yelp/android/dc/b;

    invoke-direct {v0}, Lcom/yelp/android/dc/b;-><init>()V

    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->a:Lcom/yelp/android/serializable/BusinessOwnerReply;

    iget-object v2, p1, Lcom/yelp/android/serializable/_YelpBusinessReview;->a:Lcom/yelp/android/serializable/BusinessOwnerReply;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->b:Ljava/util/Date;

    iget-object v2, p1, Lcom/yelp/android/serializable/_YelpBusinessReview;->b:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->c:Ljava/util/Date;

    iget-object v2, p1, Lcom/yelp/android/serializable/_YelpBusinessReview;->c:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->d:Ljava/util/List;

    iget-object v2, p1, Lcom/yelp/android/serializable/_YelpBusinessReview;->d:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->e:Ljava/util/List;

    iget-object v2, p1, Lcom/yelp/android/serializable/_YelpBusinessReview;->e:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->f:Ljava/util/List;

    iget-object v2, p1, Lcom/yelp/android/serializable/_YelpBusinessReview;->f:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->g:Ljava/util/List;

    iget-object v2, p1, Lcom/yelp/android/serializable/_YelpBusinessReview;->g:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->h:Ljava/util/List;

    iget-object v2, p1, Lcom/yelp/android/serializable/_YelpBusinessReview;->h:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->i:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/_YelpBusinessReview;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->j:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/_YelpBusinessReview;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->k:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/_YelpBusinessReview;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->l:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/_YelpBusinessReview;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->m:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/_YelpBusinessReview;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->n:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/_YelpBusinessReview;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->o:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/_YelpBusinessReview;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->p:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/_YelpBusinessReview;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->q:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/_YelpBusinessReview;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->r:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/_YelpBusinessReview;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->s:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/_YelpBusinessReview;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->t:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/_YelpBusinessReview;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->u:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/_YelpBusinessReview;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->v:Lcom/yelp/android/serializable/TranslatedReview;

    iget-object v2, p1, Lcom/yelp/android/serializable/_YelpBusinessReview;->v:Lcom/yelp/android/serializable/TranslatedReview;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->w:Z

    iget-boolean v2, p1, Lcom/yelp/android/serializable/_YelpBusinessReview;->w:Z

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(ZZ)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->x:Z

    iget-boolean v2, p1, Lcom/yelp/android/serializable/_YelpBusinessReview;->x:Z

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(ZZ)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->y:Z

    iget-boolean v2, p1, Lcom/yelp/android/serializable/_YelpBusinessReview;->y:Z

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(ZZ)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->z:I

    iget v2, p1, Lcom/yelp/android/serializable/_YelpBusinessReview;->z:I

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(II)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->A:I

    iget v2, p1, Lcom/yelp/android/serializable/_YelpBusinessReview;->A:I

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(II)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->B:I

    iget v2, p1, Lcom/yelp/android/serializable/_YelpBusinessReview;->B:I

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(II)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->C:I

    iget v2, p1, Lcom/yelp/android/serializable/_YelpBusinessReview;->C:I

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(II)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->D:I

    iget v2, p1, Lcom/yelp/android/serializable/_YelpBusinessReview;->D:I

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(II)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->E:I

    iget v2, p1, Lcom/yelp/android/serializable/_YelpBusinessReview;->E:I

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(II)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->F:[I

    iget-object v2, p1, Lcom/yelp/android/serializable/_YelpBusinessReview;->F:[I

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a([I[I)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-wide v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->G:J

    iget-wide v4, p1, Lcom/yelp/android/serializable/_YelpBusinessReview;->G:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/yelp/android/dc/b;->a(JJ)Lcom/yelp/android/dc/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dc/b;->a()Z

    move-result v0

    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 184
    new-instance v0, Lcom/yelp/android/dc/c;

    invoke-direct {v0}, Lcom/yelp/android/dc/c;-><init>()V

    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->a:Lcom/yelp/android/serializable/BusinessOwnerReply;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->b:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->c:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->h:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->v:Lcom/yelp/android/serializable/TranslatedReview;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->w:Z

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Z)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->x:Z

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Z)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->y:Z

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Z)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->z:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(I)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->A:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(I)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->B:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(I)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->C:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(I)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->D:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(I)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->E:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(I)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->F:[I

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a([I)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-wide v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->G:J

    invoke-virtual {v0, v2, v3}, Lcom/yelp/android/dc/c;->a(J)Lcom/yelp/android/dc/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dc/c;->a()I

    move-result v0

    return v0
.end method

.method public s()Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x3e8

    .line 538
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 539
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->a:Lcom/yelp/android/serializable/BusinessOwnerReply;

    if-eqz v0, :cond_0

    .line 540
    const-string/jumbo v0, "business_owner_reply"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->a:Lcom/yelp/android/serializable/BusinessOwnerReply;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/BusinessOwnerReply;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->b:Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 543
    const-string/jumbo v0, "time_modified"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->b:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 545
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->c:Ljava/util/Date;

    if-eqz v0, :cond_2

    .line 546
    const-string/jumbo v0, "rotd_time"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->c:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 548
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->d:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 549
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 550
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    .line 551
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->w()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 553
    :cond_3
    const-string/jumbo v0, "photos"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 555
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->e:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 556
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 557
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PreviousReview;

    .line 558
    invoke-virtual {v0}, Lcom/yelp/android/serializable/PreviousReview;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 560
    :cond_5
    const-string/jumbo v0, "previous_reviews"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 562
    :cond_6
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->f:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 563
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 564
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 565
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 567
    :cond_7
    const-string/jumbo v0, "user_disabled_features"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 569
    :cond_8
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->g:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 570
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 571
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 572
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    .line 574
    :cond_9
    const-string/jumbo v0, "milestones"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 576
    :cond_a
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->h:Ljava/util/List;

    if-eqz v0, :cond_c

    .line 577
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 578
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Video;

    .line 579
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Video;->n()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_4

    .line 581
    :cond_b
    const-string/jumbo v0, "videos"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 583
    :cond_c
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->i:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 584
    const-string/jumbo v0, "id"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 586
    :cond_d
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->j:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 587
    const-string/jumbo v0, "user_encid"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->j:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 589
    :cond_e
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->k:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 590
    const-string/jumbo v0, "business_id"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->k:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 592
    :cond_f
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->l:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 593
    const-string/jumbo v0, "text"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->l:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 595
    :cond_10
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->m:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 596
    const-string/jumbo v0, "text_excerpt"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->m:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 598
    :cond_11
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->n:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 599
    const-string/jumbo v0, "user_name"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->n:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 601
    :cond_12
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->o:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 602
    const-string/jumbo v0, "user_photo_url"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->o:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 604
    :cond_13
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->p:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 605
    const-string/jumbo v0, "business_name"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->p:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 607
    :cond_14
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->q:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 608
    const-string/jumbo v0, "business_photo_url"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->q:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 610
    :cond_15
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->r:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 611
    const-string/jumbo v0, "user_location_rank_title"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->r:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 613
    :cond_16
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->s:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 614
    const-string/jumbo v0, "text_attributed"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->s:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 616
    :cond_17
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->t:Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 617
    const-string/jumbo v0, "language"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->t:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 619
    :cond_18
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->u:Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 620
    const-string/jumbo v0, "share_url"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->u:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 622
    :cond_19
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->v:Lcom/yelp/android/serializable/TranslatedReview;

    if-eqz v0, :cond_1a

    .line 623
    const-string/jumbo v0, "translated_review"

    iget-object v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->v:Lcom/yelp/android/serializable/TranslatedReview;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/TranslatedReview;->b()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 625
    :cond_1a
    const-string/jumbo v0, "user_is_friend"

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->w:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 626
    const-string/jumbo v0, "user_is_followed"

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->x:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 627
    const-string/jumbo v0, "is_first_review"

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->y:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 628
    const-string/jumbo v0, "rating"

    iget v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->z:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 629
    const-string/jumbo v0, "user_review_count"

    iget v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->A:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 630
    const-string/jumbo v0, "user_friend_count"

    iget v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->B:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 631
    const-string/jumbo v0, "user_check_in_count"

    iget v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->C:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 632
    const-string/jumbo v0, "user_photo_count"

    iget v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->D:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 633
    const-string/jumbo v0, "user_video_count"

    iget v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->E:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 634
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->F:[I

    if-eqz v0, :cond_1c

    .line 635
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 636
    iget-object v3, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->F:[I

    array-length v4, v3

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v4, :cond_1b

    aget v5, v3, v0

    .line 637
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 636
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 639
    :cond_1b
    const-string/jumbo v0, "user_elite_years"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 641
    :cond_1c
    const-string/jumbo v0, "updatable_after"

    iget-wide v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->G:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 642
    return-object v1
.end method

.method public v()J
    .locals 2

    .prologue
    .line 350
    iget-wide v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->G:J

    return-wide v0
.end method

.method public w()[I
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->F:[I

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .prologue
    const-wide/32 v2, -0x80000000

    const/4 v4, 0x0

    .line 358
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->a:Lcom/yelp/android/serializable/BusinessOwnerReply;

    invoke-virtual {p1, v0, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 359
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->b:Ljava/util/Date;

    if-nez v0, :cond_0

    move-wide v0, v2

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 360
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->c:Ljava/util/Date;

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 361
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->d:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 362
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->e:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 363
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->f:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 364
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->g:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 365
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->h:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 366
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 367
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 368
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 369
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 370
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 371
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 372
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 373
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 374
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 375
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 376
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 377
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 378
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 379
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->v:Lcom/yelp/android/serializable/TranslatedReview;

    invoke-virtual {p1, v0, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 380
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->w:Z

    aput-boolean v1, v0, v4

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->x:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->y:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 381
    iget v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->z:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 382
    iget v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->A:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    iget v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->B:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 384
    iget v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->C:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    iget v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->D:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 386
    iget v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->E:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 387
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->F:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 388
    iget-wide v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->G:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 389
    return-void

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->b:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto/16 :goto_0

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->c:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto/16 :goto_1
.end method

.method public x()I
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->E:I

    return v0
.end method

.method public y()I
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->D:I

    return v0
.end method

.method public z()I
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lcom/yelp/android/serializable/_YelpBusinessReview;->C:I

    return v0
.end method
