.class final Lcom/yelp/android/appdata/af;
.super Lcom/yelp/android/serializable/az;
.source "RemoteConfigPreferences.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/serializable/az",
        "<",
        "Lcom/yelp/android/appdata/RemoteConfigPreferences;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 478
    invoke-direct {p0}, Lcom/yelp/android/serializable/az;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/RemoteConfigPreferences;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 487
    new-instance v3, Lcom/yelp/android/appdata/RemoteConfigPreferences;

    invoke-direct {v3}, Lcom/yelp/android/appdata/RemoteConfigPreferences;-><init>()V

    .line 488
    const-string/jumbo v0, "locale"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->a(Lcom/yelp/android/appdata/RemoteConfigPreferences;Ljava/lang/String;)Ljava/lang/String;

    .line 489
    const-string/jumbo v0, "alerts"

    const/4 v4, 0x3

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 490
    invoke-static {}, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;->values()[Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    move-result-object v4

    .line 491
    if-ltz v0, :cond_0

    array-length v5, v4

    if-ge v0, v5, :cond_0

    .line 492
    aget-object v0, v4, v0

    invoke-static {v3, v0}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->a(Lcom/yelp/android/appdata/RemoteConfigPreferences;Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;)Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    .line 494
    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;->values()[Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;

    move-result-object v0

    .line 495
    const-string/jumbo v4, "alert_from_location"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 496
    if-ltz v4, :cond_8

    array-length v5, v0

    if-ge v4, v5, :cond_8

    .line 497
    aget-object v0, v0, v4

    invoke-static {v3, v0}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->a(Lcom/yelp/android/appdata/RemoteConfigPreferences;Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;)Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;

    .line 501
    :goto_0
    const-string/jumbo v0, "twitter_status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_9

    move v0, v1

    :goto_1
    invoke-static {v3, v0}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->a(Lcom/yelp/android/appdata/RemoteConfigPreferences;Z)Z

    .line 502
    const-string/jumbo v0, "facebook_status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_a

    :goto_2
    invoke-static {v3, v1}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->b(Lcom/yelp/android/appdata/RemoteConfigPreferences;Z)Z

    .line 503
    const-string/jumbo v0, "share_awards"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 504
    const-string/jumbo v0, "share_awards"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->a(Lcom/yelp/android/appdata/RemoteConfigPreferences;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 506
    :cond_1
    const-string/jumbo v0, "tip_alerts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 507
    const-string/jumbo v0, "tip_alerts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 508
    new-instance v1, Lcom/yelp/android/appdata/an;

    invoke-direct {v1, v0}, Lcom/yelp/android/appdata/an;-><init>(I)V

    invoke-static {v3, v1}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->a(Lcom/yelp/android/appdata/RemoteConfigPreferences;Lcom/yelp/android/appdata/an;)Lcom/yelp/android/appdata/an;

    .line 511
    :cond_2
    const-string/jumbo v0, "photo_alerts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 512
    const-string/jumbo v0, "photo_alerts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 513
    new-instance v1, Lcom/yelp/android/appdata/am;

    invoke-direct {v1, v0}, Lcom/yelp/android/appdata/am;-><init>(I)V

    invoke-static {v3, v1}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->a(Lcom/yelp/android/appdata/RemoteConfigPreferences;Lcom/yelp/android/appdata/am;)Lcom/yelp/android/appdata/am;

    .line 515
    :cond_3
    const-string/jumbo v0, "compliment_alerts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 516
    const-string/jumbo v0, "compliment_alerts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 517
    new-instance v1, Lcom/yelp/android/appdata/ak;

    invoke-direct {v1, v0}, Lcom/yelp/android/appdata/ak;-><init>(I)V

    invoke-static {v3, v1}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->a(Lcom/yelp/android/appdata/RemoteConfigPreferences;Lcom/yelp/android/appdata/ak;)Lcom/yelp/android/appdata/ak;

    .line 520
    :cond_4
    const-string/jumbo v0, "check_in_comment_other_threads_alerts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 521
    const-string/jumbo v0, "check_in_comment_other_threads_alerts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 522
    new-instance v1, Lcom/yelp/android/appdata/ah;

    invoke-direct {v1, v0}, Lcom/yelp/android/appdata/ah;-><init>(I)V

    invoke-static {v3, v1}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->a(Lcom/yelp/android/appdata/RemoteConfigPreferences;Lcom/yelp/android/appdata/ah;)Lcom/yelp/android/appdata/ah;

    .line 525
    :cond_5
    const-string/jumbo v0, "message_alerts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 526
    const-string/jumbo v0, "message_alerts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 527
    new-instance v1, Lcom/yelp/android/appdata/al;

    invoke-direct {v1, v0}, Lcom/yelp/android/appdata/al;-><init>(I)V

    invoke-static {v3, v1}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->a(Lcom/yelp/android/appdata/RemoteConfigPreferences;Lcom/yelp/android/appdata/al;)Lcom/yelp/android/appdata/al;

    .line 530
    :cond_6
    const-string/jumbo v0, "preview_message_text"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->b(Lcom/yelp/android/appdata/RemoteConfigPreferences;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 532
    const-string/jumbo v0, "check_in_comment_alerts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 533
    const-string/jumbo v0, "check_in_comment_alerts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 534
    new-instance v1, Lcom/yelp/android/appdata/ag;

    invoke-direct {v1, v0}, Lcom/yelp/android/appdata/ag;-><init>(I)V

    invoke-static {v3, v1}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->a(Lcom/yelp/android/appdata/RemoteConfigPreferences;Lcom/yelp/android/appdata/ag;)Lcom/yelp/android/appdata/ag;

    .line 537
    :cond_7
    const-string/jumbo v0, "check_in_feedback_alerts"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 539
    new-instance v1, Lcom/yelp/android/appdata/ai;

    invoke-direct {v1, v0}, Lcom/yelp/android/appdata/ai;-><init>(I)V

    invoke-static {v3, v1}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->a(Lcom/yelp/android/appdata/RemoteConfigPreferences;Lcom/yelp/android/appdata/ai;)Lcom/yelp/android/appdata/ai;

    .line 540
    return-object v3

    .line 499
    :cond_8
    sget-object v0, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;->NONE:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;

    invoke-static {v3, v0}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->a(Lcom/yelp/android/appdata/RemoteConfigPreferences;Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;)Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;

    goto/16 :goto_0

    :cond_9
    move v0, v2

    .line 501
    goto/16 :goto_1

    :cond_a
    move v1, v2

    .line 502
    goto/16 :goto_2
.end method

.method public a(I)[Lcom/yelp/android/appdata/RemoteConfigPreferences;
    .locals 1

    .prologue
    .line 482
    new-array v0, p1, [Lcom/yelp/android/appdata/RemoteConfigPreferences;

    return-object v0
.end method

.method public synthetic b(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 478
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/af;->a(I)[Lcom/yelp/android/appdata/RemoteConfigPreferences;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 478
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/af;->a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/RemoteConfigPreferences;

    move-result-object v0

    return-object v0
.end method
