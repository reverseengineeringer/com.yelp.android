.class Lcom/google/android/gms/maps/c$3;
.super Lcom/yelp/android/bj/x$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/c$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/c$d;

.field final synthetic b:Lcom/google/android/gms/maps/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/c$d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/c$3;->b:Lcom/google/android/gms/maps/c;

    iput-object p2, p0, Lcom/google/android/gms/maps/c$3;->a:Lcom/google/android/gms/maps/c$d;

    invoke-direct {p0}, Lcom/yelp/android/bj/x$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/bk/f;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/c$3;->a:Lcom/google/android/gms/maps/c$d;

    new-instance v1, Lcom/google/android/gms/maps/model/c;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/c;-><init>(Lcom/yelp/android/bk/f;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/c$d;->c(Lcom/google/android/gms/maps/model/c;)V

    return-void
.end method
