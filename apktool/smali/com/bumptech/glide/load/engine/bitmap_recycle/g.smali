.class Lcom/bumptech/glide/load/engine/bitmap_recycle/g;
.super Ljava/lang/Object;
.source "GroupedLinkedMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Lcom/bumptech/glide/load/engine/bitmap_recycle/n;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/engine/bitmap_recycle/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/h",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/h",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/h;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/h;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/g;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/h;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/g;->b:Ljava/util/Map;

    .line 114
    return-void
.end method

.method private a(Lcom/bumptech/glide/load/engine/bitmap_recycle/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/h",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 90
    invoke-static {p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/g;->d(Lcom/bumptech/glide/load/engine/bitmap_recycle/h;)V

    .line 91
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/g;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/h;

    iput-object v0, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/h;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/h;

    .line 92
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/g;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/h;

    iget-object v0, v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/h;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/h;

    iput-object v0, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/h;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/h;

    .line 93
    invoke-static {p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/g;->c(Lcom/bumptech/glide/load/engine/bitmap_recycle/h;)V

    .line 94
    return-void
.end method

.method private b(Lcom/bumptech/glide/load/engine/bitmap_recycle/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/h",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 98
    invoke-static {p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/g;->d(Lcom/bumptech/glide/load/engine/bitmap_recycle/h;)V

    .line 99
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/g;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/h;

    iget-object v0, v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/h;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/h;

    iput-object v0, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/h;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/h;

    .line 100
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/g;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/h;

    iput-object v0, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/h;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/h;

    .line 101
    invoke-static {p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/g;->c(Lcom/bumptech/glide/load/engine/bitmap_recycle/h;)V

    .line 102
    return-void
.end method

.method private static c(Lcom/bumptech/glide/load/engine/bitmap_recycle/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/h",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/h;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/h;

    iput-object p0, v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/h;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/h;

    .line 106
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/h;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/h;

    iput-object p0, v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/h;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/h;

    .line 107
    return-void
.end method

.method private static d(Lcom/bumptech/glide/load/engine/bitmap_recycle/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/h",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/h;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/h;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/h;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/h;

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/h;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/h;

    .line 111
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/h;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/h;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/h;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/h;

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/h;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/h;

    .line 112
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/g;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/h;

    iget-object v0, v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/h;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/h;

    move-object v1, v0

    .line 52
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/g;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/h;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/h;->a()Ljava/lang/Object;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_0

    .line 69
    :goto_1
    return-object v0

    .line 61
    :cond_0
    invoke-static {v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/g;->d(Lcom/bumptech/glide/load/engine/bitmap_recycle/h;)V

    .line 62
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/g;->b:Ljava/util/Map;

    invoke-static {v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/h;->a(Lcom/bumptech/glide/load/engine/bitmap_recycle/h;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-static {v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/h;->a(Lcom/bumptech/glide/load/engine/bitmap_recycle/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/n;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/n;->a()V

    .line 66
    iget-object v0, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/h;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/h;

    move-object v1, v0

    .line 67
    goto :goto_0

    .line 69
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Lcom/bumptech/glide/load/engine/bitmap_recycle/n;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/g;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/h;

    .line 37
    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/h;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/h;-><init>(Ljava/lang/Object;)V

    .line 39
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/g;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :goto_0
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/g;->a(Lcom/bumptech/glide/load/engine/bitmap_recycle/h;)V

    .line 46
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/h;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 41
    :cond_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/n;->a()V

    goto :goto_0
.end method

.method public a(Lcom/bumptech/glide/load/engine/bitmap_recycle/n;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/g;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/h;

    .line 24
    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/h;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/h;-><init>(Ljava/lang/Object;)V

    .line 26
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/g;->b(Lcom/bumptech/glide/load/engine/bitmap_recycle/h;)V

    .line 27
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/g;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :goto_0
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/h;->a(Ljava/lang/Object;)V

    .line 33
    return-void

    .line 29
    :cond_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/n;->a()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "GroupedLinkedMap( "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/g;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/h;

    iget-object v1, v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/h;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/h;

    .line 76
    const/4 v0, 0x0

    .line 77
    :goto_0
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/g;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/h;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 78
    const/4 v0, 0x1

    .line 79
    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/h;->a(Lcom/bumptech/glide/load/engine/bitmap_recycle/h;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/h;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget-object v1, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/h;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/h;

    goto :goto_0

    .line 82
    :cond_0
    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 85
    :cond_1
    const-string/jumbo v0, " )"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
