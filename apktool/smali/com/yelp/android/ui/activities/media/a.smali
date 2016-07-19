.class public Lcom/yelp/android/ui/activities/media/a;
.super Landroid/os/AsyncTask;
.source "CopyMediaToPrivateDirTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/media/a$a;,
        Lcom/yelp/android/ui/activities/media/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/ui/activities/media/a$b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/yelp/android/ui/activities/media/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yelp/android/ui/activities/media/a$a;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/media/a;->a:Ljava/lang/ref/WeakReference;

    .line 36
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/media/a;->b:Ljava/lang/ref/WeakReference;

    .line 37
    return-void
.end method


# virtual methods
.method protected varargs a([Landroid/net/Uri;)Lcom/yelp/android/ui/activities/media/a$b;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 41
    iget-object v0, p0, Lcom/yelp/android/ui/activities/media/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 42
    if-nez v0, :cond_0

    move-object v0, v1

    .line 74
    :goto_0
    return-object v0

    .line 46
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 47
    const/4 v2, 0x0

    aget-object v2, p1, v2

    .line 50
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 51
    invoke-static {}, Lcom/yelp/android/util/e;->c()Ljava/io/File;

    move-result-object v4

    .line 52
    if-nez v4, :cond_1

    move-object v0, v1

    .line 53
    goto :goto_0

    .line 55
    :cond_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 57
    invoke-static {v3, v5}, Lcom/yelp/android/util/e;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object v0, v1

    .line 58
    goto :goto_0

    .line 61
    :cond_2
    invoke-static {v4}, Lcom/yelp/android/ui/util/ImageInputHelper;->a(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 62
    invoke-static {v2, v0}, Lcom/yelp/android/ui/util/MediaStoreUtil;->a(Landroid/net/Uri;Landroid/content/ContentResolver;)Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    move-result-object v0

    .line 63
    if-nez v0, :cond_3

    move-object v0, v1

    .line 64
    goto :goto_0

    .line 67
    :cond_3
    invoke-static {v4, v3, v0}, Lcom/yelp/android/ui/activities/media/a$b;->a(Ljava/io/File;Landroid/graphics/Bitmap;Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;)Lcom/yelp/android/ui/activities/media/a$b;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    const-string/jumbo v2, "Could not find input file"

    invoke-static {p0, v2, v0}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 74
    goto :goto_0
.end method

.method protected a(Lcom/yelp/android/ui/activities/media/a$b;)V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yelp/android/ui/activities/media/a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/media/a$a;

    .line 80
    if-nez v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-interface {v0}, Lcom/yelp/android/ui/activities/media/a$a;->c()V

    .line 86
    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/yelp/android/ui/activities/media/a$b;->a:Ljava/io/File;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/yelp/android/ui/activities/media/a$b;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    invoke-interface {v0, p1}, Lcom/yelp/android/ui/activities/media/a$a;->a(Lcom/yelp/android/ui/activities/media/a$b;)V

    goto :goto_0

    .line 89
    :cond_1
    invoke-interface {v0}, Lcom/yelp/android/ui/activities/media/a$a;->b()V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/media/a;->a([Landroid/net/Uri;)Lcom/yelp/android/ui/activities/media/a$b;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 29
    check-cast p1, Lcom/yelp/android/ui/activities/media/a$b;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/media/a;->a(Lcom/yelp/android/ui/activities/media/a$b;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/yelp/android/ui/activities/media/a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/media/a$a;

    .line 96
    if-eqz v0, :cond_0

    .line 97
    invoke-interface {v0}, Lcom/yelp/android/ui/activities/media/a$a;->a()V

    .line 99
    :cond_0
    return-void
.end method
