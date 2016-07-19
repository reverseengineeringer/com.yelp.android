.class final Lcom/google/ads/mediation/a$e;
.super Lcom/google/android/gms/ads/a;

# interfaces
.implements Lcom/google/android/gms/ads/formats/c$a;
.implements Lcom/google/android/gms/ads/formats/d$a;
.implements Lcom/google/android/gms/ads/internal/client/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation


# instance fields
.field final a:Lcom/google/ads/mediation/a;

.field final b:Lcom/yelp/android/bc/h;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/a;Lcom/yelp/android/bc/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/a;-><init>()V

    iput-object p1, p0, Lcom/google/ads/mediation/a$e;->a:Lcom/google/ads/mediation/a;

    iput-object p2, p0, Lcom/google/ads/mediation/a$e;->b:Lcom/yelp/android/bc/h;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/a$e;->b:Lcom/yelp/android/bc/h;

    iget-object v1, p0, Lcom/google/ads/mediation/a$e;->a:Lcom/google/ads/mediation/a;

    invoke-interface {v0, v1, p1}, Lcom/yelp/android/bc/h;->a(Lcom/yelp/android/bc/g;I)V

    return-void
.end method

.method public a(Lcom/google/android/gms/ads/formats/c;)V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/mediation/a$e;->b:Lcom/yelp/android/bc/h;

    iget-object v1, p0, Lcom/google/ads/mediation/a$e;->a:Lcom/google/ads/mediation/a;

    new-instance v2, Lcom/google/ads/mediation/a$a;

    invoke-direct {v2, p1}, Lcom/google/ads/mediation/a$a;-><init>(Lcom/google/android/gms/ads/formats/c;)V

    invoke-interface {v0, v1, v2}, Lcom/yelp/android/bc/h;->a(Lcom/yelp/android/bc/g;Lcom/yelp/android/bc/i;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/ads/formats/d;)V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/mediation/a$e;->b:Lcom/yelp/android/bc/h;

    iget-object v1, p0, Lcom/google/ads/mediation/a$e;->a:Lcom/google/ads/mediation/a;

    new-instance v2, Lcom/google/ads/mediation/a$b;

    invoke-direct {v2, p1}, Lcom/google/ads/mediation/a$b;-><init>(Lcom/google/android/gms/ads/formats/d;)V

    invoke-interface {v0, v1, v2}, Lcom/yelp/android/bc/h;->a(Lcom/yelp/android/bc/g;Lcom/yelp/android/bc/i;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/a$e;->b:Lcom/yelp/android/bc/h;

    iget-object v1, p0, Lcom/google/ads/mediation/a$e;->a:Lcom/google/ads/mediation/a;

    invoke-interface {v0, v1}, Lcom/yelp/android/bc/h;->a(Lcom/yelp/android/bc/g;)V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/a$e;->b:Lcom/yelp/android/bc/h;

    iget-object v1, p0, Lcom/google/ads/mediation/a$e;->a:Lcom/google/ads/mediation/a;

    invoke-interface {v0, v1}, Lcom/yelp/android/bc/h;->b(Lcom/yelp/android/bc/g;)V

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/a$e;->b:Lcom/yelp/android/bc/h;

    iget-object v1, p0, Lcom/google/ads/mediation/a$e;->a:Lcom/google/ads/mediation/a;

    invoke-interface {v0, v1}, Lcom/yelp/android/bc/h;->c(Lcom/yelp/android/bc/g;)V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/a$e;->b:Lcom/yelp/android/bc/h;

    iget-object v1, p0, Lcom/google/ads/mediation/a$e;->a:Lcom/google/ads/mediation/a;

    invoke-interface {v0, v1}, Lcom/yelp/android/bc/h;->d(Lcom/yelp/android/bc/g;)V

    return-void
.end method
