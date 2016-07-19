.class Lcom/google/android/gms/internal/hi$c;
.super Lcom/google/android/gms/internal/hp;

# interfaces
.implements Lcom/google/android/gms/internal/jc$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/hi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/hp",
        "<TT;>;",
        "Lcom/google/android/gms/internal/jc$b",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/hi;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/hi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/hi$c;->a:Lcom/google/android/gms/internal/hi;

    invoke-direct {p0}, Lcom/google/android/gms/internal/hp;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/hi;Lcom/google/android/gms/internal/hi$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/hi$c;-><init>(Lcom/google/android/gms/internal/hi;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/hp;->b(Ljava/lang/Object;)V

    return-void
.end method
