.class public Landroid/support/v7/app/m;
.super Landroid/support/v4/app/x;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/m$1;,
        Landroid/support/v7/app/m$e;,
        Landroid/support/v7/app/m$d;,
        Landroid/support/v7/app/m$c;,
        Landroid/support/v7/app/m$b;,
        Landroid/support/v7/app/m$a;
    }
.end annotation


# direct methods
.method static synthetic a(Landroid/app/Notification;Landroid/support/v4/app/x$d;)V
    .locals 0

    .prologue
    .line 33
    invoke-static {p0, p1}, Landroid/support/v7/app/m;->b(Landroid/app/Notification;Landroid/support/v4/app/x$d;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/app/w;Landroid/support/v4/app/x$d;)V
    .locals 0

    .prologue
    .line 33
    invoke-static {p0, p1}, Landroid/support/v7/app/m;->b(Landroid/support/v4/app/w;Landroid/support/v4/app/x$d;)V

    return-void
.end method

.method private static b(Landroid/app/Notification;Landroid/support/v4/app/x$d;)V
    .locals 17

    .prologue
    .line 60
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/x$d;->m:Landroid/support/v4/app/x$p;

    instance-of v2, v2, Landroid/support/v7/app/m$e;

    if-eqz v2, :cond_0

    .line 61
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/x$d;->m:Landroid/support/v4/app/x$p;

    check-cast v2, Landroid/support/v7/app/m$e;

    .line 62
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/x$d;->a:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/support/v4/app/x$d;->b:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/support/v4/app/x$d;->c:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/support/v4/app/x$d;->h:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/support/v4/app/x$d;->i:I

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/support/v4/app/x$d;->g:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/support/v4/app/x$d;->n:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-boolean v11, v0, Landroid/support/v4/app/x$d;->l:Z

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/x$d;->B:Landroid/app/Notification;

    iget-wide v12, v3, Landroid/app/Notification;->when:J

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/support/v4/app/x$d;->u:Ljava/util/ArrayList;

    iget-boolean v15, v2, Landroid/support/v7/app/m$e;->c:Z

    iget-object v0, v2, Landroid/support/v7/app/m$e;->h:Landroid/app/PendingIntent;

    move-object/from16 v16, v0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v16}, Lcom/yelp/android/m/c;->a(Landroid/app/Notification;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJLjava/util/List;ZLandroid/app/PendingIntent;)V

    .line 68
    :cond_0
    return-void
.end method

.method private static b(Landroid/support/v4/app/w;Landroid/support/v4/app/x$d;)V
    .locals 18

    .prologue
    .line 47
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/x$d;->m:Landroid/support/v4/app/x$p;

    instance-of v2, v2, Landroid/support/v7/app/m$e;

    if-eqz v2, :cond_0

    .line 48
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/x$d;->m:Landroid/support/v4/app/x$p;

    check-cast v2, Landroid/support/v7/app/m$e;

    .line 49
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/x$d;->a:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/support/v4/app/x$d;->b:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/support/v4/app/x$d;->c:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/support/v4/app/x$d;->h:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/support/v4/app/x$d;->i:I

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/support/v4/app/x$d;->g:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/support/v4/app/x$d;->n:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-boolean v11, v0, Landroid/support/v4/app/x$d;->l:Z

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/x$d;->B:Landroid/app/Notification;

    iget-wide v12, v3, Landroid/app/Notification;->when:J

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/support/v4/app/x$d;->u:Ljava/util/ArrayList;

    iget-object v15, v2, Landroid/support/v7/app/m$e;->a:[I

    iget-boolean v0, v2, Landroid/support/v7/app/m$e;->c:Z

    move/from16 v16, v0

    iget-object v0, v2, Landroid/support/v7/app/m$e;->h:Landroid/app/PendingIntent;

    move-object/from16 v17, v0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v17}, Lcom/yelp/android/m/c;->a(Landroid/support/v4/app/w;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJLjava/util/List;[IZLandroid/app/PendingIntent;)V

    .line 56
    :cond_0
    return-void
.end method

.method static synthetic b(Landroid/support/v4/app/w;Landroid/support/v4/app/x$p;)V
    .locals 0

    .prologue
    .line 33
    invoke-static {p0, p1}, Landroid/support/v7/app/m;->c(Landroid/support/v4/app/w;Landroid/support/v4/app/x$p;)V

    return-void
.end method

.method private static c(Landroid/support/v4/app/w;Landroid/support/v4/app/x$p;)V
    .locals 2

    .prologue
    .line 37
    instance-of v0, p1, Landroid/support/v7/app/m$e;

    if-eqz v0, :cond_0

    .line 38
    check-cast p1, Landroid/support/v7/app/m$e;

    .line 39
    iget-object v1, p1, Landroid/support/v7/app/m$e;->a:[I

    iget-object v0, p1, Landroid/support/v7/app/m$e;->b:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/support/v7/app/m$e;->b:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->a()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {p0, v1, v0}, Lcom/yelp/android/m/b;->a(Landroid/support/v4/app/w;[ILjava/lang/Object;)V

    .line 43
    :cond_0
    return-void

    .line 39
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
