.class Lcom/yelp/android/ui/activities/videotrim/b$a;
.super Landroid/os/AsyncTask;
.source "SnapshotLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/videotrim/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

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
.field final synthetic a:Lcom/yelp/android/ui/activities/videotrim/b;


# direct methods
.method private constructor <init>(Lcom/yelp/android/ui/activities/videotrim/b;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/yelp/android/ui/activities/videotrim/b$a;->a:Lcom/yelp/android/ui/activities/videotrim/b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/ui/activities/videotrim/b;Lcom/yelp/android/ui/activities/videotrim/b$1;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/videotrim/b$a;-><init>(Lcom/yelp/android/ui/activities/videotrim/b;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 5

    .prologue
    .line 57
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 58
    new-instance v1, Lcom/yelp/android/util/t;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/videotrim/b$a;->a:Lcom/yelp/android/ui/activities/videotrim/b;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/videotrim/b;->a(Lcom/yelp/android/ui/activities/videotrim/b;)Lcom/yelp/android/serializable/LocalVideo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/LocalVideo;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yelp/android/util/t;-><init>(Ljava/lang/String;)V

    .line 61
    :goto_0
    iget-object v2, p0, Lcom/yelp/android/ui/activities/videotrim/b$a;->a:Lcom/yelp/android/ui/activities/videotrim/b;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/videotrim/b;->b(Lcom/yelp/android/ui/activities/videotrim/b;)I

    move-result v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/videotrim/b$a;->a:Lcom/yelp/android/ui/activities/videotrim/b;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/videotrim/b;->c(Lcom/yelp/android/ui/activities/videotrim/b;)I

    move-result v3

    add-int/2addr v3, v0

    if-ge v2, v3, :cond_0

    .line 63
    iget-object v2, p0, Lcom/yelp/android/ui/activities/videotrim/b$a;->a:Lcom/yelp/android/ui/activities/videotrim/b;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/videotrim/b;->b(Lcom/yelp/android/ui/activities/videotrim/b;)I

    move-result v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/videotrim/b$a;->a:Lcom/yelp/android/ui/activities/videotrim/b;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/videotrim/b;->a(Lcom/yelp/android/ui/activities/videotrim/b;)Lcom/yelp/android/serializable/LocalVideo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/LocalVideo;->c()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 69
    :cond_0
    invoke-virtual {v1}, Lcom/yelp/android/util/t;->release()V

    .line 70
    const/4 v0, 0x0

    return-object v0

    .line 66
    :cond_1
    iget-object v2, p0, Lcom/yelp/android/ui/activities/videotrim/b$a;->a:Lcom/yelp/android/ui/activities/videotrim/b;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/videotrim/b;->b(Lcom/yelp/android/ui/activities/videotrim/b;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/yelp/android/util/t;->a(J)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 67
    iget-object v3, p0, Lcom/yelp/android/ui/activities/videotrim/b$a;->a:Lcom/yelp/android/ui/activities/videotrim/b;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/videotrim/b;->d(Lcom/yelp/android/ui/activities/videotrim/b;)Lcom/yelp/android/ui/activities/videotrim/b$b;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/videotrim/b$a;->a:Lcom/yelp/android/ui/activities/videotrim/b;

    invoke-static {v4}, Lcom/yelp/android/ui/activities/videotrim/b;->b(Lcom/yelp/android/ui/activities/videotrim/b;)I

    move-result v4

    invoke-interface {v3, v4, v2}, Lcom/yelp/android/ui/activities/videotrim/b$b;->a(ILandroid/graphics/Bitmap;)V

    .line 62
    iget-object v2, p0, Lcom/yelp/android/ui/activities/videotrim/b$a;->a:Lcom/yelp/android/ui/activities/videotrim/b;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/videotrim/b$a;->a:Lcom/yelp/android/ui/activities/videotrim/b;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/videotrim/b;->c(Lcom/yelp/android/ui/activities/videotrim/b;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/yelp/android/ui/activities/videotrim/b;->a(Lcom/yelp/android/ui/activities/videotrim/b;I)I

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/videotrim/b$a;->a([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
