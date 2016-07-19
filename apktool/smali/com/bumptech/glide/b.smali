.class public Lcom/bumptech/glide/b;
.super Lcom/bumptech/glide/a;
.source "BitmapTypeRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/a",
        "<TModelType;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final g:Lcom/yelp/android/aa/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/aa/l",
            "<TModelType;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/yelp/android/aa/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/aa/l",
            "<TModelType;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/bumptech/glide/g;

.field private final j:Lcom/bumptech/glide/i$d;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/e;Lcom/yelp/android/aa/l;Lcom/yelp/android/aa/l;Lcom/bumptech/glide/i$d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/e",
            "<TModelType;***>;",
            "Lcom/yelp/android/aa/l",
            "<TModelType;",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/yelp/android/aa/l",
            "<TModelType;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Lcom/bumptech/glide/i$d;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p1, Lcom/bumptech/glide/e;->c:Lcom/bumptech/glide/g;

    const-class v1, Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-static {v0, p2, p3, v1, v2}, Lcom/bumptech/glide/b;->a(Lcom/bumptech/glide/g;Lcom/yelp/android/aa/l;Lcom/yelp/android/aa/l;Ljava/lang/Class;Lcom/yelp/android/ai/c;)Lcom/yelp/android/ak/e;

    move-result-object v0

    const-class v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, v1, p1}, Lcom/bumptech/glide/a;-><init>(Lcom/yelp/android/ak/f;Ljava/lang/Class;Lcom/bumptech/glide/e;)V

    .line 54
    iput-object p2, p0, Lcom/bumptech/glide/b;->g:Lcom/yelp/android/aa/l;

    .line 55
    iput-object p3, p0, Lcom/bumptech/glide/b;->h:Lcom/yelp/android/aa/l;

    .line 56
    iget-object v0, p1, Lcom/bumptech/glide/e;->c:Lcom/bumptech/glide/g;

    iput-object v0, p0, Lcom/bumptech/glide/b;->i:Lcom/bumptech/glide/g;

    .line 57
    iput-object p4, p0, Lcom/bumptech/glide/b;->j:Lcom/bumptech/glide/i$d;

    .line 58
    return-void
.end method

.method private static a(Lcom/bumptech/glide/g;Lcom/yelp/android/aa/l;Lcom/yelp/android/aa/l;Ljava/lang/Class;Lcom/yelp/android/ai/c;)Lcom/yelp/android/ak/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/g;",
            "Lcom/yelp/android/aa/l",
            "<TA;",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/yelp/android/aa/l",
            "<TA;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Ljava/lang/Class",
            "<TR;>;",
            "Lcom/yelp/android/ai/c",
            "<",
            "Landroid/graphics/Bitmap;",
            "TR;>;)",
            "Lcom/yelp/android/ak/e",
            "<TA;",
            "Lcom/yelp/android/aa/g;",
            "Landroid/graphics/Bitmap;",
            "TR;>;"
        }
    .end annotation

    .prologue
    .line 33
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    .line 37
    :cond_0
    if-nez p4, :cond_1

    .line 38
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, p3}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/yelp/android/ai/c;

    move-result-object p4

    .line 40
    :cond_1
    const-class v0, Lcom/yelp/android/aa/g;

    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/g;->b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/yelp/android/ak/b;

    move-result-object v1

    .line 42
    new-instance v2, Lcom/yelp/android/aa/f;

    invoke-direct {v2, p1, p2}, Lcom/yelp/android/aa/f;-><init>(Lcom/yelp/android/aa/l;Lcom/yelp/android/aa/l;)V

    .line 45
    new-instance v0, Lcom/yelp/android/ak/e;

    invoke-direct {v0, v2, p4, v1}, Lcom/yelp/android/ak/e;-><init>(Lcom/yelp/android/aa/l;Lcom/yelp/android/ai/c;Lcom/yelp/android/ak/b;)V

    goto :goto_0
.end method
