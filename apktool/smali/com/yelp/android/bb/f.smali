.class public Lcom/yelp/android/bb/f;
.super Lcom/yelp/android/bb/c$a;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fv;
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/be/b;


# direct methods
.method public constructor <init>(Lcom/yelp/android/be/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/yelp/android/bb/c$a;-><init>()V

    iput-object p1, p0, Lcom/yelp/android/bb/f;->a:Lcom/yelp/android/be/b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/yelp/android/bb/f;->a:Lcom/yelp/android/be/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/bb/f;->a:Lcom/yelp/android/be/b;

    invoke-interface {v0}, Lcom/yelp/android/be/b;->a()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/yelp/android/bb/f;->a:Lcom/yelp/android/be/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/bb/f;->a:Lcom/yelp/android/be/b;

    invoke-interface {v0, p1}, Lcom/yelp/android/be/b;->a(I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/yelp/android/bb/a;)V
    .locals 2

    iget-object v0, p0, Lcom/yelp/android/bb/f;->a:Lcom/yelp/android/be/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/bb/f;->a:Lcom/yelp/android/be/b;

    new-instance v1, Lcom/yelp/android/bb/d;

    invoke-direct {v1, p1}, Lcom/yelp/android/bb/d;-><init>(Lcom/yelp/android/bb/a;)V

    invoke-interface {v0, v1}, Lcom/yelp/android/be/b;->a(Lcom/yelp/android/be/a;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/yelp/android/bb/f;->a:Lcom/yelp/android/be/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/bb/f;->a:Lcom/yelp/android/be/b;

    invoke-interface {v0}, Lcom/yelp/android/be/b;->b()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/yelp/android/bb/f;->a:Lcom/yelp/android/be/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/bb/f;->a:Lcom/yelp/android/be/b;

    invoke-interface {v0}, Lcom/yelp/android/be/b;->c()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/yelp/android/bb/f;->a:Lcom/yelp/android/be/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/bb/f;->a:Lcom/yelp/android/be/b;

    invoke-interface {v0}, Lcom/yelp/android/be/b;->d()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/yelp/android/bb/f;->a:Lcom/yelp/android/be/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/bb/f;->a:Lcom/yelp/android/be/b;

    invoke-interface {v0}, Lcom/yelp/android/be/b;->e()V

    :cond_0
    return-void
.end method
