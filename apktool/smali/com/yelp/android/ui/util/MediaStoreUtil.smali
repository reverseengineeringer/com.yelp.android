.class public Lcom/yelp/android/ui/util/MediaStoreUtil;
.super Ljava/lang/Object;
.source "MediaStoreUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 67
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "DISTINCT bucket_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "bucket_display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/ui/util/MediaStoreUtil;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;)Landroid/net/Uri;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 152
    sget-object v0, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->PHOTO:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 163
    :goto_0
    return-object v0

    .line 154
    :cond_0
    sget-object v0, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->VIDEO:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 157
    :cond_1
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/yelp/android/appdata/f;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    const-string/jumbo v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 160
    :cond_2
    const-string/jumbo v0, "MediaStoreUtil"

    const-string/jumbo v1, "Api < 11 requested mixed Photos and Videos, which is not supported, returning just photos"

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;)I

    .line 163
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;)Landroid/support/v4/content/i;
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/yelp/android/ui/util/MediaStoreUtil;->a(Landroid/content/Context;Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;I)Landroid/support/v4/content/i;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;I)Landroid/support/v4/content/i;
    .locals 7

    .prologue
    .line 102
    new-instance v0, Landroid/support/v4/content/i;

    invoke-static {p1}, Lcom/yelp/android/ui/util/MediaStoreUtil;->a(Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {p1}, Lcom/yelp/android/ui/util/MediaStoreUtil;->b(Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/yelp/android/ui/util/MediaStoreUtil;->c(Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p2}, Lcom/yelp/android/ui/util/MediaStoreUtil;->a(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/i;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;Ljava/lang/String;)Landroid/support/v4/content/i;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 117
    new-instance v0, Landroid/support/v4/content/i;

    invoke-static {p1}, Lcom/yelp/android/ui/util/MediaStoreUtil;->a(Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {p1}, Lcom/yelp/android/ui/util/MediaStoreUtil;->b(Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/yelp/android/ui/util/MediaStoreUtil;->d(Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    aput-object p2, v5, v6

    invoke-static {v6}, Lcom/yelp/android/ui/util/MediaStoreUtil;->a(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/i;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Landroid/net/Uri;Landroid/content/ContentResolver;)Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-object v0

    .line 82
    :cond_1
    const-string/jumbo v2, "video/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 83
    sget-object v0, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->VIDEO:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    goto :goto_0

    .line 84
    :cond_2
    const-string/jumbo v2, "image/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    sget-object v0, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->PHOTO:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    goto :goto_0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 242
    if-nez p0, :cond_0

    .line 243
    const-string/jumbo v0, "date_added DESC"

    .line 245
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "date_added DESC LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;)Landroid/support/v4/content/i;
    .locals 7

    .prologue
    .line 133
    new-instance v0, Landroid/support/v4/content/i;

    invoke-static {p1}, Lcom/yelp/android/ui/util/MediaStoreUtil;->a(Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/ui/util/MediaStoreUtil;->a:[Ljava/lang/String;

    invoke-static {p1}, Lcom/yelp/android/ui/util/MediaStoreUtil;->c(Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/yelp/android/ui/util/MediaStoreUtil;->a(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/i;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static b(Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;)[Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    const-string/jumbo v1, "_id"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    const-string/jumbo v1, "date_added"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    const-string/jumbo v1, "bucket_id"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    const/16 v1, 0xb

    invoke-static {v1}, Lcom/yelp/android/appdata/f;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->PHOTO_AND_VIDEO:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    invoke-virtual {v1, p0}, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    const-string/jumbo v1, "media_type"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static c(Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 201
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/yelp/android/appdata/f;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->PHOTO_AND_VIDEO:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 203
    :cond_0
    const/4 v0, 0x0

    .line 208
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, "media_type=1 OR media_type=3"

    goto :goto_0
.end method

.method private static d(Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 226
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/yelp/android/appdata/f;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->PHOTO_AND_VIDEO:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 228
    :cond_0
    const-string/jumbo v0, "bucket_id=?"

    .line 231
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/yelp/android/ui/util/MediaStoreUtil;->c(Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "bucket_id=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
