.class public Lcom/yelp/android/ui/activities/settings/ak;
.super Ljava/lang/Object;
.source "PreferenceScreenFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/settings/ao;


# instance fields
.field private final a:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    iput-object p1, p0, Lcom/yelp/android/ui/activities/settings/ak;->a:Landroid/content/SharedPreferences;

    .line 426
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/activities/settings/PreferenceView;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 430
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->setVisibility(I)V

    .line 431
    instance-of v0, p1, Lcom/yelp/android/ui/activities/settings/PreferenceToggleView;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ak;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->setChecked(Z)V

    .line 435
    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v0

    .line 436
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 443
    :cond_2
    invoke-virtual {p1, v3}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->setVisibility(I)V

    .line 452
    :cond_3
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070316

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 454
    if-eqz v0, :cond_4

    sget-object v0, Lcom/yelp/android/appdata/Features;->messaging:Lcom/yelp/android/appdata/Features;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/Features;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 455
    invoke-virtual {p1, v3}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->setVisibility(I)V

    .line 457
    :cond_4
    return-void
.end method
