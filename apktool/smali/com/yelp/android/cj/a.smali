.class public Lcom/yelp/android/cj/a;
.super Ljava/lang/Object;
.source "ApiPreferenceViewInitializer.java"

# interfaces
.implements Lcom/yelp/android/cj/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/activities/settings/PreferenceView;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->o()Lcom/yelp/android/appdata/ApiPreferences;

    move-result-object v2

    .line 17
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 19
    instance-of v0, p1, Lcom/yelp/android/ui/activities/settings/PreferenceToggleView;

    if-eqz v0, :cond_1

    .line 20
    invoke-virtual {v2, v3}, Lcom/yelp/android/appdata/ApiPreferences;->a(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->setChecked(Z)V

    .line 27
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->getViewBuilder()Lcom/yelp/android/ui/activities/settings/a;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/yelp/android/ui/activities/settings/a;->a(Lcom/yelp/android/ui/activities/settings/PreferenceView;Z)V

    .line 28
    return-void

    .line 21
    :cond_1
    instance-of v0, p1, Lcom/yelp/android/ui/activities/settings/PreferenceRadioView;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 22
    check-cast v0, Lcom/yelp/android/ui/activities/settings/PreferenceRadioView;

    .line 23
    invoke-virtual {v2, v3}, Lcom/yelp/android/appdata/ApiPreferences;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 24
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/PreferenceRadioView;->getValue()I

    move-result v0

    if-ne v2, v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->setChecked(Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method
