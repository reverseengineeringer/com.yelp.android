.class Lcom/google/android/gms/maps/c$4;
.super Lcom/yelp/android/bj/t$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/c$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/c$b;

.field final synthetic b:Lcom/google/android/gms/maps/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/c$b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/c$4;->b:Lcom/google/android/gms/maps/c;

    iput-object p2, p0, Lcom/google/android/gms/maps/c$4;->a:Lcom/google/android/gms/maps/c$b;

    invoke-direct {p0}, Lcom/yelp/android/bj/t$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/bk/f;)Lcom/google/android/gms/dynamic/c;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/c$4;->a:Lcom/google/android/gms/maps/c$b;

    new-instance v1, Lcom/google/android/gms/maps/model/c;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/c;-><init>(Lcom/yelp/android/bk/f;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/c$b;->a(Lcom/google/android/gms/maps/model/c;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/c;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/yelp/android/bk/f;)Lcom/google/android/gms/dynamic/c;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/c$4;->a:Lcom/google/android/gms/maps/c$b;

    new-instance v1, Lcom/google/android/gms/maps/model/c;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/c;-><init>(Lcom/yelp/android/bk/f;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/c$b;->b(Lcom/google/android/gms/maps/model/c;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/c;

    move-result-object v0

    return-object v0
.end method
