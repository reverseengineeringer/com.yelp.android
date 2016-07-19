.class Lcom/google/android/gms/measurement/internal/aa$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/measurement/internal/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/measurement/internal/aa$a;

.field private final b:I

.field private final c:Ljava/lang/Throwable;

.field private final d:[B

.field private final e:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/aa$a;ILjava/lang/Throwable;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzz(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/aa$b;->a:Lcom/google/android/gms/measurement/internal/aa$a;

    iput p3, p0, Lcom/google/android/gms/measurement/internal/aa$b;->b:I

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/aa$b;->c:Ljava/lang/Throwable;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/aa$b;->d:[B

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/aa$b;->e:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/aa$a;ILjava/lang/Throwable;[BLcom/google/android/gms/measurement/internal/aa$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/measurement/internal/aa$b;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/aa$a;ILjava/lang/Throwable;[B)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/aa$b;->a:Lcom/google/android/gms/measurement/internal/aa$a;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/aa$b;->e:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/measurement/internal/aa$b;->b:I

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/aa$b;->c:Ljava/lang/Throwable;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/aa$b;->d:[B

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/aa$a;->a(Ljava/lang/String;ILjava/lang/Throwable;[B)V

    return-void
.end method
