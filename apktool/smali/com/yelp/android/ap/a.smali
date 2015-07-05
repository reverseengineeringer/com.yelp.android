.class public Lcom/yelp/android/ap/a;
.super Ljava/lang/Object;
.source "CachedJobQueue.java"

# interfaces
.implements Lcom/path/android/jobqueue/g;


# instance fields
.field a:Lcom/path/android/jobqueue/g;

.field private b:Lcom/yelp/android/ap/c;


# direct methods
.method public constructor <init>(Lcom/path/android/jobqueue/g;)V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/yelp/android/ap/a;->a:Lcom/path/android/jobqueue/g;

    .line 20
    new-instance v0, Lcom/yelp/android/ap/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yelp/android/ap/c;-><init>(Lcom/yelp/android/ap/b;)V

    iput-object v0, p0, Lcom/yelp/android/ap/a;->b:Lcom/yelp/android/ap/c;

    .line 21
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yelp/android/ap/a;->b:Lcom/yelp/android/ap/c;

    iget-object v0, v0, Lcom/yelp/android/ap/c;->a:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/yelp/android/ap/a;->b:Lcom/yelp/android/ap/c;

    iget-object v1, p0, Lcom/yelp/android/ap/a;->a:Lcom/path/android/jobqueue/g;

    invoke-interface {v1}, Lcom/path/android/jobqueue/g;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/ap/c;->a:Ljava/lang/Integer;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ap/a;->b:Lcom/yelp/android/ap/c;

    iget-object v0, v0, Lcom/yelp/android/ap/c;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public a(ZLjava/util/Collection;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/ap/a;->b:Lcom/yelp/android/ap/c;

    iget-object v0, v0, Lcom/yelp/android/ap/c;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ap/a;->b:Lcom/yelp/android/ap/c;

    iget-object v0, v0, Lcom/yelp/android/ap/c;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 53
    const/4 v0, 0x0

    .line 60
    :cond_0
    :goto_0
    return v0

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ap/a;->a:Lcom/path/android/jobqueue/g;

    invoke-interface {v0, p1, p2}, Lcom/path/android/jobqueue/g;->a(ZLjava/util/Collection;)I

    move-result v0

    .line 56
    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/yelp/android/ap/a;->a()I

    goto :goto_0
.end method

.method public a(Lcom/path/android/jobqueue/b;)J
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/yelp/android/ap/a;->b:Lcom/yelp/android/ap/c;

    invoke-virtual {v0}, Lcom/yelp/android/ap/c;->a()V

    .line 26
    iget-object v0, p0, Lcom/yelp/android/ap/a;->a:Lcom/path/android/jobqueue/g;

    invoke-interface {v0, p1}, Lcom/path/android/jobqueue/g;->a(Lcom/path/android/jobqueue/b;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Z)Ljava/lang/Long;
    .locals 4

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yelp/android/ap/a;->b:Lcom/yelp/android/ap/c;

    iget-object v0, v0, Lcom/yelp/android/ap/c;->b:Lcom/yelp/android/ap/d;

    if-nez v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/yelp/android/ap/a;->b:Lcom/yelp/android/ap/c;

    new-instance v1, Lcom/yelp/android/ap/d;

    iget-object v2, p0, Lcom/yelp/android/ap/a;->a:Lcom/path/android/jobqueue/g;

    invoke-interface {v2, p1}, Lcom/path/android/jobqueue/g;->a(Z)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/yelp/android/ap/d;-><init>(ZLjava/lang/Long;Lcom/yelp/android/ap/b;)V

    iput-object v1, v0, Lcom/yelp/android/ap/c;->b:Lcom/yelp/android/ap/d;

    .line 87
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ap/a;->b:Lcom/yelp/android/ap/c;

    iget-object v0, v0, Lcom/yelp/android/ap/c;->b:Lcom/yelp/android/ap/d;

    iget-object v0, v0, Lcom/yelp/android/ap/d;->a:Ljava/lang/Long;

    return-object v0

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ap/a;->b:Lcom/yelp/android/ap/c;

    iget-object v0, v0, Lcom/yelp/android/ap/c;->b:Lcom/yelp/android/ap/d;

    invoke-static {v0, p1}, Lcom/yelp/android/ap/d;->a(Lcom/yelp/android/ap/d;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/yelp/android/ap/a;->b:Lcom/yelp/android/ap/c;

    iget-object v0, v0, Lcom/yelp/android/ap/c;->b:Lcom/yelp/android/ap/d;

    iget-object v1, p0, Lcom/yelp/android/ap/a;->a:Lcom/path/android/jobqueue/g;

    invoke-interface {v1, p1}, Lcom/path/android/jobqueue/g;->a(Z)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/yelp/android/ap/d;->a(ZLjava/lang/Long;)V

    goto :goto_0
.end method

.method public b(Lcom/path/android/jobqueue/b;)J
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yelp/android/ap/a;->b:Lcom/yelp/android/ap/c;

    invoke-virtual {v0}, Lcom/yelp/android/ap/c;->a()V

    .line 32
    iget-object v0, p0, Lcom/yelp/android/ap/a;->a:Lcom/path/android/jobqueue/g;

    invoke-interface {v0, p1}, Lcom/path/android/jobqueue/g;->b(Lcom/path/android/jobqueue/b;)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(ZLjava/util/Collection;)Lcom/path/android/jobqueue/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/path/android/jobqueue/b;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yelp/android/ap/a;->b:Lcom/yelp/android/ap/c;

    iget-object v0, v0, Lcom/yelp/android/ap/c;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ap/a;->b:Lcom/yelp/android/ap/c;

    iget-object v0, v0, Lcom/yelp/android/ap/c;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 66
    const/4 v0, 0x0

    .line 77
    :cond_0
    :goto_0
    return-object v0

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ap/a;->a:Lcom/path/android/jobqueue/g;

    invoke-interface {v0, p1, p2}, Lcom/path/android/jobqueue/g;->b(ZLjava/util/Collection;)Lcom/path/android/jobqueue/b;

    move-result-object v0

    .line 70
    if-nez v0, :cond_2

    .line 72
    invoke-virtual {p0}, Lcom/yelp/android/ap/a;->a()I

    goto :goto_0

    .line 73
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ap/a;->b:Lcom/yelp/android/ap/c;

    iget-object v1, v1, Lcom/yelp/android/ap/c;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/yelp/android/ap/a;->b:Lcom/yelp/android/ap/c;

    iget-object v2, v1, Lcom/yelp/android/ap/c;->a:Ljava/lang/Integer;

    iget-object v2, v1, Lcom/yelp/android/ap/c;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/yelp/android/ap/c;->a:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public c(Lcom/path/android/jobqueue/b;)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yelp/android/ap/a;->b:Lcom/yelp/android/ap/c;

    invoke-virtual {v0}, Lcom/yelp/android/ap/c;->a()V

    .line 38
    iget-object v0, p0, Lcom/yelp/android/ap/a;->a:Lcom/path/android/jobqueue/g;

    invoke-interface {v0, p1}, Lcom/path/android/jobqueue/g;->c(Lcom/path/android/jobqueue/b;)V

    .line 39
    return-void
.end method
