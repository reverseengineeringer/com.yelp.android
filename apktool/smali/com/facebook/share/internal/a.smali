.class public Lcom/facebook/share/internal/a;
.super Ljava/lang/Object;
.source "LegacyNativeDialogParameters.java"


# direct methods
.method private static a(Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 141
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 143
    const-string/jumbo v1, "com.facebook.platform.extra.LINK"

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareContent;->a()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/u;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/net/Uri;)V

    .line 144
    const-string/jumbo v1, "com.facebook.platform.extra.PLACE"

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareContent;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/u;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string/jumbo v1, "com.facebook.platform.extra.REF"

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareContent;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/u;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string/jumbo v1, "com.facebook.platform.extra.DATA_FAILURES_FATAL"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 149
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareContent;->b()Ljava/util/List;

    move-result-object v1

    .line 150
    invoke-static {v1}, Lcom/facebook/internal/u;->a(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 151
    const-string/jumbo v2, "com.facebook.platform.extra.FRIENDS"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 156
    :cond_0
    return-object v0
.end method

.method private static a(Lcom/facebook/share/model/ShareLinkContent;Z)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 90
    invoke-static {p0, p1}, Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 92
    const-string/jumbo v1, "com.facebook.platform.extra.TITLE"

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/u;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string/jumbo v1, "com.facebook.platform.extra.DESCRIPTION"

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/u;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string/jumbo v1, "com.facebook.platform.extra.IMAGE"

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->g()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/u;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/net/Uri;)V

    .line 98
    return-object v0
.end method

.method private static a(Lcom/facebook/share/model/ShareOpenGraphContent;Lorg/json/JSONObject;Z)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 121
    invoke-static {p0, p2}, Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 123
    const-string/jumbo v1, "com.facebook.platform.extra.PREVIEW_PROPERTY_NAME"

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphContent;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/u;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string/jumbo v1, "com.facebook.platform.extra.ACTION_TYPE"

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphContent;->e()Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/share/model/ShareOpenGraphAction;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/u;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string/jumbo v1, "com.facebook.platform.extra.ACTION"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/u;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-object v0
.end method

.method private static a(Lcom/facebook/share/model/SharePhotoContent;Ljava/util/List;Z)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/SharePhotoContent;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 105
    invoke-static {p0, p2}, Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 107
    const-string/jumbo v1, "com.facebook.platform.extra.PHOTOS"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 109
    return-object v0
.end method

.method private static a(Lcom/facebook/share/model/ShareVideoContent;Z)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method public static a(Ljava/util/UUID;Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 54
    const-string/jumbo v0, "shareContent"

    invoke-static {p1, v0}, Lcom/facebook/internal/v;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    const-string/jumbo v0, "callId"

    invoke-static {p0, v0}, Lcom/facebook/internal/v;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    const/4 v0, 0x0

    .line 58
    instance-of v1, p1, Lcom/facebook/share/model/ShareLinkContent;

    if-eqz v1, :cond_1

    .line 59
    check-cast p1, Lcom/facebook/share/model/ShareLinkContent;

    .line 60
    invoke-static {p1, p2}, Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/model/ShareLinkContent;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 86
    :cond_0
    :goto_0
    return-object v0

    .line 61
    :cond_1
    instance-of v1, p1, Lcom/facebook/share/model/SharePhotoContent;

    if-eqz v1, :cond_2

    .line 62
    check-cast p1, Lcom/facebook/share/model/SharePhotoContent;

    .line 63
    invoke-static {p1, p0}, Lcom/facebook/share/internal/j;->a(Lcom/facebook/share/model/SharePhotoContent;Ljava/util/UUID;)Ljava/util/List;

    move-result-object v0

    .line 67
    invoke-static {p1, v0, p2}, Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/model/SharePhotoContent;Ljava/util/List;Z)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 68
    :cond_2
    instance-of v1, p1, Lcom/facebook/share/model/ShareVideoContent;

    if-eqz v1, :cond_3

    .line 69
    check-cast p1, Lcom/facebook/share/model/ShareVideoContent;

    .line 70
    invoke-static {p1, p2}, Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/model/ShareVideoContent;Z)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 71
    :cond_3
    instance-of v1, p1, Lcom/facebook/share/model/ShareOpenGraphContent;

    if-eqz v1, :cond_0

    .line 72
    check-cast p1, Lcom/facebook/share/model/ShareOpenGraphContent;

    .line 73
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareOpenGraphContent;->e()Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object v0

    .line 75
    :try_start_0
    invoke-static {p0, v0}, Lcom/facebook/share/internal/j;->a(Ljava/util/UUID;Lcom/facebook/share/model/ShareOpenGraphAction;)Lorg/json/JSONObject;

    move-result-object v0

    .line 78
    invoke-static {p1, v0, p2}, Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/model/ShareOpenGraphContent;Lorg/json/JSONObject;Z)Landroid/os/Bundle;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    new-instance v1, Lcom/facebook/FacebookException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to create a JSON Object from the provided ShareOpenGraphContent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
