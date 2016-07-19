.class public Lcom/yelp/android/bl/a;
.super Ljava/lang/Object;
.source "CachedJobQueue.java"

# interfaces
.implements Lcom/path/android/jobqueue/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/bl/a$1;,
        Lcom/yelp/android/bl/a$a;
    }
.end annotation


# instance fields
.field a:Lcom/path/android/jobqueue/c;

.field private b:Lcom/yelp/android/bl/a$a;


# direct methods
.method public constructor <init>(Lcom/path/android/jobqueue/c;)V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/yelp/android/bl/a;->a:Lcom/path/android/jobqueue/c;

    .line 24
    new-instance v0, Lcom/yelp/android/bl/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yelp/android/bl/a$a;-><init>(Lcom/yelp/android/bl/a$1;)V

    iput-object v0, p0, Lcom/yelp/android/bl/a;->b:Lcom/yelp/android/bl/a$a;

    .line 25
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yelp/android/bl/a;->b:Lcom/yelp/android/bl/a$a;

    iget-object v0, v0, Lcom/yelp/android/bl/a$a;->a:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/yelp/android/bl/a;->b:Lcom/yelp/android/bl/a$a;

    iget-object v1, p0, Lcom/yelp/android/bl/a;->a:Lcom/path/android/jobqueue/c;

    invoke-interface {v1}, Lcom/path/android/jobqueue/c;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/bl/a$a;->a:Ljava/lang/Integer;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/bl/a;->b:Lcom/yelp/android/bl/a$a;

    iget-object v0, v0, Lcom/yelp/android/bl/a$a;->a:Ljava/lang/Integer;

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
    .line 55
    iget-object v0, p0, Lcom/yelp/android/bl/a;->b:Lcom/yelp/android/bl/a$a;

    iget-object v0, v0, Lcom/yelp/android/bl/a$a;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/bl/a;->b:Lcom/yelp/android/bl/a$a;

    iget-object v0, v0, Lcom/yelp/android/bl/a$a;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 57
    const/4 v0, 0x0

    .line 64
    :cond_0
    :goto_0
    return v0

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/bl/a;->a:Lcom/path/android/jobqueue/c;

    invoke-interface {v0, p1, p2}, Lcom/path/android/jobqueue/c;->a(ZLjava/util/Collection;)I

    move-result v0

    .line 60
    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/yelp/android/bl/a;->a()I

    goto :goto_0
.end method

.method public a(Lcom/path/android/jobqueue/a;)J
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yelp/android/bl/a;->b:Lcom/yelp/android/bl/a$a;

    invoke-virtual {v0}, Lcom/yelp/android/bl/a$a;->a()V

    .line 30
    iget-object v0, p0, Lcom/yelp/android/bl/a;->a:Lcom/path/android/jobqueue/c;

    invoke-interface {v0, p1}, Lcom/path/android/jobqueue/c;->a(Lcom/path/android/jobqueue/a;)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(Lcom/path/android/jobqueue/a;)J
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/yelp/android/bl/a;->b:Lcom/yelp/android/bl/a$a;

    invoke-virtual {v0}, Lcom/yelp/android/bl/a$a;->a()V

    .line 36
    iget-object v0, p0, Lcom/yelp/android/bl/a;->a:Lcom/path/android/jobqueue/c;

    invoke-interface {v0, p1}, Lcom/path/android/jobqueue/c;->b(Lcom/path/android/jobqueue/a;)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(ZLjava/util/Collection;)Lcom/path/android/jobqueue/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/path/android/jobqueue/a;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yelp/android/bl/a;->b:Lcom/yelp/android/bl/a$a;

    iget-object v0, v0, Lcom/yelp/android/bl/a$a;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/bl/a;->b:Lcom/yelp/android/bl/a$a;

    iget-object v0, v0, Lcom/yelp/android/bl/a$a;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 70
    const/4 v0, 0x0

    .line 81
    :cond_0
    :goto_0
    return-object v0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/bl/a;->a:Lcom/path/android/jobqueue/c;

    invoke-interface {v0, p1, p2}, Lcom/path/android/jobqueue/c;->b(ZLjava/util/Collection;)Lcom/path/android/jobqueue/a;

    move-result-object v0

    .line 74
    if-nez v0, :cond_2

    .line 76
    invoke-virtual {p0}, Lcom/yelp/android/bl/a;->a()I

    goto :goto_0

    .line 77
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/bl/a;->b:Lcom/yelp/android/bl/a$a;

    iget-object v1, v1, Lcom/yelp/android/bl/a$a;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/yelp/android/bl/a;->b:Lcom/yelp/android/bl/a$a;

    iget-object v2, v1, Lcom/yelp/android/bl/a$a;->a:Ljava/lang/Integer;

    iget-object v2, v1, Lcom/yelp/android/bl/a$a;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/yelp/android/bl/a$a;->a:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public c(ZLjava/util/Collection;)Ljava/lang/Long;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/yelp/android/bl/a;->b:Lcom/yelp/android/bl/a$a;

    iget-object v0, v0, Lcom/yelp/android/bl/a$a;->b:Lcom/yelp/android/bl/a$a$a;

    if-nez v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/yelp/android/bl/a;->b:Lcom/yelp/android/bl/a$a;

    new-instance v1, Lcom/yelp/android/bl/a$a$a;

    iget-object v2, p0, Lcom/yelp/android/bl/a;->a:Lcom/path/android/jobqueue/c;

    invoke-interface {v2, p1, p2}, Lcom/path/android/jobqueue/c;->c(ZLjava/util/Collection;)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, p2, v3}, Lcom/yelp/android/bl/a$a$a;-><init>(ZLjava/lang/Long;Ljava/util/Collection;Lcom/yelp/android/bl/a$1;)V

    iput-object v1, v0, Lcom/yelp/android/bl/a$a;->b:Lcom/yelp/android/bl/a$a$a;

    .line 93
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/bl/a;->b:Lcom/yelp/android/bl/a$a;

    iget-object v0, v0, Lcom/yelp/android/bl/a$a;->b:Lcom/yelp/android/bl/a$a$a;

    iget-object v0, v0, Lcom/yelp/android/bl/a$a$a;->a:Ljava/lang/Long;

    return-object v0

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/bl/a;->b:Lcom/yelp/android/bl/a$a;

    iget-object v0, v0, Lcom/yelp/android/bl/a$a;->b:Lcom/yelp/android/bl/a$a$a;

    invoke-static {v0, p1, p2}, Lcom/yelp/android/bl/a$a$a;->a(Lcom/yelp/android/bl/a$a$a;ZLjava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/yelp/android/bl/a;->b:Lcom/yelp/android/bl/a$a;

    iget-object v0, v0, Lcom/yelp/android/bl/a$a;->b:Lcom/yelp/android/bl/a$a$a;

    iget-object v1, p0, Lcom/yelp/android/bl/a;->a:Lcom/path/android/jobqueue/c;

    invoke-interface {v1, p1, p2}, Lcom/path/android/jobqueue/c;->c(ZLjava/util/Collection;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/yelp/android/bl/a$a$a;->a(ZLjava/lang/Long;Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public c(Lcom/path/android/jobqueue/a;)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yelp/android/bl/a;->b:Lcom/yelp/android/bl/a$a;

    invoke-virtual {v0}, Lcom/yelp/android/bl/a$a;->a()V

    .line 42
    iget-object v0, p0, Lcom/yelp/android/bl/a;->a:Lcom/path/android/jobqueue/c;

    invoke-interface {v0, p1}, Lcom/path/android/jobqueue/c;->c(Lcom/path/android/jobqueue/a;)V

    .line 43
    return-void
.end method
