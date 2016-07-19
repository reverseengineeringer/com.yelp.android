.class public Lcom/yelp/android/util/p;
.super Ljava/lang/Object;
.source "ShareActivityUtils.java"


# direct methods
.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/User;Ljava/util/List;Ljava/lang/Class;)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yelp/android/serializable/User;",
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
    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->o()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->FACEBOOK:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    sget-object v2, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->FACEBOOK:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v2, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->FACEBOOK:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 55
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 56
    invoke-static {p0, v1, v0}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->a(Landroid/content/Context;Ljava/util/Collection;Ljava/util/Collection;)Landroid/content/Intent;

    move-result-object v0

    .line 59
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 62
    :goto_1
    return-object v0

    .line 51
    :cond_1
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->p()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->TWITTER:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    sget-object v2, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->TWITTER:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v2, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->TWITTER:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 62
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
    .line 73
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 74
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    sget-object v1, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->YELP:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    sget-object v1, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->FACEBOOK:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    sget-object v1, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->TWITTER:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_2
    return-object v0
.end method

.method public static a(Landroid/app/Activity;Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;Z)V
    .locals 2

    .prologue
    .line 132
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

    .line 136
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/yelp/android/serializable/User;ZLandroid/widget/Checkable;Landroid/widget/Checkable;Landroid/widget/Checkable;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 100
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 105
    if-eqz p1, :cond_5

    .line 106
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->o()Z

    move-result v3

    .line 107
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->p()Z

    move-result v0

    move v6, v0

    move v0, v3

    move v3, v6

    .line 110
    :goto_0
    if-eqz p3, :cond_0

    .line 111
    sget-object v5, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->YELP:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    invoke-virtual {v5}, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-interface {p3, v5}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 116
    :cond_0
    if-eqz p4, :cond_1

    .line 117
    if-eqz v0, :cond_3

    sget-object v0, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->FACEBOOK:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-interface {p4, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 122
    :cond_1
    if-eqz p5, :cond_2

    .line 123
    if-eqz v3, :cond_4

    sget-object v0, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->TWITTER:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_2
    invoke-interface {p5, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 128
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 117
    goto :goto_1

    :cond_4
    move v1, v2

    .line 123
    goto :goto_2

    :cond_5
    move v3, v2

    move v0, v2

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Lcom/yelp/android/serializable/User;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/yelp/android/serializable/User;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 148
    const-class v0, Lcom/yelp/android/ui/activities/ActivityRetryCheckInShare;

    invoke-static {p0, p1, p2, v0}, Lcom/yelp/android/util/p;->a(Landroid/content/Context;Lcom/yelp/android/serializable/User;Ljava/util/List;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 151
    if-nez v0, :cond_0

    .line 152
    const/4 v0, 0x0

    .line 155
    :goto_0
    return v0

    .line 154
    :cond_0
    const/16 v1, 0x3ed

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 155
    const/4 v0, 0x1

    goto :goto_0
.end method
