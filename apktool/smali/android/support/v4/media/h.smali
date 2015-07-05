.class public Landroid/support/v4/media/h;
.super Ljava/lang/Object;
.source "MediaMetadataCompatApi21.java"


# direct methods
.method public static a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v0}, Landroid/media/MediaMetadata$Builder;-><init>()V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    check-cast p0, Landroid/media/MediaMetadata$Builder;

    invoke-virtual {p0}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 56
    check-cast p0, Landroid/media/MediaMetadata$Builder;

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    .line 57
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 52
    check-cast p0, Landroid/media/MediaMetadata$Builder;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaMetadata$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/media/MediaMetadata$Builder;

    .line 53
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 64
    check-cast p0, Landroid/media/MediaMetadata$Builder;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaMetadata$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/media/MediaMetadata$Builder;

    .line 65
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 60
    check-cast p0, Landroid/media/MediaMetadata$Builder;

    check-cast p2, Landroid/media/Rating;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaMetadata$Builder;->putRating(Ljava/lang/String;Landroid/media/Rating;)Landroid/media/MediaMetadata$Builder;

    .line 61
    return-void
.end method
