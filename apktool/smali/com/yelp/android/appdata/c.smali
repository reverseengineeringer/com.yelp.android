.class public Lcom/yelp/android/appdata/c;
.super Lcom/yelp/android/appdata/d;
.source "ApplicationSettings.java"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Lcom/yelp/android/appdata/ApiPreferences;

.field private e:J

.field private f:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/yelp/android/appdata/ApiPreferences;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 196
    invoke-direct {p0, p1}, Lcom/yelp/android/appdata/d;-><init>(Landroid/content/Context;)V

    .line 192
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/yelp/android/appdata/c;->e:J

    .line 193
    iput-boolean v2, p0, Lcom/yelp/android/appdata/c;->f:Z

    .line 197
    invoke-direct {p0}, Lcom/yelp/android/appdata/c;->al()V

    .line 198
    iput-boolean v2, p0, Lcom/yelp/android/appdata/c;->c:Z

    .line 199
    iput-object p2, p0, Lcom/yelp/android/appdata/c;->d:Lcom/yelp/android/appdata/ApiPreferences;

    .line 200
    return-void
.end method

.method private static a(Lcom/yelp/android/appdata/b;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "should_show_whats_new_prompt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/appdata/b;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/appdata/b;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private ak()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 577
    const-string/jumbo v0, "StoreNotificationsPrefs"

    invoke-direct {p0, v0}, Lcom/yelp/android/appdata/c;->f(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private al()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 595
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "preferences_version"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 597
    iget-object v0, p0, Lcom/yelp/android/appdata/c;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 599
    const-string/jumbo v1, "partnerXref"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 600
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 601
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "partnerXref"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 602
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->ah()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "partnerXref"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 604
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "preferences_version"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 606
    :cond_1
    return-void
.end method

.method private f(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/yelp/android/appdata/c;->a:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 217
    return-object v0
.end method

.method private g(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 581
    const-string/jumbo v0, "StoreManageSettings"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public A()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 614
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "elite_prompt_shown"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 615
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "elite_prompt_shown"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 619
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public B()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 629
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "photo_prompt_shown"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 630
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "photo_prompt_shown"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 634
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public C()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 639
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "update_prompt_app_launches_between_update_prompts"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 641
    sget-object v2, Lcom/yelp/android/appdata/Features;->update_prompt:Lcom/yelp/android/appdata/Features;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yelp/android/appdata/Features;->isEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->i()I

    move-result v2

    rem-int v1, v2, v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/yelp/android/appdata/c;->f:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public D()Lcom/yelp/android/serializable/UpdatePrompt;
    .locals 4

    .prologue
    .line 648
    new-instance v0, Lcom/yelp/android/serializable/UpdatePrompt;

    invoke-direct {v0}, Lcom/yelp/android/serializable/UpdatePrompt;-><init>()V

    .line 649
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "update_prompt_message"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/UpdatePrompt;->a(Ljava/lang/String;)V

    .line 650
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "update_prompt_app_launches_between_update_prompts"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/UpdatePrompt;->a(I)V

    .line 653
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/yelp/android/appdata/c;->f:Z

    .line 654
    return-object v0
.end method

.method public E()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 667
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v1

    .line 668
    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v2

    if-nez v2, :cond_1

    .line 676
    :cond_0
    :goto_0
    return v0

    .line 671
    :cond_1
    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/co;->a()Ljava/lang/String;

    move-result-object v1

    .line 672
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

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

    .line 674
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

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

    .line 676
    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->G()Lcom/yelp/android/serializable/PrivacyPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public F()V
    .locals 4

    .prologue
    .line 690
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->a()Ljava/lang/String;

    move-result-object v0

    .line 691
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->b()Landroid/content/SharedPreferences$Editor;

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

    .line 692
    return-void
.end method

.method public G()Lcom/yelp/android/serializable/PrivacyPolicy;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 711
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "share_profile_story"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 712
    if-nez v2, :cond_0

    .line 726
    :goto_0
    return-object v0

    .line 715
    :cond_0
    new-instance v1, Lcom/yelp/android/serializable/PrivacyPolicy;

    invoke-direct {v1}, Lcom/yelp/android/serializable/PrivacyPolicy;-><init>()V

    .line 716
    invoke-virtual {v1, v2}, Lcom/yelp/android/serializable/PrivacyPolicy;->a(Ljava/lang/String;)V

    .line 717
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "share_profile_source"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/serializable/PrivacyPolicy;->b(Ljava/lang/String;)V

    .line 718
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "share_profile_time"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/serializable/PrivacyPolicy;->c(Ljava/lang/String;)V

    .line 719
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "share_demo_story"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/serializable/PrivacyPolicy;->d(Ljava/lang/String;)V

    .line 720
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "share_demo_source"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/serializable/PrivacyPolicy;->e(Ljava/lang/String;)V

    .line 722
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "share_demo_time"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/serializable/PrivacyPolicy;->f(Ljava/lang/String;)V

    .line 723
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "share_basic_story"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/serializable/PrivacyPolicy;->g(Ljava/lang/String;)V

    .line 724
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "share_basic_source"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/serializable/PrivacyPolicy;->h(Ljava/lang/String;)V

    .line 725
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "share_basic_time"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/serializable/PrivacyPolicy;->i(Ljava/lang/String;)V

    move-object v0, v1

    .line 726
    goto :goto_0
.end method

.method public H()V
    .locals 3

    .prologue
    .line 730
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "cant_buy_reviews_dismissed"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 731
    return-void
.end method

.method public I()Z
    .locals 3

    .prologue
    .line 734
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "cant_buy_reviews_dismissed"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public J()V
    .locals 1

    .prologue
    .line 738
    const-string/jumbo v0, "biz_page_views"

    invoke-direct {p0, v0}, Lcom/yelp/android/appdata/c;->g(Ljava/lang/String;)I

    .line 739
    return-void
.end method

.method public K()I
    .locals 3

    .prologue
    .line 742
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "biz_page_views"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public L()J
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 746
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "cant_buy_reviews_first_launch_time"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 747
    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 748
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 749
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "cant_buy_reviews_first_launch_time"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 751
    :cond_0
    return-wide v0
.end method

.method public M()J
    .locals 4

    .prologue
    .line 757
    iget-wide v0, p0, Lcom/yelp/android/appdata/c;->e:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 758
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "last_launch_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/appdata/c;->e:J

    .line 762
    :cond_0
    iget-wide v0, p0, Lcom/yelp/android/appdata/c;->e:J

    return-wide v0
.end method

.method public N()Z
    .locals 3

    .prologue
    .line 771
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "appwidget_is_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public O()I
    .locals 3

    .prologue
    .line 793
    invoke-direct {p0}, Lcom/yelp/android/appdata/c;->ak()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "messages_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public P()I
    .locals 3

    .prologue
    .line 797
    invoke-direct {p0}, Lcom/yelp/android/appdata/c;->ak()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "alerts_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public Q()Lcom/yelp/android/serializable/ReservationFilter;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 811
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v2, "saved_reservation_info"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 812
    if-eqz v0, :cond_0

    .line 814
    :try_start_0
    sget-object v2, Lcom/yelp/android/serializable/ReservationFilter;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/ReservationFilter;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 819
    :goto_0
    return-object v0

    .line 815
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 816
    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 819
    goto :goto_0
.end method

.method public R()J
    .locals 4

    .prologue
    .line 828
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "cached_search_cache_time"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public S()I
    .locals 3

    .prologue
    .line 832
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "cached_search_scroll_position_index"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public T()I
    .locals 3

    .prologue
    .line 836
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "cached_search_scroll_position_top"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public U()Lcom/yelp/android/serializable/CachedSearch;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 854
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 855
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->R()J

    move-result-wide v4

    .line 856
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_0

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x15180

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 858
    :goto_0
    if-eqz v0, :cond_1

    .line 859
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->V()V

    .line 875
    :goto_1
    return-object v1

    .line 856
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 863
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v2, "cached_search_json"

    const-string/jumbo v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 865
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 867
    :try_start_0
    sget-object v2, Lcom/yelp/android/serializable/CachedSearch;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/CachedSearch;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object v1, v0

    .line 875
    goto :goto_1

    .line 868
    :catch_0
    move-exception v0

    .line 869
    const-string/jumbo v2, "ApplicationSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not deserialize CachedSearch. Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;)I

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method

.method public V()V
    .locals 2

    .prologue
    .line 879
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->b()Landroid/content/SharedPreferences$Editor;

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

    const-string/jumbo v1, "cached_search_json"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 890
    return-void
.end method

.method public W()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 905
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "first_translation_prompt_shown"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 906
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "first_translation_prompt_shown"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 909
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public X()Ljava/util/Locale;
    .locals 4

    .prologue
    .line 921
    const-class v0, Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "locale_for_gcm_id"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/util/d;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    return-object v0
.end method

.method public Y()V
    .locals 1

    .prologue
    .line 926
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/appdata/c;->f:Z

    .line 927
    return-void
.end method

.method public Z()Ljava/lang/String;
    .locals 3

    .prologue
    .line 940
    iget-boolean v0, p0, Lcom/yelp/android/appdata/c;->c:Z

    if-nez v0, :cond_0

    .line 941
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->ai()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "preinstalled_cohort"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/appdata/c;->b:Ljava/lang/String;

    .line 942
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/appdata/c;->c:Z

    .line 945
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method a()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 210
    const-string/jumbo v0, "StoreManageSettings"

    invoke-direct {p0, v0}, Lcom/yelp/android/appdata/c;->f(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "days_until_rate_prompt"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 348
    return-void
.end method

.method public a(II)V
    .locals 2

    .prologue
    .line 893
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "cached_search_scroll_position_index"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "cached_search_scroll_position_top"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 897
    return-void
.end method

.method public a(J)V
    .locals 3

    .prologue
    .line 766
    iput-wide p1, p0, Lcom/yelp/android/appdata/c;->e:J

    .line 767
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "last_launch_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 768
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/b;Z)V
    .locals 2

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Lcom/yelp/android/appdata/c;->a(Lcom/yelp/android/appdata/b;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 288
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/CachedSearch;J)V
    .locals 6

    .prologue
    .line 840
    const/4 v0, 0x0

    .line 842
    :try_start_0
    invoke-virtual {p1}, Lcom/yelp/android/serializable/CachedSearch;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 846
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "cached_search_json"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "cached_search_cache_time"

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 850
    return-void

    .line 843
    :catch_0
    move-exception v1

    .line 844
    const-string/jumbo v2, "ApplicationSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not serialize CachedSearch. Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/serializable/PrivacyPolicy;)V
    .locals 3

    .prologue
    .line 695
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 696
    const-string/jumbo v1, "share_profile_story"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PrivacyPolicy;->i()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "share_profile_source"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PrivacyPolicy;->h()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "share_profile_time"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PrivacyPolicy;->g()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "share_demo_story"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PrivacyPolicy;->f()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "share_demo_source"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PrivacyPolicy;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "share_demo_time"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PrivacyPolicy;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "share_basic_story"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PrivacyPolicy;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "share_basic_source"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PrivacyPolicy;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "share_basic_time"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PrivacyPolicy;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 706
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/ReservationFilter;)V
    .locals 3

    .prologue
    .line 802
    :try_start_0
    invoke-virtual {p1}, Lcom/yelp/android/serializable/ReservationFilter;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 803
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "saved_reservation_info"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 807
    :goto_0
    return-void

    .line 804
    :catch_0
    move-exception v0

    .line 805
    const-string/jumbo v0, "ApplicationSettings"

    const-string/jumbo v1, "Could not serialize reservationfilter"

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/serializable/UpdatePrompt;)V
    .locals 3

    .prologue
    .line 658
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 659
    const-string/jumbo v1, "update_prompt_message"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/UpdatePrompt;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "update_prompt_app_launches_between_update_prompts"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/UpdatePrompt;->a()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 664
    return-void
.end method

.method public declared-synchronized a(Lcom/yelp/android/serializable/j;)V
    .locals 3

    .prologue
    .line 530
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 531
    if-eqz p1, :cond_0

    .line 532
    const-string/jumbo v1, "login_valid"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 533
    const-string/jumbo v1, "login_first_name"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/j;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 534
    const-string/jumbo v1, "login_last_name"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 535
    const-string/jumbo v1, "login_name"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/j;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 536
    const-string/jumbo v1, "login_name_without_period"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/j;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 537
    const-string/jumbo v1, "login_user_id"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/j;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 538
    const-string/jumbo v1, "login_location"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/j;->h()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 539
    const-string/jumbo v1, "login_confirmed"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/j;->f()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 540
    const-string/jumbo v1, "login_ismale"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/j;->i()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 541
    const-string/jumbo v1, "login_elite"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/j;->j()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 542
    const-string/jumbo v1, "login_version"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/j;->l()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 556
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    monitor-exit p0

    return-void

    .line 544
    :cond_0
    :try_start_1
    const-string/jumbo v1, "login_valid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 545
    const-string/jumbo v1, "login_first_name"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 546
    const-string/jumbo v1, "login_last_name"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 547
    const-string/jumbo v1, "login_name"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 548
    const-string/jumbo v1, "login_name_without_period"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 549
    const-string/jumbo v1, "login_user_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 550
    const-string/jumbo v1, "login_session_expiry"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 551
    const-string/jumbo v1, "login_location"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 552
    const-string/jumbo v1, "login_confirmed"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 553
    const-string/jumbo v1, "login_ismale"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 554
    const-string/jumbo v1, "login_version"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 530
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "gcm_registration_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 254
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "app_version_for_gcm_id"

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-static {v2}, Lcom/yelp/android/appdata/AppData;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 257
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "os_version_for_gcm_id"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 258
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/RichSearchSuggestion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1012
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1013
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/RichSearchSuggestion;

    .line 1015
    :try_start_0
    invoke-virtual {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion;->e()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1016
    :catch_0
    move-exception v0

    .line 1017
    const-string/jumbo v3, "ApplicationSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Could not serialize RichSearchSuggestions. Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1023
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "rich_search_suggestion_cache_for_nearby_header"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "rich_search_suggestion_cache_for_nearby_header_time"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1029
    return-void
.end method

.method public a(Ljava/util/Locale;)V
    .locals 3

    .prologue
    .line 913
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "locale_for_gcm_id"

    invoke-static {p1}, Lcom/yelp/android/util/d;->a(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 916
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "gcm_id_registered_with_yelp"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 266
    return-void
.end method

.method public aa()I
    .locals 3

    .prologue
    .line 963
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "media_selected"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public ab()I
    .locals 3

    .prologue
    .line 971
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "current_elite_year"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public ac()Z
    .locals 3

    .prologue
    .line 981
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "should_update_app_start_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public ad()Z
    .locals 3

    .prologue
    .line 991
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "is_onboarding_flow_complete"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public ae()Ljava/lang/String;
    .locals 3

    .prologue
    .line 999
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "dfp_account"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public af()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/RichSearchSuggestion;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    .line 1032
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1035
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "rich_search_suggestion_cache_for_nearby_header_time"

    invoke-interface {v1, v2, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1037
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1038
    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 1039
    cmp-long v4, v2, v6

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v4}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1041
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->ag()V

    .line 1061
    :cond_1
    :goto_0
    return-object v0

    .line 1045
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "rich_search_suggestion_cache_for_nearby_header"

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1047
    invoke-static {v1}, Lcom/yelp/android/util/StringUtils;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1049
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1050
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1051
    sget-object v3, Lcom/yelp/android/serializable/RichSearchSuggestion;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1050
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1054
    :catch_0
    move-exception v1

    .line 1055
    const-string/jumbo v2, "ApplicationSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not serialize RichSearchSuggestions. Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public ag()V
    .locals 2

    .prologue
    .line 1065
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "rich_search_suggestion_cache_for_nearby_header"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "rich_search_suggestion_cache_for_nearby_header_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1069
    return-void
.end method

.method public b(J)J
    .locals 3

    .prologue
    .line 1003
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "background_location_watchdog_timeout"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method b()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized b(I)V
    .locals 2

    .prologue
    .line 492
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 493
    const-string/jumbo v1, "bookmark_sort_method"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 494
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    monitor-exit p0

    return-void

    .line 492
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "last_app_version_name"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 277
    return-void
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "rate_app_dialog_dismissed"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 356
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

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
    .line 779
    invoke-direct {p0}, Lcom/yelp/android/appdata/c;->ak()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "messages_count"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 783
    return-void
.end method

.method public c(J)V
    .locals 3

    .prologue
    .line 1007
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "background_location_watchdog_timeout"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1008
    return-void
.end method

.method public declared-synchronized c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 502
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 503
    const-string/jumbo v1, "login_emailaddress"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 504
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    monitor-exit p0

    return-void

    .line 502
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Z)V
    .locals 2

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "updated_privacy_policy_when_installed_app"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 360
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

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
    .line 786
    invoke-direct {p0}, Lcom/yelp/android/appdata/c;->ak()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "alerts_count"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 790
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 995
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "dfp_account"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 996
    return-void
.end method

.method public d(Z)V
    .locals 2

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "login_screen_was_displayed"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 368
    return-void
.end method

.method public e()I
    .locals 3

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "os_version_for_gcm_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public e(I)V
    .locals 2

    .prologue
    .line 953
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "media_selected"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 954
    return-void
.end method

.method public e(Z)V
    .locals 2

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "share_achievements_facebook"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 413
    return-void
.end method

.method public f(I)V
    .locals 2

    .prologue
    .line 967
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "current_elite_year"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 968
    return-void
.end method

.method public f(Z)V
    .locals 2

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "share_achievements_twitter"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 443
    return-void
.end method

.method public f()Z
    .locals 3

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "gcm_id_registered_with_yelp"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 3

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "last_app_version_name"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g(Z)V
    .locals 2

    .prologue
    .line 560
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "privacy_policy_dialog_displayed"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 561
    return-void
.end method

.method public h(Z)V
    .locals 4

    .prologue
    .line 680
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    .line 681
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 682
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->a()Ljava/lang/String;

    move-result-object v0

    .line 683
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->b()Landroid/content/SharedPreferences$Editor;

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

    .line 687
    :cond_0
    return-void
.end method

.method public h()Z
    .locals 3

    .prologue
    .line 280
    new-instance v0, Lcom/yelp/android/appdata/b;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/appdata/AppData;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/b;-><init>(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v0}, Lcom/yelp/android/appdata/c;->a(Lcom/yelp/android/appdata/b;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public i()I
    .locals 3

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "start_count"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public i(Z)V
    .locals 2

    .prologue
    .line 775
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "appwidget_is_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 776
    return-void
.end method

.method public j()Ljava/util/Date;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 332
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "millis_installed"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 333
    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 334
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 335
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "millis_installed"

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 338
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method public j(Z)V
    .locals 2

    .prologue
    .line 975
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "should_update_app_start_count"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 978
    return-void
.end method

.method public k()I
    .locals 3

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "days_until_rate_prompt"

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public k(Z)V
    .locals 2

    .prologue
    .line 985
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "is_onboarding_flow_complete"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 988
    return-void
.end method

.method public l()Z
    .locals 3

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "rate_app_dialog_dismissed"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public m()Z
    .locals 3

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "updated_privacy_policy_when_installed_app"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 3

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "login_screen_was_displayed"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public o()Z
    .locals 3

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "background_location_opt_in_was_displayed_v2"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public p()V
    .locals 3

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "background_location_opt_in_was_displayed_v2"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 380
    return-void
.end method

.method public q()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 389
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->p()Lcom/yelp/android/serializable/User;

    move-result-object v0

    if-nez v0, :cond_0

    .line 390
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 399
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v4, "share_achievements_facebook"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 400
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v4, "share_achievements_facebook"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 403
    :goto_1
    return v0

    .line 392
    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->p()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->o()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 400
    goto :goto_1

    .line 403
    :cond_2
    iget-object v3, p0, Lcom/yelp/android/appdata/c;->d:Lcom/yelp/android/appdata/ApiPreferences;

    sget-object v4, Lcom/yelp/android/appdata/ApiPreferences$DeviceAwarePreference;->SHARE_AWARDS:Lcom/yelp/android/appdata/ApiPreferences$DeviceAwarePreference;

    invoke-virtual {v3, v4}, Lcom/yelp/android/appdata/ApiPreferences;->a(Lcom/yelp/android/appdata/ApiPreferences$DeviceAwarePreference;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method public r()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 422
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->p()Lcom/yelp/android/serializable/User;

    move-result-object v0

    if-nez v0, :cond_0

    .line 423
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 429
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v4, "share_achievements_twitter"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 430
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v4, "share_achievements_twitter"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 433
    :goto_1
    return v0

    .line 425
    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->p()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->p()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 430
    goto :goto_1

    .line 433
    :cond_2
    iget-object v3, p0, Lcom/yelp/android/appdata/c;->d:Lcom/yelp/android/appdata/ApiPreferences;

    sget-object v4, Lcom/yelp/android/appdata/ApiPreferences$DeviceAwarePreference;->SHARE_AWARDS:Lcom/yelp/android/appdata/ApiPreferences$DeviceAwarePreference;

    invoke-virtual {v3, v4}, Lcom/yelp/android/appdata/ApiPreferences;->a(Lcom/yelp/android/appdata/ApiPreferences$DeviceAwarePreference;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method public s()I
    .locals 2

    .prologue
    .line 454
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    .line 455
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    const-string/jumbo v0, "logged_in_start_count"

    invoke-direct {p0, v0}, Lcom/yelp/android/appdata/c;->g(Ljava/lang/String;)I

    .line 458
    :cond_0
    const-string/jumbo v0, "start_count"

    invoke-direct {p0, v0}, Lcom/yelp/android/appdata/c;->g(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public t()I
    .locals 3

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "logged_in_start_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public declared-synchronized u()I
    .locals 3

    .prologue
    .line 488
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

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

.method public declared-synchronized v()Ljava/lang/String;
    .locals 3

    .prologue
    .line 498
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

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

.method public declared-synchronized w()Lcom/yelp/android/serializable/j;
    .locals 15

    .prologue
    const/4 v0, 0x0

    .line 508
    monitor-enter p0

    .line 509
    :try_start_0
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v12

    .line 510
    const-string/jumbo v1, "login_valid"

    const/4 v2, 0x0

    invoke-interface {v12, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 511
    new-instance v0, Lcom/yelp/android/serializable/j;

    const-string/jumbo v1, "login_first_name"

    const-string/jumbo v2, ""

    invoke-interface {v12, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "login_last_name"

    const-string/jumbo v3, ""

    invoke-interface {v12, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "login_name"

    const-string/jumbo v4, ""

    invoke-interface {v12, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "login_name_without_period"

    const-string/jumbo v5, ""

    invoke-interface {v12, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "login_user_id"

    const-string/jumbo v6, ""

    invoke-interface {v12, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "login_confirmed"

    const/4 v7, 0x0

    invoke-interface {v12, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string/jumbo v7, "login_elite"

    const/4 v8, 0x0

    invoke-interface {v12, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    const/4 v8, 0x0

    const-string/jumbo v9, "login_location"

    const-string/jumbo v10, ""

    invoke-interface {v12, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const-string/jumbo v11, "login_ismale"

    const/4 v13, 0x1

    invoke-interface {v12, v11, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    const-string/jumbo v13, "login_version"

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    invoke-direct/range {v0 .. v12}, Lcom/yelp/android/serializable/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Lcom/yelp/android/serializable/i;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    :cond_0
    monitor-exit p0

    return-object v0

    .line 508
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public x()I
    .locals 3

    .prologue
    .line 564
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "update_privacy_policy_request_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public y()V
    .locals 3

    .prologue
    .line 568
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->x()I

    move-result v0

    .line 569
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "update_privacy_policy_request_count"

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 570
    return-void
.end method

.method public z()Z
    .locals 3

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/yelp/android/appdata/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "privacy_policy_dialog_displayed"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
