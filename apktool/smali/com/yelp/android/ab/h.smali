.class Lcom/yelp/android/ab/h;
.super Lcom/yelp/android/ag/g;
.source "GifFrameManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ag/g",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ab/g;

.field private final b:Lcom/yelp/android/ab/j;

.field private final c:J

.field private d:Landroid/graphics/Bitmap;

.field private e:I


# direct methods
.method public constructor <init>(Lcom/yelp/android/ab/g;Lcom/yelp/android/ab/j;J)V
    .locals 3

    .prologue
    .line 126
    iput-object p1, p0, Lcom/yelp/android/ab/h;->a:Lcom/yelp/android/ab/g;

    .line 127
    invoke-static {p1}, Lcom/yelp/android/ab/g;->a(Lcom/yelp/android/ab/g;)I

    move-result v0

    invoke-static {p1}, Lcom/yelp/android/ab/g;->b(Lcom/yelp/android/ab/g;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ag/g;-><init>(II)V

    .line 128
    iput-object p2, p0, Lcom/yelp/android/ab/h;->b:Lcom/yelp/android/ab/j;

    .line 129
    iput-wide p3, p0, Lcom/yelp/android/ab/h;->c:J

    .line 130
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ab/h;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/yelp/android/ab/h;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 133
    iput p1, p0, Lcom/yelp/android/ab/h;->e:I

    .line 134
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;Lcom/yelp/android/af/e;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/yelp/android/af/e",
            "<-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    iput-object p1, p0, Lcom/yelp/android/ab/h;->d:Landroid/graphics/Bitmap;

    .line 139
    iget-object v0, p0, Lcom/yelp/android/ab/h;->a:Lcom/yelp/android/ab/g;

    invoke-static {v0}, Lcom/yelp/android/ab/g;->c(Lcom/yelp/android/ab/g;)Landroid/os/Handler;

    move-result-object v0

    iget-wide v2, p0, Lcom/yelp/android/ab/h;->c:J

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 140
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ab/h;->d:Landroid/graphics/Bitmap;

    .line 162
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/yelp/android/af/e;)V
    .locals 0

    .prologue
    .line 120
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ab/h;->a(Landroid/graphics/Bitmap;Lcom/yelp/android/af/e;)V

    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/yelp/android/ab/h;->a:Lcom/yelp/android/ab/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ab/g;->a(Lcom/yelp/android/ab/g;Z)Z

    .line 145
    iget-object v0, p0, Lcom/yelp/android/ab/h;->b:Lcom/yelp/android/ab/j;

    iget v1, p0, Lcom/yelp/android/ab/h;->e:I

    invoke-interface {v0, v1}, Lcom/yelp/android/ab/j;->b(I)V

    .line 146
    iget-object v0, p0, Lcom/yelp/android/ab/h;->a:Lcom/yelp/android/ab/g;

    invoke-static {v0}, Lcom/yelp/android/ab/g;->d(Lcom/yelp/android/ab/g;)Lcom/yelp/android/ab/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/yelp/android/ab/h;->a:Lcom/yelp/android/ab/g;

    invoke-static {v0}, Lcom/yelp/android/ab/g;->d(Lcom/yelp/android/ab/g;)Lcom/yelp/android/ab/h;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/yelp/android/ab/h;->a:Lcom/yelp/android/ab/g;

    invoke-static {v1}, Lcom/yelp/android/ab/g;->c(Lcom/yelp/android/ab/g;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/ab/i;

    invoke-direct {v2, p0, v0}, Lcom/yelp/android/ab/i;-><init>(Lcom/yelp/android/ab/h;Lcom/yelp/android/ab/h;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ab/h;->a:Lcom/yelp/android/ab/g;

    invoke-static {v0, p0}, Lcom/yelp/android/ab/g;->a(Lcom/yelp/android/ab/g;Lcom/yelp/android/ab/h;)Lcom/yelp/android/ab/h;

    .line 157
    return-void
.end method
