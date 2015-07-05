.class public Lcom/yelp/android/ui/activities/settings/z;
.super Ljava/lang/Object;
.source "OnFacebookSettingsChange.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/settings/t;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->h()Lcom/yelp/android/appdata/RemoteConfigPreferences;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->i()Z

    move-result v0

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-interface {p2, p3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/ui/activities/settings/ChangeSettings;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 84
    new-instance v0, Lcom/yelp/android/ui/activities/settings/aa;

    invoke-direct {v0, p0, p1, p2}, Lcom/yelp/android/ui/activities/settings/aa;-><init>(Lcom/yelp/android/ui/activities/settings/z;Lcom/yelp/android/ui/activities/settings/ChangeSettings;Ljava/lang/String;)V

    .line 85
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {p1, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(Lcom/yelp/android/ui/activities/fg;)V

    .line 91
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 88
    :cond_0
    const v1, 0x7f070521

    invoke-virtual {p1, v1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->showLoadingDialog(I)V

    .line 89
    invoke-virtual {p1, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(Lcom/yelp/android/av/i;)V

    goto :goto_0
.end method
