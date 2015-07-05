.class public Lcom/yelp/android/util/z;
.super Ljava/lang/Object;
.source "ShareActivityUtils.java"


# direct methods
.method public static a(Landroid/content/Context;Lcom/yelp/android/appdata/RemoteConfigPreferences;Ljava/util/List;Ljava/lang/Class;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yelp/android/appdata/RemoteConfigPreferences;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/yelp/android/ui/activities/ActivityRetryShare;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 43
    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p1}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->i()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->FACEBOOK:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    sget-object v1, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->FACEBOOK:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v1, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->FACEBOOK:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    invoke-interface {p2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 52
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 53
    invoke-static {p0, v0, p2}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->a(Landroid/content/Context;Ljava/util/Collection;Ljava/util/Collection;)Landroid/content/Intent;

    move-result-object v0

    .line 55
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 58
    :goto_1
    return-object v0

    .line 47
    :cond_1
    invoke-virtual {p1}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->h()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->TWITTER:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    sget-object v1, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->TWITTER:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v1, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->TWITTER:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    invoke-interface {p2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 58
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Landroid/widget/Checkable;Landroid/widget/Checkable;Landroid/widget/Checkable;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/Checkable;",
            "Landroid/widget/Checkable;",
            "Landroid/widget/Checkable;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 64
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    sget-object v1, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->YELP:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    sget-object v1, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->FACEBOOK:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    sget-object v1, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->TWITTER:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_2
    return-object v0
.end method

.method public static a(Landroid/app/Activity;Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;Z)V
    .locals 2

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 101
    return-void
.end method

.method public static a(Lcom/yelp/android/appdata/RemoteConfigPreferences;Landroid/content/SharedPreferences;Landroid/widget/Checkable;Landroid/widget/Checkable;Landroid/widget/Checkable;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 79
    .line 81
    if-eqz p0, :cond_3

    .line 82
    invoke-virtual {p0}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->i()Z

    move-result v1

    .line 83
    invoke-virtual {p0}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->h()Z

    move-result v0

    .line 85
    :goto_0
    if-eqz p2, :cond_0

    .line 86
    sget-object v2, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->YELP:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    invoke-virtual {v2}, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-interface {p2, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 88
    :cond_0
    if-eqz p3, :cond_1

    .line 89
    sget-object v2, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->FACEBOOK:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    invoke-virtual {v2}, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-interface {p3, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 91
    :cond_1
    if-eqz p4, :cond_2

    .line 92
    sget-object v1, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->TWITTER:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-interface {p4, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 94
    :cond_2
    return-void

    :cond_3
    move v1, v0

    goto :goto_0
.end method
