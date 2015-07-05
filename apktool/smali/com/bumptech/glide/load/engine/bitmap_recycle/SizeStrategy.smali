.class Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;
.super Ljava/lang/Object;
.source "SizeStrategy.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/bitmap_recycle/m;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/engine/bitmap_recycle/q;

.field private final b:Lcom/bumptech/glide/load/engine/bitmap_recycle/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/g",
            "<",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/p;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/q;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/q;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/q;

    .line 19
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/g;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/g;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/g;

    .line 20
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$PrettyPrintTreeMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$PrettyPrintTreeMap;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/o;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->c:Ljava/util/TreeMap;

    .line 139
    return-void
.end method

.method static synthetic a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    invoke-static {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Integer;)V
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->c:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 66
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 67
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->c:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->c:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static b(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static d(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    invoke-static {p0}, Lcom/yelp/android/ai/f;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 116
    invoke-static {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/g;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 57
    if-eqz v0, :cond_0

    .line 58
    invoke-static {v0}, Lcom/yelp/android/ai/f;->a(Landroid/graphics/Bitmap;)I

    move-result v1

    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->a(Ljava/lang/Integer;)V

    .line 61
    :cond_0
    return-object v0
.end method

.method public a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 35
    invoke-static {p1, p2, p3}, Lcom/yelp/android/ai/f;->a(IILandroid/graphics/Bitmap$Config;)I

    move-result v2

    .line 36
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/q;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/q;->a(I)Lcom/bumptech/glide/load/engine/bitmap_recycle/p;

    move-result-object v1

    .line 38
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->c:Ljava/util/TreeMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/TreeMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 39
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v2, v2, 0x8

    if-gt v3, v2, :cond_0

    .line 40
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/q;

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/q;->a(Lcom/bumptech/glide/load/engine/bitmap_recycle/n;)V

    .line 41
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/q;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/q;->a(I)Lcom/bumptech/glide/load/engine/bitmap_recycle/p;

    move-result-object v1

    .line 45
    :cond_0
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/g;

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/g;->a(Lcom/bumptech/glide/load/engine/bitmap_recycle/n;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 46
    if-eqz v1, :cond_1

    .line 47
    invoke-virtual {v1, p1, p2, p3}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 48
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->a(Ljava/lang/Integer;)V

    .line 51
    :cond_1
    return-object v1
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 24
    invoke-static {p1}, Lcom/yelp/android/ai/f;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 25
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/q;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/q;->a(I)Lcom/bumptech/glide/load/engine/bitmap_recycle/p;

    move-result-object v1

    .line 27
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/g;

    invoke-virtual {v0, v1, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/g;->a(Lcom/bumptech/glide/load/engine/bitmap_recycle/n;Ljava/lang/Object;)V

    .line 29
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->c:Ljava/util/TreeMap;

    invoke-static {v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/p;->a(Lcom/bumptech/glide/load/engine/bitmap_recycle/p;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 30
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->c:Ljava/util/TreeMap;

    invoke-static {v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/p;->a(Lcom/bumptech/glide/load/engine/bitmap_recycle/p;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void

    .line 30
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public b(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    invoke-static {p1, p2, p3}, Lcom/yelp/android/ai/f;->a(IILandroid/graphics/Bitmap$Config;)I

    move-result v0

    .line 81
    invoke-static {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    invoke-static {p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->d(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/graphics/Bitmap;)I
    .locals 1

    .prologue
    .line 86
    invoke-static {p1}, Lcom/yelp/android/ai/f;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SizeStrategy:\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  SortedSizes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->c:Ljava/util/TreeMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
