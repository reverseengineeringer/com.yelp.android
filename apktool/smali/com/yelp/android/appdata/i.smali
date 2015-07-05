.class public Lcom/yelp/android/appdata/i;
.super Lcom/yelp/android/appdata/j;
.source "ApplicationSettings.java"


# instance fields
.field private c:J

.field private d:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/yelp/android/appdata/j;-><init>(Landroid/content/Context;)V

    .line 127
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/yelp/android/appdata/i;->c:J

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/appdata/i;->d:Z

    .line 132
    invoke-direct {p0}, Lcom/yelp/android/appdata/i;->ae()V

    .line 133
    return-void
.end method

.method private ac()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 428
    const-string/jumbo v0, "StoreFBManageSettings"

    invoke-direct {p0, v0}, Lcom/yelp/android/appdata/i;->d(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private ad()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 432
    const-string/jumbo v0, "StoreNotificationsPrefs"

    invoke-direct {p0, v0}, Lcom/yelp/android/appdata/i;->d(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private ae()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 450
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "preferences_version"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 452
    iget-object v0, p0, Lcom/yelp/android/appdata/i;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 454
    const-string/jumbo v1, "partnerXref"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 455
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 456
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "partnerXref"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 457
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->Z()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "partnerXref"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 459
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "preferences_version"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 461
    :cond_1
    return-void
.end method

.method private d(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/yelp/android/appdata/i;->b:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 142
    return-object v0
.end method

.method private e(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 436
    const-string/jumbo v0, "StoreManageSettings"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/i;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public A()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 494
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "update_prompt_app_launches_between_update_prompts"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 496
    sget-object v2, Lcom/yelp/android/appdata/Features;->update_prompt:Lcom/yelp/android/appdata/Features;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yelp/android/appdata/Features;->isEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->g()I

    move-result v2

    rem-int v1, v2, v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/yelp/android/appdata/i;->d:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public B()Lcom/yelp/android/serializable/UpdatePrompt;
    .locals 4

    .prologue
    .line 503
    new-instance v0, Lcom/yelp/android/serializable/UpdatePrompt;

    invoke-direct {v0}, Lcom/yelp/android/serializable/UpdatePrompt;-><init>()V

    .line 504
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "update_prompt_message"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/UpdatePrompt;->setMessage(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "update_prompt_app_launches_between_update_prompts"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/UpdatePrompt;->setAppLaunchesBetweenUpdatePrompts(I)V

    .line 508
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/yelp/android/appdata/i;->d:Z

    .line 509
    return-object v0
.end method

.method public C()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 521
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v1

    .line 522
    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v2

    if-nez v2, :cond_1

    .line 530
    :cond_0
    :goto_0
    return v0

    .line 525
    :cond_1
    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/dc;->b()Ljava/lang/String;

    move-result-object v1

    .line 526
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "privacy_policy_splash_accepted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 528
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->a()Landroid/content/SharedPreferences;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "show_privacy_policy_for_user"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 530
    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->E()Lcom/yelp/android/serializable/PrivacyPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public D()V
    .locals 4

    .prologue
    .line 543
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->b()Ljava/lang/String;

    move-result-object v0

    .line 544
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "privacy_policy_splash_accepted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 545
    return-void
.end method

.method public E()Lcom/yelp/android/serializable/PrivacyPolicy;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 564
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "share_profile_story"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 565
    if-nez v2, :cond_0

    .line 578
    :goto_0
    return-object v0

    .line 568
    :cond_0
    new-instance v1, Lcom/yelp/android/serializable/PrivacyPolicy;

    invoke-direct {v1}, Lcom/yelp/android/serializable/PrivacyPolicy;-><init>()V

    .line 569
    invoke-virtual {v1, v2}, Lcom/yelp/android/serializable/PrivacyPolicy;->setShareProfileStory(Ljava/lang/String;)V

    .line 570
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "share_profile_source"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/serializable/PrivacyPolicy;->setShareProfileSource(Ljava/lang/String;)V

    .line 571
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "share_profile_time"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/serializable/PrivacyPolicy;->setShareProfileTime(Ljava/lang/String;)V

    .line 572
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "share_demo_story"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/serializable/PrivacyPolicy;->setShareDemographicsStory(Ljava/lang/String;)V

    .line 573
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "share_demo_source"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/serializable/PrivacyPolicy;->setShareDemographicsSource(Ljava/lang/String;)V

    .line 574
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "share_demo_time"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/serializable/PrivacyPolicy;->setShareDemographicsTime(Ljava/lang/String;)V

    .line 575
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "share_basic_story"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/serializable/PrivacyPolicy;->setShareBasicInfoStory(Ljava/lang/String;)V

    .line 576
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "share_basic_source"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/serializable/PrivacyPolicy;->setShareBasicInfoSource(Ljava/lang/String;)V

    .line 577
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "share_basic_time"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/serializable/PrivacyPolicy;->setShareBasicInfoTime(Ljava/lang/String;)V

    move-object v0, v1

    .line 578
    goto :goto_0
.end method

.method public F()V
    .locals 3

    .prologue
    .line 582
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "cant_buy_reviews_dismissed"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 583
    return-void
.end method

.method public G()Z
    .locals 3

    .prologue
    .line 586
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "cant_buy_reviews_dismissed"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public H()V
    .locals 1

    .prologue
    .line 590
    const-string/jumbo v0, "biz_page_views"

    invoke-direct {p0, v0}, Lcom/yelp/android/appdata/i;->e(Ljava/lang/String;)I

    .line 591
    return-void
.end method

.method public I()I
    .locals 3

    .prologue
    .line 594
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "biz_page_views"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public J()J
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 598
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "cant_buy_reviews_first_launch_time"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 599
    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 600
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 601
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "cant_buy_reviews_first_launch_time"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 603
    :cond_0
    return-wide v0
.end method

.method public K()J
    .locals 4

    .prologue
    .line 609
    iget-wide v0, p0, Lcom/yelp/android/appdata/i;->c:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 610
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "last_launch_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/appdata/i;->c:J

    .line 614
    :cond_0
    iget-wide v0, p0, Lcom/yelp/android/appdata/i;->c:J

    return-wide v0
.end method

.method public L()I
    .locals 3

    .prologue
    .line 637
    invoke-direct {p0}, Lcom/yelp/android/appdata/i;->ad()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "messages_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public M()I
    .locals 3

    .prologue
    .line 641
    invoke-direct {p0}, Lcom/yelp/android/appdata/i;->ad()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "alerts_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public N()J
    .locals 4

    .prologue
    .line 649
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "cached_search_filter_id"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public O()I
    .locals 3

    .prologue
    .line 653
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "cached_search_offset"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public P()Ljava/lang/String;
    .locals 3

    .prologue
    .line 657
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "cached_search_cache_descriptor"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Q()J
    .locals 4

    .prologue
    .line 665
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "cached_search_cache_time"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public R()Ljava/lang/String;
    .locals 3

    .prologue
    .line 669
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "cached_search_search_term"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public S()Ljava/lang/String;
    .locals 3

    .prologue
    .line 673
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "cached_search_category_term"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public T()Ljava/lang/String;
    .locals 3

    .prologue
    .line 677
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "cached_search_nearby_term"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public U()I
    .locals 3

    .prologue
    .line 681
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "cached_search_scroll_position_index"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public V()I
    .locals 3

    .prologue
    .line 685
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "cached_search_scroll_position_top"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public W()V
    .locals 2

    .prologue
    .line 701
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "cached_search_filter_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "cached_search_filter_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "cached_search_offset"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "cached_search_cache_descriptor"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "cached_search_cache_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "cached_search_search_term"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "cached_search_category_term"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "cached_search_nearby_term"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "cached_search_scroll_position_index"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "cached_search_scroll_position_top"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 712
    return-void
.end method

.method public X()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 726
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "first_translation_prompt_shown"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 727
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "first_translation_prompt_shown"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 730
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public Y()V
    .locals 1

    .prologue
    .line 734
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/appdata/i;->d:Z

    .line 735
    return-void
.end method

.method a()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 136
    const-string/jumbo v0, "StoreManageSettings"

    invoke-direct {p0, v0}, Lcom/yelp/android/appdata/i;->d(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "days_until_rate_prompt"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 251
    return-void
.end method

.method public a(II)V
    .locals 2

    .prologue
    .line 715
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "cached_search_scroll_position_index"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "cached_search_scroll_position_top"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 718
    return-void
.end method

.method public a(J)V
    .locals 3

    .prologue
    .line 618
    iput-wide p1, p0, Lcom/yelp/android/appdata/i;->c:J

    .line 619
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "last_launch_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 620
    return-void
.end method

.method public a(JILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 690
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "cached_search_filter_id"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "cached_search_offset"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "cached_search_cache_descriptor"

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "cached_search_cache_time"

    invoke-interface {v0, v1, p5, p6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "cached_search_search_term"

    invoke-interface {v0, v1, p7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "cached_search_category_term"

    invoke-interface {v0, v1, p8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "cached_search_nearby_term"

    invoke-interface {v0, v1, p9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 698
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/PrivacyPolicy;)V
    .locals 3

    .prologue
    .line 548
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 549
    const-string/jumbo v1, "share_profile_story"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PrivacyPolicy;->getShareProfileStory()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "share_profile_source"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PrivacyPolicy;->getShareProfileSource()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "share_profile_time"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PrivacyPolicy;->getShareProfileTime()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "share_demo_story"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PrivacyPolicy;->getShareDemographicsStory()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "share_demo_source"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PrivacyPolicy;->getShareDemographicsSource()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "share_demo_time"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PrivacyPolicy;->getShareDemographicsTime()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "share_basic_story"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PrivacyPolicy;->getShareBasicInfoStory()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "share_basic_source"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PrivacyPolicy;->getShareBasicInfoSource()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "share_basic_time"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PrivacyPolicy;->getShareBasicInfoTime()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 559
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/UpdatePrompt;)V
    .locals 3

    .prologue
    .line 513
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 514
    const-string/jumbo v1, "update_prompt_message"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/UpdatePrompt;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "update_prompt_app_launches_between_update_prompts"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/UpdatePrompt;->getAppLaunchesBetweenUpdatePrompts()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 518
    return-void
.end method

.method public declared-synchronized a(Lcom/yelp/android/serializable/eq;)V
    .locals 3

    .prologue
    .line 365
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 366
    if-eqz p1, :cond_0

    .line 367
    const-string/jumbo v1, "login_valid"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 368
    const-string/jumbo v1, "login_first_name"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/eq;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 369
    const-string/jumbo v1, "login_last_name"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/eq;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 370
    const-string/jumbo v1, "login_user_id"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/eq;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 371
    const-string/jumbo v1, "login_location"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/eq;->f()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 372
    const-string/jumbo v1, "login_confirmed"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/eq;->d()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 373
    const-string/jumbo v1, "login_ismale"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/eq;->g()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 374
    const-string/jumbo v1, "login_elite"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/eq;->h()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 375
    const-string/jumbo v1, "login_version"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/eq;->i()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 388
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    monitor-exit p0

    return-void

    .line 378
    :cond_0
    :try_start_1
    const-string/jumbo v1, "login_valid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 379
    const-string/jumbo v1, "login_first_name"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 380
    const-string/jumbo v1, "login_last_name"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 381
    const-string/jumbo v1, "login_user_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 382
    const-string/jumbo v1, "login_session_expiry"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 383
    const-string/jumbo v1, "login_location"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 384
    const-string/jumbo v1, "login_confirmed"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 385
    const-string/jumbo v1, "login_ismale"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 386
    const-string/jumbo v1, "login_version"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 365
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "gcm_registration_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 179
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "app_version_for_gcm_id"

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-static {v2}, Lcom/yelp/android/appdata/AppData;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 181
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "os_version_for_gcm_id"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 182
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "gcm_id_registered_with_yelp"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 190
    return-void
.end method

.method public a(Ljava/lang/String;J)Z
    .locals 2

    .prologue
    .line 398
    invoke-direct {p0}, Lcom/yelp/android/appdata/i;->ac()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 399
    const-string/jumbo v1, "access_token"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 400
    const-string/jumbo v1, "expires_in"

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 401
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method b()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized b(I)V
    .locals 2

    .prologue
    .line 325
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 326
    const-string/jumbo v1, "bookmark_sort_method"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 327
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    monitor-exit p0

    return-void

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 335
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 336
    const-string/jumbo v1, "login_emailaddress"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 337
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    monitor-exit p0

    return-void

    .line 335
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "rate_app_dialog_dismissed"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 259
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "gcm_registration_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(I)V
    .locals 2

    .prologue
    .line 623
    invoke-direct {p0}, Lcom/yelp/android/appdata/i;->ad()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "messages_count"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 627
    return-void
.end method

.method public c(Z)V
    .locals 2

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "updated_privacy_policy_when_installed_app"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 263
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "app_version_for_gcm_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(I)V
    .locals 2

    .prologue
    .line 630
    invoke-direct {p0}, Lcom/yelp/android/appdata/i;->ad()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "alerts_count"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 634
    return-void
.end method

.method public d(Z)V
    .locals 2

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "login_screen_was_displayed"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 271
    return-void
.end method

.method public e()I
    .locals 3

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "os_version_for_gcm_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public e(Z)V
    .locals 2

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "privacy_policy_dialog_displayed"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 406
    return-void
.end method

.method public f(Z)V
    .locals 4

    .prologue
    .line 534
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    .line 535
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 536
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->b()Ljava/lang/String;

    move-result-object v0

    .line 537
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "show_privacy_policy_for_user"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 540
    :cond_0
    return-void
.end method

.method public f()Z
    .locals 3

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "gcm_id_registered_with_yelp"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public g()I
    .locals 3

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "start_count"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public h()Ljava/util/Date;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 235
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "millis_installed"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 236
    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 238
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "millis_installed"

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 241
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method public i()I
    .locals 3

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "days_until_rate_prompt"

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 3

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "rate_app_dialog_dismissed"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 3

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "updated_privacy_policy_when_installed_app"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 3

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "login_screen_was_displayed"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public m()I
    .locals 2

    .prologue
    .line 286
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    .line 287
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    const-string/jumbo v0, "logged_in_start_count"

    invoke-direct {p0, v0}, Lcom/yelp/android/appdata/i;->e(Ljava/lang/String;)I

    .line 290
    :cond_0
    const-string/jumbo v0, "start_count"

    invoke-direct {p0, v0}, Lcom/yelp/android/appdata/i;->e(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public n()I
    .locals 3

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "logged_in_start_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 317
    const-string/jumbo v0, "checkin_count"

    invoke-direct {p0, v0}, Lcom/yelp/android/appdata/i;->e(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized p()I
    .locals 3

    .prologue
    .line 321
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "bookmark_sort_method"

    sget-object v2, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->DISTANCE:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    invoke-virtual {v2}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized q()Ljava/lang/String;
    .locals 3

    .prologue
    .line 331
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "login_emailaddress"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public r()V
    .locals 2

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 342
    const-string/jumbo v1, "login_password"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 343
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 344
    return-void
.end method

.method public declared-synchronized s()Lcom/yelp/android/serializable/eq;
    .locals 13

    .prologue
    const/4 v0, 0x0

    .line 347
    monitor-enter p0

    .line 348
    :try_start_0
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->a()Landroid/content/SharedPreferences;

    move-result-object v10

    .line 349
    const-string/jumbo v1, "login_valid"

    const/4 v2, 0x0

    invoke-interface {v10, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    new-instance v0, Lcom/yelp/android/serializable/eq;

    const-string/jumbo v1, "login_first_name"

    const-string/jumbo v2, ""

    invoke-interface {v10, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "login_last_name"

    const-string/jumbo v3, ""

    invoke-interface {v10, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "login_user_id"

    const-string/jumbo v4, ""

    invoke-interface {v10, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "login_confirmed"

    const/4 v5, 0x0

    invoke-interface {v10, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string/jumbo v5, "login_elite"

    const/4 v6, 0x0

    invoke-interface {v10, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const/4 v6, 0x0

    const-string/jumbo v7, "login_location"

    const-string/jumbo v8, ""

    invoke-interface {v10, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string/jumbo v9, "login_ismale"

    const/4 v11, 0x1

    invoke-interface {v10, v9, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    const-string/jumbo v11, "login_version"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    invoke-direct/range {v0 .. v10}, Lcom/yelp/android/serializable/eq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Lcom/yelp/android/serializable/ep;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    :cond_0
    monitor-exit p0

    return-object v0

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public t()Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/yelp/android/appdata/i;->ac()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 393
    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "access_token"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "expires_in"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public u()I
    .locals 3

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "update_privacy_policy_request_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public v()V
    .locals 3

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->u()I

    move-result v0

    .line 414
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "update_privacy_policy_request_count"

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 415
    return-void
.end method

.method public w()Z
    .locals 3

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "privacy_policy_dialog_displayed"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public x()V
    .locals 1

    .prologue
    .line 422
    invoke-direct {p0}, Lcom/yelp/android/appdata/i;->ac()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 423
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 424
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 425
    return-void
.end method

.method public y()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 469
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "elite_prompt_shown"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 470
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "elite_prompt_shown"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 474
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public z()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 484
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "photo_prompt_shown"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 485
    invoke-virtual {p0}, Lcom/yelp/android/appdata/i;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "photo_prompt_shown"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 489
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
