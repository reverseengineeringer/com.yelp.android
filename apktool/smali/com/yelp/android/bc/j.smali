.class public abstract Lcom/yelp/android/bc/j;
.super Lcom/yelp/android/bc/i;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/ads/formats/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Lcom/google/android/gms/ads/formats/a$a;

.field private h:Ljava/lang/String;

.field private i:D

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/yelp/android/bc/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(D)V
    .locals 1

    iput-wide p1, p0, Lcom/yelp/android/bc/j;->i:D

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/formats/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/yelp/android/bc/j;->g:Lcom/google/android/gms/ads/formats/a$a;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yelp/android/bc/j;->d:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/ads/formats/a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yelp/android/bc/j;->e:Ljava/util/List;

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yelp/android/bc/j;->f:Ljava/lang/String;

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yelp/android/bc/j;->h:Ljava/lang/String;

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yelp/android/bc/j;->j:Ljava/lang/String;

    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yelp/android/bc/j;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yelp/android/bc/j;->k:Ljava/lang/String;

    return-void
.end method

.method public final f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/ads/formats/a$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/yelp/android/bc/j;->e:Ljava/util/List;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yelp/android/bc/j;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Lcom/google/android/gms/ads/formats/a$a;
    .locals 1

    iget-object v0, p0, Lcom/yelp/android/bc/j;->g:Lcom/google/android/gms/ads/formats/a$a;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yelp/android/bc/j;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final j()D
    .locals 2

    iget-wide v0, p0, Lcom/yelp/android/bc/j;->i:D

    return-wide v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yelp/android/bc/j;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yelp/android/bc/j;->k:Ljava/lang/String;

    return-object v0
.end method
