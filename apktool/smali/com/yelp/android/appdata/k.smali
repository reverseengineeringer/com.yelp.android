.class public Lcom/yelp/android/appdata/k;
.super Ljava/lang/Object;
.source "PermissionManager.java"


# direct methods
.method public static a([Ljava/lang/String;[I)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/Map",
            "<",
            "Lcom/yelp/android/appdata/PermissionGroup;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 112
    new-instance v3, Lcom/yelp/android/g/a;

    invoke-direct {v3}, Lcom/yelp/android/g/a;-><init>()V

    move v0, v1

    .line 113
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 114
    aget-object v2, p0, v0

    invoke-static {v2}, Lcom/yelp/android/appdata/PermissionGroup;->find(Ljava/lang/String;)Lcom/yelp/android/appdata/PermissionGroup;

    move-result-object v4

    aget v2, p1, v0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 114
    goto :goto_1

    .line 119
    :cond_1
    return-object v3
.end method

.method public static varargs a(Landroid/app/Activity;I[Lcom/yelp/android/appdata/PermissionGroup;)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 50
    const/16 v1, 0x17

    invoke-static {v1}, Lcom/yelp/android/appdata/f;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v0

    .line 54
    :cond_1
    invoke-static {p0, p2}, Lcom/yelp/android/appdata/k;->b(Landroid/content/Context;[Lcom/yelp/android/appdata/PermissionGroup;)[Ljava/lang/String;

    move-result-object v1

    .line 55
    array-length v2, v1

    if-eqz v2, :cond_0

    .line 58
    invoke-static {p0, v1}, Lcom/yelp/android/appdata/k;->a(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 66
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public static a(Landroid/app/Activity;[Ljava/lang/String;)Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 164
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    .line 165
    invoke-virtual {p0, v3}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 166
    const/4 v0, 0x1

    .line 169
    :cond_0
    return v0

    .line 164
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/appdata/PermissionGroup;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 124
    iget-object v2, p1, Lcom/yelp/android/appdata/PermissionGroup;->permissions:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 125
    invoke-static {p0, v4}, Lcom/yelp/android/appdata/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 129
    :goto_1
    return v0

    .line 124
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 195
    invoke-static {p0, p1}, Landroid/support/v4/app/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs a(Landroid/content/Context;[Lcom/yelp/android/appdata/PermissionGroup;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 144
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p1, v1

    .line 145
    invoke-static {p0, v3}, Lcom/yelp/android/appdata/k;->b(Landroid/content/Context;Lcom/yelp/android/appdata/PermissionGroup;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 149
    :goto_1
    return v0

    .line 144
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static varargs a(Landroid/support/v4/app/Fragment;I[Lcom/yelp/android/appdata/PermissionGroup;)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 80
    const/16 v1, 0x17

    invoke-static {v1}, Lcom/yelp/android/appdata/f;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 84
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/yelp/android/appdata/k;->b(Landroid/content/Context;[Lcom/yelp/android/appdata/PermissionGroup;)[Ljava/lang/String;

    move-result-object v1

    .line 86
    array-length v2, v1

    if-eqz v2, :cond_0

    .line 89
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/k;->a(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    invoke-virtual {p0, v1, p1}, Landroid/support/v4/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    .line 97
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {p0, v1, p1}, Landroid/support/v4/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;Lcom/yelp/android/appdata/PermissionGroup;)Z
    .locals 1

    .prologue
    .line 134
    invoke-static {p0, p1}, Lcom/yelp/android/appdata/k;->a(Landroid/content/Context;Lcom/yelp/android/appdata/PermissionGroup;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;[Lcom/yelp/android/appdata/PermissionGroup;)[Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 181
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 183
    array-length v4, p1

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v0, p1, v2

    .line 184
    iget-object v5, v0, Lcom/yelp/android/appdata/PermissionGroup;->permissions:[Ljava/lang/String;

    array-length v6, v5

    move v0, v1

    :goto_1
    if-ge v0, v6, :cond_1

    aget-object v7, v5, v0

    .line 185
    invoke-static {p0, v7}, Lcom/yelp/android/appdata/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 186
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 183
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 191
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
