.class Landroid/support/v4/media/session/e;
.super Ljava/lang/Object;
.source "MediaSessionCompatApi21.java"


# direct methods
.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 50
    instance-of v0, p0, Landroid/media/session/MediaSession$Token;

    if-eqz v0, :cond_0

    .line 51
    return-object p0

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "token is not a valid MediaSession.Token object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
