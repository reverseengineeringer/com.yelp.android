.class public Lcom/yelp/android/serializable/FeedItem;
.super Lcom/yelp/android/serializable/_FeedItem;
.source "FeedItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/serializable/FeedItem$2;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/yelp/android/serializable/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/serializable/a",
            "<",
            "Lcom/yelp/android/serializable/FeedItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/yelp/android/serializable/SingleFeedActivity;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/yelp/android/ui/activities/feed/FeedItemType;

.field private h:Lcom/yelp/android/ui/activities/ActivityType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 380
    new-instance v0, Lcom/yelp/android/serializable/FeedItem$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/FeedItem$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/FeedItem;->CREATOR:Lcom/yelp/android/serializable/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/yelp/android/serializable/_FeedItem;-><init>()V

    .line 223
    return-void
.end method

.method private n()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 370
    iget-object v0, p0, Lcom/yelp/android/serializable/FeedItem;->b:Lcom/yelp/android/serializable/FeedGroupedByInfo;

    if-nez v0, :cond_0

    .line 371
    new-instance v0, Lcom/yelp/android/serializable/FeedGroupedByInfo;

    invoke-direct {v0}, Lcom/yelp/android/serializable/FeedGroupedByInfo;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/serializable/FeedItem;->b:Lcom/yelp/android/serializable/FeedGroupedByInfo;

    .line 372
    iget-object v1, p0, Lcom/yelp/android/serializable/FeedItem;->b:Lcom/yelp/android/serializable/FeedGroupedByInfo;

    iget-object v0, p0, Lcom/yelp/android/serializable/FeedItem;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/SingleFeedActivity;

    invoke-interface {v0}, Lcom/yelp/android/serializable/SingleFeedActivity;->b()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    iput-object v0, v1, Lcom/yelp/android/serializable/FeedGroupedByInfo;->c:Lcom/yelp/android/serializable/YelpBusiness;

    .line 373
    iget-object v1, p0, Lcom/yelp/android/serializable/FeedItem;->b:Lcom/yelp/android/serializable/FeedGroupedByInfo;

    iget-object v0, p0, Lcom/yelp/android/serializable/FeedItem;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/SingleFeedActivity;

    invoke-interface {v0}, Lcom/yelp/android/serializable/SingleFeedActivity;->c()Lcom/yelp/android/serializable/User;

    move-result-object v0

    iput-object v0, v1, Lcom/yelp/android/serializable/FeedGroupedByInfo;->b:Lcom/yelp/android/serializable/User;

    .line 377
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/serializable/FeedItem;->b:Lcom/yelp/android/serializable/FeedGroupedByInfo;

    iget-object v0, p0, Lcom/yelp/android/serializable/FeedItem;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/SingleFeedActivity;

    invoke-interface {v0}, Lcom/yelp/android/serializable/SingleFeedActivity;->a()Lcom/yelp/android/serializable/Event;

    move-result-object v0

    iput-object v0, v1, Lcom/yelp/android/serializable/FeedGroupedByInfo;->a:Lcom/yelp/android/serializable/Event;

    .line 378
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/yelp/android/serializable/FeedItem;->d:I

    return v0
.end method

.method public a(Ljava/lang/Class;)Lcom/yelp/android/serializable/SingleFeedActivity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/yelp/android/serializable/SingleFeedActivity;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 263
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/serializable/FeedItem;->a(Ljava/lang/Class;I)Lcom/yelp/android/serializable/SingleFeedActivity;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;I)Lcom/yelp/android/serializable/SingleFeedActivity;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/yelp/android/serializable/SingleFeedActivity;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;I)TT;"
        }
    .end annotation

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/yelp/android/serializable/FeedItem;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/yelp/android/serializable/FeedItem;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/SingleFeedActivity;

    return-object v0

    .line 275
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Wrong FeedActivity type. Was: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " Expected: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yelp/android/serializable/FeedItem;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/SingleFeedActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public a(Lcom/yelp/android/ci/f;Landroid/support/v7/widget/RecyclerView$l;Lcom/yelp/android/ui/util/t;)Lcom/yelp/android/ui/activities/feed/viewbinder/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ci/f;",
            "Landroid/support/v7/widget/RecyclerView$l;",
            "Lcom/yelp/android/ui/util/t;",
            ")",
            "Lcom/yelp/android/ui/activities/feed/viewbinder/n",
            "<",
            "Lcom/yelp/android/serializable/FeedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    sget-object v0, Lcom/yelp/android/serializable/FeedItem$2;->a:[I

    iget-object v1, p0, Lcom/yelp/android/serializable/FeedItem;->g:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/feed/FeedItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 332
    const-string/jumbo v0, "FeedItem"

    const-string/jumbo v1, "Unsupported feed item type!"

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 288
    :pswitch_0
    new-instance v0, Lcom/yelp/android/ui/activities/feed/viewbinder/b;

    invoke-direct {v0, p1}, Lcom/yelp/android/ui/activities/feed/viewbinder/b;-><init>(Lcom/yelp/android/ci/f;)V

    goto :goto_0

    .line 290
    :pswitch_1
    new-instance v0, Lcom/yelp/android/ui/activities/feed/viewbinder/c;

    invoke-direct {v0, p1}, Lcom/yelp/android/ui/activities/feed/viewbinder/c;-><init>(Lcom/yelp/android/ci/f;)V

    goto :goto_0

    .line 293
    :pswitch_2
    new-instance v0, Lcom/yelp/android/ui/activities/feed/viewbinder/e;

    invoke-direct {v0, p3, p2, p1}, Lcom/yelp/android/ui/activities/feed/viewbinder/e;-><init>(Lcom/yelp/android/ui/util/t;Landroid/support/v7/widget/RecyclerView$l;Lcom/yelp/android/ci/f;)V

    goto :goto_0

    .line 295
    :pswitch_3
    new-instance v0, Lcom/yelp/android/ui/activities/feed/viewbinder/f;

    invoke-direct {v0, p1}, Lcom/yelp/android/ui/activities/feed/viewbinder/f;-><init>(Lcom/yelp/android/ci/f;)V

    goto :goto_0

    .line 297
    :pswitch_4
    new-instance v0, Lcom/yelp/android/ui/activities/feed/viewbinder/g;

    invoke-direct {v0, p1}, Lcom/yelp/android/ui/activities/feed/viewbinder/g;-><init>(Lcom/yelp/android/ci/f;)V

    goto :goto_0

    .line 299
    :pswitch_5
    new-instance v0, Lcom/yelp/android/ui/activities/feed/viewbinder/h;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/feed/viewbinder/h;-><init>()V

    goto :goto_0

    .line 302
    :pswitch_6
    new-instance v0, Lcom/yelp/android/ui/activities/feed/viewbinder/k;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/feed/viewbinder/k;-><init>()V

    goto :goto_0

    .line 304
    :pswitch_7
    new-instance v0, Lcom/yelp/android/ui/activities/feed/viewbinder/j;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/feed/viewbinder/j;-><init>()V

    goto :goto_0

    .line 306
    :pswitch_8
    new-instance v0, Lcom/yelp/android/ui/activities/feed/viewbinder/m;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/feed/viewbinder/m;-><init>()V

    goto :goto_0

    .line 308
    :pswitch_9
    new-instance v0, Lcom/yelp/android/ui/activities/feed/viewbinder/ab;

    invoke-direct {v0, p1}, Lcom/yelp/android/ui/activities/feed/viewbinder/ab;-><init>(Lcom/yelp/android/ci/f;)V

    goto :goto_0

    .line 310
    :pswitch_a
    new-instance v0, Lcom/yelp/android/ui/activities/feed/viewbinder/u;

    invoke-direct {v0, p1}, Lcom/yelp/android/ui/activities/feed/viewbinder/u;-><init>(Lcom/yelp/android/ci/f;)V

    goto :goto_0

    .line 313
    :pswitch_b
    new-instance v0, Lcom/yelp/android/ui/activities/feed/viewbinder/w;

    invoke-direct {v0, p1}, Lcom/yelp/android/ui/activities/feed/viewbinder/w;-><init>(Lcom/yelp/android/ci/f;)V

    goto :goto_0

    .line 315
    :pswitch_c
    new-instance v0, Lcom/yelp/android/ui/activities/feed/viewbinder/v;

    invoke-direct {v0, p1}, Lcom/yelp/android/ui/activities/feed/viewbinder/v;-><init>(Lcom/yelp/android/ci/f;)V

    goto :goto_0

    .line 317
    :pswitch_d
    new-instance v0, Lcom/yelp/android/ui/activities/feed/viewbinder/y;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/feed/viewbinder/y;-><init>()V

    goto :goto_0

    .line 319
    :pswitch_e
    new-instance v0, Lcom/yelp/android/ui/activities/feed/viewbinder/z;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/feed/viewbinder/z;-><init>()V

    goto :goto_0

    .line 321
    :pswitch_f
    new-instance v0, Lcom/yelp/android/ui/activities/feed/viewbinder/ac;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/feed/viewbinder/ac;-><init>()V

    goto :goto_0

    .line 324
    :pswitch_10
    new-instance v0, Lcom/yelp/android/ui/activities/feed/viewbinder/ae;

    invoke-direct {v0, p3, p2}, Lcom/yelp/android/ui/activities/feed/viewbinder/ae;-><init>(Lcom/yelp/android/ui/util/t;Landroid/support/v7/widget/RecyclerView$l;)V

    goto :goto_0

    .line 326
    :pswitch_11
    new-instance v0, Lcom/yelp/android/ui/activities/feed/viewbinder/af;

    invoke-direct {v0, p3, p1}, Lcom/yelp/android/ui/activities/feed/viewbinder/af;-><init>(Lcom/yelp/android/ui/util/t;Lcom/yelp/android/ci/f;)V

    goto :goto_0

    .line 328
    :pswitch_12
    new-instance v0, Lcom/yelp/android/ui/activities/feed/viewbinder/r;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/feed/viewbinder/r;-><init>()V

    goto :goto_0

    .line 330
    :pswitch_13
    new-instance v0, Lcom/yelp/android/ui/activities/feed/viewbinder/ag;

    invoke-direct {v0, p3, p1}, Lcom/yelp/android/ui/activities/feed/viewbinder/ag;-><init>(Lcom/yelp/android/ui/util/t;Lcom/yelp/android/ci/f;)V

    goto :goto_0

    .line 286
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 230
    iput p1, p0, Lcom/yelp/android/serializable/FeedItem;->d:I

    .line 231
    return-void
.end method

.method public a(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_FeedItem;->a(Landroid/os/Parcel;)V

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/FeedItem;->d:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/feed/FeedItemType;

    iput-object v0, p0, Lcom/yelp/android/serializable/FeedItem;->g:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    .line 73
    const-class v0, Lcom/yelp/android/serializable/SingleFeedActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/FeedItem;->f:Ljava/util/ArrayList;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/ActivityType;

    iput-object v0, p0, Lcom/yelp/android/serializable/FeedItem;->h:Lcom/yelp/android/ui/activities/ActivityType;

    .line 75
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/yelp/android/serializable/FeedItem;->e:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_FeedItem;->a(Lorg/json/JSONObject;)V

    .line 113
    const-string/jumbo v0, "feed_item_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    const-string/jumbo v0, "feed_item_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/FeedItemType;->valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/feed/FeedItemType;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/FeedItem;->g:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    .line 117
    :cond_0
    const-string/jumbo v0, "activity_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    const-string/jumbo v0, "activity_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityType;->valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/ActivityType;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/FeedItem;->h:Lcom/yelp/android/ui/activities/ActivityType;

    .line 121
    :cond_1
    const-string/jumbo v0, "grouped_items"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 122
    sget-object v0, Lcom/yelp/android/serializable/FeedItem$2;->a:[I

    iget-object v1, p0, Lcom/yelp/android/serializable/FeedItem;->g:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/feed/FeedItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 223
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unsupported feed item type!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :pswitch_0
    const-string/jumbo v0, "grouped_items"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/FeedBookmarkActivity;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/FeedItem;->f:Ljava/util/ArrayList;

    .line 225
    :goto_0
    invoke-direct {p0}, Lcom/yelp/android/serializable/FeedItem;->n()V

    .line 227
    :cond_2
    return-void

    .line 132
    :pswitch_1
    const-string/jumbo v0, "grouped_items"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/FeedBusinessPhotoActivity;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/FeedItem;->f:Ljava/util/ArrayList;

    goto :goto_0

    .line 138
    :pswitch_2
    const-string/jumbo v0, "grouped_items"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/FeedBusinessRecommendationActivity;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/FeedItem;->f:Ljava/util/ArrayList;

    goto :goto_0

    .line 145
    :pswitch_3
    const-string/jumbo v0, "grouped_items"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/FeedCheckInActivity;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/FeedItem;->f:Ljava/util/ArrayList;

    goto :goto_0

    .line 152
    :pswitch_4
    const-string/jumbo v0, "grouped_items"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/FeedEventCreatedActivity;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/FeedItem;->f:Ljava/util/ArrayList;

    goto :goto_0

    .line 159
    :pswitch_5
    const-string/jumbo v0, "grouped_items"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/FeedEventSubscriptionActivity;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/FeedItem;->f:Ljava/util/ArrayList;

    goto :goto_0

    .line 165
    :pswitch_6
    const-string/jumbo v0, "grouped_items"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/FeedTipActivity;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/FeedItem;->f:Ljava/util/ArrayList;

    goto :goto_0

    .line 170
    :pswitch_7
    const-string/jumbo v0, "grouped_items"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/FeedReservationSearchActivity;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/FeedItem;->f:Ljava/util/ArrayList;

    goto :goto_0

    .line 177
    :pswitch_8
    const-string/jumbo v0, "grouped_items"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/FeedReviewActivity;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/FeedItem;->f:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 182
    :pswitch_9
    const-string/jumbo v0, "grouped_items"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/FeedReviewDraftActivity;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/FeedItem;->f:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 189
    :pswitch_a
    const-string/jumbo v0, "grouped_items"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/FeedTalkPostActivity;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/FeedItem;->f:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 195
    :pswitch_b
    const-string/jumbo v0, "grouped_items"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/FeedEventCreatedActivity;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/FeedItem;->f:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 202
    :pswitch_c
    const-string/jumbo v0, "grouped_items"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/FeedUserPhotoActivity;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/FeedItem;->f:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 208
    :pswitch_d
    const-string/jumbo v0, "grouped_items"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/FeedVideoActivity;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/FeedItem;->f:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 213
    :pswitch_e
    const-string/jumbo v0, "grouped_items"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/FeedLocalActivity;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/FeedItem;->f:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 218
    :pswitch_f
    const-string/jumbo v0, "grouped_items"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/FeedYnraActivity;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/FeedItem;->f:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/yelp/android/serializable/FeedItem;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/yelp/android/ui/activities/feed/FeedItemType;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/yelp/android/serializable/FeedItem;->g:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    return-object v0
.end method

.method public d()Lcom/yelp/android/ui/activities/ActivityType;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/yelp/android/serializable/FeedItem;->h:Lcom/yelp/android/ui/activities/ActivityType;

    return-object v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/yelp/android/serializable/_FeedItem;->describeContents()I

    move-result v0

    return v0
.end method

.method public e()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/yelp/android/serializable/SingleFeedActivity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lcom/yelp/android/serializable/FeedItem;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 79
    if-nez p1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v0

    .line 83
    :cond_1
    if-ne p1, p0, :cond_2

    .line 84
    const/4 v0, 0x1

    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 90
    check-cast p1, Lcom/yelp/android/serializable/FeedItem;

    .line 92
    new-instance v0, Lcom/yelp/android/dc/b;

    invoke-direct {v0}, Lcom/yelp/android/dc/b;-><init>()V

    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_FeedItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/b;->a(Z)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/serializable/FeedItem;->d:I

    iget v2, p1, Lcom/yelp/android/serializable/FeedItem;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(II)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/FeedItem;->g:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    iget-object v2, p1, Lcom/yelp/android/serializable/FeedItem;->g:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/FeedItem;->f:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/yelp/android/serializable/FeedItem;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dc/b;->a()Z

    move-result v0

    goto :goto_0
.end method

.method public f()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 338
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 339
    const-string/jumbo v1, "item_type"

    iget-object v2, p0, Lcom/yelp/android/serializable/FeedItem;->g:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/feed/FeedItemType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string/jumbo v1, "request_id"

    iget-object v2, p0, Lcom/yelp/android/serializable/FeedItem;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const-string/jumbo v1, "index"

    iget v2, p0, Lcom/yelp/android/serializable/FeedItem;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    return-object v0
.end method

.method public g()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/yelp/android/serializable/FeedItem;->f()Ljava/util/Map;

    move-result-object v0

    .line 347
    const-string/jumbo v1, "target"

    const-string/jumbo v2, "activity"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    return-object v0
.end method

.method public h()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/yelp/android/serializable/FeedItem;->f()Ljava/util/Map;

    move-result-object v0

    .line 353
    const-string/jumbo v1, "target"

    const-string/jumbo v2, "item"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 102
    new-instance v0, Lcom/yelp/android/dc/c;

    invoke-direct {v0}, Lcom/yelp/android/dc/c;-><init>()V

    invoke-super {p0}, Lcom/yelp/android/serializable/_FeedItem;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->b(I)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/serializable/FeedItem;->d:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(I)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/FeedItem;->g:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/FeedItem;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dc/c;->a()I

    move-result v0

    return v0
.end method

.method public i()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/yelp/android/serializable/FeedItem;->f()Ljava/util/Map;

    move-result-object v0

    .line 359
    const-string/jumbo v1, "user_id"

    iget-object v2, p0, Lcom/yelp/android/serializable/FeedItem;->b:Lcom/yelp/android/serializable/FeedGroupedByInfo;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/FeedGroupedByInfo;->b()Lcom/yelp/android/serializable/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/User;->i()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    return-object v0
.end method

.method public j()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/yelp/android/serializable/FeedItem;->f()Ljava/util/Map;

    move-result-object v0

    .line 365
    const-string/jumbo v1, "business_id"

    iget-object v2, p0, Lcom/yelp/android/serializable/FeedItem;->b:Lcom/yelp/android/serializable/FeedGroupedByInfo;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/FeedGroupedByInfo;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    return-object v0
.end method

.method public bridge synthetic k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/yelp/android/serializable/_FeedItem;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic l()Lcom/yelp/android/serializable/FeedGroupedByInfo;
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/yelp/android/serializable/_FeedItem;->l()Lcom/yelp/android/serializable/FeedGroupedByInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic m()Ljava/util/Date;
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/yelp/android/serializable/_FeedItem;->m()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_FeedItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 62
    iget v0, p0, Lcom/yelp/android/serializable/FeedItem;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget-object v0, p0, Lcom/yelp/android/serializable/FeedItem;->g:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 64
    iget-object v0, p0, Lcom/yelp/android/serializable/FeedItem;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 65
    iget-object v0, p0, Lcom/yelp/android/serializable/FeedItem;->h:Lcom/yelp/android/ui/activities/ActivityType;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 66
    return-void
.end method
