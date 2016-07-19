.class public Lcom/yelp/android/ui/activities/media/b;
.super Lcom/yelp/android/util/q;
.source "GalleryThumbnailTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/util/q",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/content/i;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;)V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/yelp/android/util/q;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/media/b;->a:Ljava/lang/ref/WeakReference;

    .line 48
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/media/b;->b:Ljava/lang/ref/WeakReference;

    .line 54
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x1

    invoke-static {p1, p3, v1}, Lcom/yelp/android/ui/util/MediaStoreUtil;->a(Landroid/content/Context;Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;I)Landroid/support/v4/content/i;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/media/b;->d:Ljava/lang/ref/WeakReference;

    .line 57
    iput-object p3, p0, Lcom/yelp/android/ui/activities/media/b;->e:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    .line 58
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Landroid/net/Uri;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/media/b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 63
    iget-object v1, p0, Lcom/yelp/android/ui/activities/media/b;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/content/i;

    .line 64
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    move-object v0, v2

    .line 83
    :goto_0
    return-object v0

    .line 68
    :cond_1
    invoke-virtual {v1}, Landroid/support/v4/content/i;->h()Landroid/database/Cursor;

    move-result-object v1

    .line 69
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_4

    .line 70
    :cond_2
    const-string/jumbo v0, "No cursor results!"

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;)I

    .line 71
    if-eqz v1, :cond_3

    .line 72
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v2

    .line 74
    goto :goto_0

    .line 77
    :cond_4
    const-string/jumbo v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 78
    iget-object v2, p0, Lcom/yelp/android/ui/activities/media/b;->e:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    invoke-static {v2}, Lcom/yelp/android/ui/util/MediaStoreUtil;->a(Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 82
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method protected a(Landroid/net/Uri;)V
    .locals 4

    .prologue
    .line 88
    iget-object v0, p0, Lcom/yelp/android/ui/activities/media/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 89
    iget-object v1, p0, Lcom/yelp/android/ui/activities/media/b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 90
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 98
    const v3, 0x7f0a00e2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 99
    invoke-static {v1}, Lcom/yelp/android/ui/util/t;->a(Landroid/content/Context;)Lcom/yelp/android/ui/util/t;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/yelp/android/ui/util/t;->a(Landroid/net/Uri;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Lcom/yelp/android/ui/util/u$a;->a(II)Lcom/yelp/android/ui/util/u$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/u$a;->a(Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/media/b;->a([Ljava/lang/Void;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 39
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/media/b;->a(Landroid/net/Uri;)V

    return-void
.end method
