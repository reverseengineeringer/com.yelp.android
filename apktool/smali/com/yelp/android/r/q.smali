.class Lcom/yelp/android/r/q;
.super Ljava/lang/Object;
.source "MediaStoreThumbFetcher.java"

# interfaces
.implements Lcom/yelp/android/r/n;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 174
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "_data"

    aput-object v3, v2, v7

    const-string/jumbo v3, "video_id = ? AND kind = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
