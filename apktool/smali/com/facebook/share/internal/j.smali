.class public final Lcom/facebook/share/internal/j;
.super Ljava/lang/Object;
.source "ShareInternalUtility.java"


# direct methods
.method public static a(Ljava/lang/String;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 445
    const/4 v0, 0x0

    .line 447
    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 448
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v1, 0x1

    if-le v2, v3, :cond_0

    .line 449
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 450
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 454
    :cond_0
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method private static a(IILandroid/content/Intent;)Lcom/facebook/internal/a;
    .locals 1

    .prologue
    .line 234
    invoke-static {p2}, Lcom/facebook/internal/p;->b(Landroid/content/Intent;)Ljava/util/UUID;

    move-result-object v0

    .line 235
    if-nez v0, :cond_0

    .line 236
    const/4 v0, 0x0

    .line 239
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0, p0}, Lcom/facebook/internal/a;->a(Ljava/util/UUID;I)Lcom/facebook/internal/a;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Ljava/util/UUID;Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/internal/o$a;
    .locals 1

    .prologue
    .line 75
    invoke-static {p0, p1}, Lcom/facebook/share/internal/j;->b(Ljava/util/UUID;Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/internal/o$a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/facebook/f;)Lcom/facebook/share/internal/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/f",
            "<",
            "Lcom/yelp/android/ay/a$a;",
            ">;)",
            "Lcom/facebook/share/internal/h;"
        }
    .end annotation

    .prologue
    .line 201
    new-instance v0, Lcom/facebook/share/internal/j$1;

    invoke-direct {v0, p0, p0}, Lcom/facebook/share/internal/j$1;-><init>(Lcom/facebook/f;Lcom/facebook/f;)V

    return-object v0
.end method

.method public static a(Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/widget/LikeView$ObjectType;)Lcom/facebook/share/widget/LikeView$ObjectType;
    .locals 1

    .prologue
    .line 954
    if-ne p0, p1, :cond_1

    .line 964
    :cond_0
    :goto_0
    return-object p0

    .line 958
    :cond_1
    sget-object v0, Lcom/facebook/share/widget/LikeView$ObjectType;->UNKNOWN:Lcom/facebook/share/widget/LikeView$ObjectType;

    if-ne p0, v0, :cond_2

    move-object p0, p1

    .line 959
    goto :goto_0

    .line 960
    :cond_2
    sget-object v0, Lcom/facebook/share/widget/LikeView$ObjectType;->UNKNOWN:Lcom/facebook/share/widget/LikeView$ObjectType;

    if-eq p1, v0, :cond_0

    .line 964
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    const-string/jumbo v0, "completionGesture"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const-string/jumbo v0, "completionGesture"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "com.facebook.platform.extra.COMPLETION_GESTURE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/facebook/share/model/SharePhotoContent;Ljava/util/UUID;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/SharePhotoContent;",
            "Ljava/util/UUID;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhotoContent;->e()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 287
    :cond_0
    const/4 v0, 0x0

    .line 310
    :goto_0
    return-object v0

    .line 290
    :cond_1
    new-instance v1, Lcom/facebook/share/internal/j$3;

    invoke-direct {v1, p1}, Lcom/facebook/share/internal/j$3;-><init>(Ljava/util/UUID;)V

    invoke-static {v0, v1}, Lcom/facebook/internal/u;->a(Ljava/util/List;Lcom/facebook/internal/u$d;)Ljava/util/List;

    move-result-object v1

    .line 299
    new-instance v0, Lcom/facebook/share/internal/j$4;

    invoke-direct {v0}, Lcom/facebook/share/internal/j$4;-><init>()V

    invoke-static {v1, v0}, Lcom/facebook/internal/u;->a(Ljava/util/List;Lcom/facebook/internal/u$d;)Ljava/util/List;

    move-result-object v0

    .line 308
    invoke-static {v1}, Lcom/facebook/internal/o;->a(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONArray;Z)Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 379
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 380
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 381
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 382
    instance-of v3, v0, Lorg/json/JSONArray;

    if-eqz v3, :cond_1

    .line 383
    check-cast v0, Lorg/json/JSONArray;

    invoke-static {v0, p1}, Lcom/facebook/share/internal/j;->a(Lorg/json/JSONArray;Z)Lorg/json/JSONArray;

    move-result-object v0

    .line 387
    :cond_0
    :goto_1
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 380
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 384
    :cond_1
    instance-of v3, v0, Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    .line 385
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0, p1}, Lcom/facebook/share/internal/j;->a(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_1

    .line 390
    :cond_2
    return-object v2
.end method

.method public static a(Lcom/facebook/share/model/ShareOpenGraphContent;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphContent;->e()Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object v0

    .line 358
    new-instance v1, Lcom/facebook/share/internal/j$6;

    invoke-direct {v1}, Lcom/facebook/share/internal/j$6;-><init>()V

    invoke-static {v0, v1}, Lcom/facebook/share/internal/g;->a(Lcom/facebook/share/model/ShareOpenGraphAction;Lcom/facebook/share/internal/g$a;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/UUID;Lcom/facebook/share/model/ShareOpenGraphAction;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 319
    new-instance v1, Lcom/facebook/share/internal/j$5;

    invoke-direct {v1, p0, v0}, Lcom/facebook/share/internal/j$5;-><init>(Ljava/util/UUID;Ljava/util/ArrayList;)V

    invoke-static {p1, v1}, Lcom/facebook/share/internal/g;->a(Lcom/facebook/share/model/ShareOpenGraphAction;Lcom/facebook/share/internal/g$a;)Lorg/json/JSONObject;

    move-result-object v1

    .line 348
    invoke-static {v0}, Lcom/facebook/internal/o;->a(Ljava/util/Collection;)V

    .line 350
    return-object v1
.end method

.method public static a(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;
    .locals 9

    .prologue
    .line 396
    if-nez p0, :cond_0

    .line 397
    const/4 v0, 0x0

    .line 438
    :goto_0
    return-object v0

    .line 401
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 402
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 403
    invoke-virtual {p0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v6

    .line 404
    const/4 v0, 0x0

    move v4, v0

    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v4, v0, :cond_7

    .line 405
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 407
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 408
    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    .line 409
    check-cast v0, Lorg/json/JSONObject;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/share/internal/j;->a(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v0

    move-object v3, v0

    .line 414
    :goto_2
    invoke-static {v7}, Lcom/facebook/share/internal/j;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 416
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 417
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 419
    if-eqz p1, :cond_5

    .line 420
    if-eqz v0, :cond_2

    const-string/jumbo v8, "fbsdk"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 421
    invoke-virtual {v2, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 404
    :goto_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 410
    :cond_1
    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_9

    .line 411
    check-cast v0, Lorg/json/JSONArray;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/share/internal/j;->a(Lorg/json/JSONArray;Z)Lorg/json/JSONArray;

    move-result-object v0

    move-object v3, v0

    goto :goto_2

    .line 422
    :cond_2
    if-eqz v0, :cond_3

    const-string/jumbo v7, "og"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 423
    :cond_3
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 439
    :catch_0
    move-exception v0

    .line 440
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v1, "Failed to create json object from share content"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_4
    :try_start_1
    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 427
    :cond_5
    if-eqz v0, :cond_6

    const-string/jumbo v8, "fb"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 428
    invoke-virtual {v2, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 430
    :cond_6
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 434
    :cond_7
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 435
    const-string/jumbo v0, "data"

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_8
    move-object v0, v2

    .line 438
    goto/16 :goto_0

    :cond_9
    move-object v3, v0

    goto :goto_2
.end method

.method public static a(I)V
    .locals 1

    .prologue
    .line 244
    new-instance v0, Lcom/facebook/share/internal/j$2;

    invoke-direct {v0, p0}, Lcom/facebook/share/internal/j$2;-><init>(I)V

    invoke-static {p0, v0}, Lcom/facebook/internal/CallbackManagerImpl;->a(ILcom/facebook/internal/CallbackManagerImpl$a;)V

    .line 257
    return-void
.end method

.method static a(Lcom/facebook/f;Lcom/facebook/FacebookException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/f",
            "<",
            "Lcom/yelp/android/ay/a$a;",
            ">;",
            "Lcom/facebook/FacebookException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 520
    const-string/jumbo v0, "error"

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/share/internal/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    if-eqz p0, :cond_0

    .line 522
    invoke-interface {p0, p1}, Lcom/facebook/f;->a(Lcom/facebook/FacebookException;)V

    .line 524
    :cond_0
    return-void
.end method

.method static a(Lcom/facebook/f;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/f",
            "<",
            "Lcom/yelp/android/ay/a$a;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 491
    const-string/jumbo v0, "succeeded"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/share/internal/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    if-eqz p0, :cond_0

    .line 493
    new-instance v0, Lcom/yelp/android/ay/a$a;

    invoke-direct {v0, p1}, Lcom/yelp/android/ay/a$a;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/facebook/f;->a(Ljava/lang/Object;)V

    .line 495
    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 527
    invoke-static {}, Lcom/facebook/g;->f()Landroid/content/Context;

    move-result-object v0

    .line 528
    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->a(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    .line 529
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 530
    const-string/jumbo v2, "fb_share_dialog_outcome"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    if-eqz p1, :cond_0

    .line 536
    const-string/jumbo v2, "error_message"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    :cond_0
    const-string/jumbo v2, "fb_share_dialog_result"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/facebook/appevents/AppEventsLogger;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 539
    return-void
.end method

.method public static a(IILandroid/content/Intent;Lcom/facebook/share/internal/h;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 171
    invoke-static {p0, p1, p2}, Lcom/facebook/share/internal/j;->a(IILandroid/content/Intent;)Lcom/facebook/internal/a;

    move-result-object v1

    .line 172
    if-nez v1, :cond_1

    .line 173
    const/4 v0, 0x0

    .line 195
    :cond_0
    :goto_0
    return v0

    .line 176
    :cond_1
    invoke-virtual {v1}, Lcom/facebook/internal/a;->c()Ljava/util/UUID;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/internal/o;->a(Ljava/util/UUID;)V

    .line 177
    if-eqz p3, :cond_0

    .line 181
    invoke-static {p2}, Lcom/facebook/internal/p;->g(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/internal/p;->a(Landroid/os/Bundle;)Lcom/facebook/FacebookException;

    move-result-object v2

    .line 183
    if-eqz v2, :cond_3

    .line 184
    instance-of v3, v2, Lcom/facebook/FacebookOperationCanceledException;

    if-eqz v3, :cond_2

    .line 185
    invoke-virtual {p3, v1}, Lcom/facebook/share/internal/h;->a(Lcom/facebook/internal/a;)V

    goto :goto_0

    .line 187
    :cond_2
    invoke-virtual {p3, v1, v2}, Lcom/facebook/share/internal/h;->a(Lcom/facebook/internal/a;Lcom/facebook/FacebookException;)V

    goto :goto_0

    .line 191
    :cond_3
    invoke-static {p2}, Lcom/facebook/internal/p;->e(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v2

    .line 192
    invoke-virtual {p3, v1, v2}, Lcom/facebook/share/internal/h;->a(Lcom/facebook/internal/a;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private static b(Ljava/util/UUID;Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/internal/o$a;
    .locals 3

    .prologue
    .line 465
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 466
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto;->b()Landroid/net/Uri;

    move-result-object v2

    .line 467
    const/4 v0, 0x0

    .line 468
    if-eqz v1, :cond_1

    .line 469
    invoke-static {p0, v1}, Lcom/facebook/internal/o;->a(Ljava/util/UUID;Landroid/graphics/Bitmap;)Lcom/facebook/internal/o$a;

    move-result-object v0

    .line 478
    :cond_0
    :goto_0
    return-object v0

    .line 472
    :cond_1
    if-eqz v2, :cond_0

    .line 473
    invoke-static {p0, v2}, Lcom/facebook/internal/o;->a(Ljava/util/UUID;Landroid/net/Uri;)Lcom/facebook/internal/o$a;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    const-string/jumbo v0, "postId"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const-string/jumbo v0, "postId"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    :goto_0
    return-object v0

    .line 160
    :cond_0
    const-string/jumbo v0, "com.facebook.platform.extra.POST_ID"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    const-string/jumbo v0, "com.facebook.platform.extra.POST_ID"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 163
    :cond_1
    const-string/jumbo v0, "post_id"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static b(Lcom/facebook/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/f",
            "<",
            "Lcom/yelp/android/ay/a$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 482
    const-string/jumbo v0, "cancelled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/share/internal/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    if-eqz p0, :cond_0

    .line 484
    invoke-interface {p0}, Lcom/facebook/f;->a()V

    .line 486
    :cond_0
    return-void
.end method
