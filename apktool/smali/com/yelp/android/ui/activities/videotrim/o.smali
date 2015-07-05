.class Lcom/yelp/android/ui/activities/videotrim/o;
.super Landroid/os/AsyncTask;
.source "SnapshotLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/videotrim/m;


# direct methods
.method private constructor <init>(Lcom/yelp/android/ui/activities/videotrim/m;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/yelp/android/ui/activities/videotrim/o;->a:Lcom/yelp/android/ui/activities/videotrim/m;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/ui/activities/videotrim/m;Lcom/yelp/android/ui/activities/videotrim/n;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/videotrim/o;-><init>(Lcom/yelp/android/ui/activities/videotrim/m;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 5

    .prologue
    .line 58
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 59
    new-instance v1, Lcom/yelp/android/util/aj;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/videotrim/o;->a:Lcom/yelp/android/ui/activities/videotrim/m;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/videotrim/m;->a(Lcom/yelp/android/ui/activities/videotrim/m;)Lcom/yelp/android/serializable/LocalVideo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/LocalVideo;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yelp/android/util/aj;-><init>(Ljava/lang/String;)V

    .line 61
    :goto_0
    iget-object v2, p0, Lcom/yelp/android/ui/activities/videotrim/o;->a:Lcom/yelp/android/ui/activities/videotrim/m;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/videotrim/m;->b(Lcom/yelp/android/ui/activities/videotrim/m;)I

    move-result v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/videotrim/o;->a:Lcom/yelp/android/ui/activities/videotrim/m;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/videotrim/m;->c(Lcom/yelp/android/ui/activities/videotrim/m;)I

    move-result v3

    add-int/2addr v3, v0

    if-ge v2, v3, :cond_0

    .line 63
    iget-object v2, p0, Lcom/yelp/android/ui/activities/videotrim/o;->a:Lcom/yelp/android/ui/activities/videotrim/m;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/videotrim/m;->b(Lcom/yelp/android/ui/activities/videotrim/m;)I

    move-result v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/videotrim/o;->a:Lcom/yelp/android/ui/activities/videotrim/m;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/videotrim/m;->a(Lcom/yelp/android/ui/activities/videotrim/m;)Lcom/yelp/android/serializable/LocalVideo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/LocalVideo;->getDuration()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 69
    :cond_0
    invoke-virtual {v1}, Lcom/yelp/android/util/aj;->release()V

    .line 70
    const/4 v0, 0x0

    return-object v0

    .line 66
    :cond_1
    iget-object v2, p0, Lcom/yelp/android/ui/activities/videotrim/o;->a:Lcom/yelp/android/ui/activities/videotrim/m;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/videotrim/m;->b(Lcom/yelp/android/ui/activities/videotrim/m;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/yelp/android/util/aj;->a(J)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 67
    iget-object v3, p0, Lcom/yelp/android/ui/activities/videotrim/o;->a:Lcom/yelp/android/ui/activities/videotrim/m;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/videotrim/m;->d(Lcom/yelp/android/ui/activities/videotrim/m;)Lcom/yelp/android/ui/activities/videotrim/p;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/videotrim/o;->a:Lcom/yelp/android/ui/activities/videotrim/m;

    invoke-static {v4}, Lcom/yelp/android/ui/activities/videotrim/m;->b(Lcom/yelp/android/ui/activities/videotrim/m;)I

    move-result v4

    invoke-interface {v3, v4, v2}, Lcom/yelp/android/ui/activities/videotrim/p;->a(ILandroid/graphics/Bitmap;)V

    .line 62
    iget-object v2, p0, Lcom/yelp/android/ui/activities/videotrim/o;->a:Lcom/yelp/android/ui/activities/videotrim/m;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/videotrim/o;->a:Lcom/yelp/android/ui/activities/videotrim/m;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/videotrim/m;->c(Lcom/yelp/android/ui/activities/videotrim/m;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/yelp/android/ui/activities/videotrim/m;->a(Lcom/yelp/android/ui/activities/videotrim/m;I)I

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/videotrim/o;->a([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
