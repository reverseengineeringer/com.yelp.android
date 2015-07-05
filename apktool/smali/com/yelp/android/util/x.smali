.class public Lcom/yelp/android/util/x;
.super Ljava/lang/Object;
.source "PhotoUploadUtils.java"


# direct methods
.method public static a(Ljava/lang/String;Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 43
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 44
    const-string/jumbo v0, "id"

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string/jumbo v2, "source"

    if-nez p1, :cond_0

    const-string/jumbo v0, "unknown"

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string/jumbo v2, "has_caption"

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-static {v1, p3}, Lcom/yelp/android/util/x;->a(Ljava/util/Map;Ljava/lang/String;)V

    .line 49
    invoke-static {v1, p3}, Lcom/yelp/android/util/x;->b(Ljava/util/Map;Ljava/lang/String;)V

    .line 51
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessPhotoSave:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 52
    const-string/jumbo v0, "x8cc7k"

    invoke-static {v0}, Lcom/adjust/sdk/e;->a(Ljava/lang/String;)V

    .line 53
    sget-object v0, Lcom/yelp/android/analytics/iris/KahunaEventIri;->BusinessPhotoSave:Lcom/yelp/android/analytics/iris/KahunaEventIri;

    invoke-static {v0}, Lcom/yelp/android/analytics/j;->a(Lcom/yelp/android/analytics/iris/KahunaEventIri;)V

    .line 54
    return-void

    .line 45
    :cond_0
    invoke-virtual {p1}, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 47
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4

    .prologue
    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p2

    invoke-static {v0, p1, v2, v3}, Lcom/yelp/android/util/x;->a(Ljava/util/Map;Ljava/lang/String;J)V

    .line 70
    invoke-static {v0, p0}, Lcom/yelp/android/util/x;->a(Ljava/util/Map;Ljava/lang/String;)V

    .line 71
    invoke-static {v0, p0}, Lcom/yelp/android/util/x;->b(Ljava/util/Map;Ljava/lang/String;)V

    .line 72
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->UploadPhotoFailure:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 73
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 76
    new-instance v0, Lcom/yelp/android/serializable/Photo$TempPhoto;

    invoke-static {p0}, Lcom/yelp/android/util/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/yelp/android/serializable/Photo$TempPhoto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v1, Lcom/yelp/android/util/ObjectDirtyEvent;

    const-string/jumbo v2, "com.yelp.android.media.add"

    invoke-direct {v1, v0, v2}, Lcom/yelp/android/util/ObjectDirtyEvent;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    .prologue
    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 59
    const-string/jumbo v1, "photo_id"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-static {v0, p1, p3, p4}, Lcom/yelp/android/util/x;->a(Ljava/util/Map;Ljava/lang/String;J)V

    .line 61
    invoke-static {v0, p0}, Lcom/yelp/android/util/x;->a(Ljava/util/Map;Ljava/lang/String;)V

    .line 62
    invoke-static {v0, p0}, Lcom/yelp/android/util/x;->b(Ljava/util/Map;Ljava/lang/String;)V

    .line 63
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->UploadPhotoSuccess:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 64
    return-void
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 87
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    .line 91
    sget-object v1, Lcom/yelp/android/services/ShareService$ShareObjectType;->PHOTO:Lcom/yelp/android/services/ShareService$ShareObjectType;

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, p0, v2}, Lcom/yelp/android/services/ShareService;->a(Landroid/content/Context;Lcom/yelp/android/services/ShareService$ShareObjectType;Ljava/lang/String;Ljava/util/Collection;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 103
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 104
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 105
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 106
    const-string/jumbo v1, "width_pixels"

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string/jumbo v1, "height_pixels"

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string/jumbo v0, "size_bytes"

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 98
    const-string/jumbo v2, "duration_sec"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string/jumbo v0, "business_id"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-void
.end method

.method private static b(Ljava/util/Map;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 112
    const-string/jumbo v0, "wifi"

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/util/s;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string/jumbo v0, "md5_hash"

    invoke-static {p1}, Lcom/yelp/android/util/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-void
.end method
