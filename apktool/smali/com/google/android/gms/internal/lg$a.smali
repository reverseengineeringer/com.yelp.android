.class public final Lcom/google/android/gms/internal/lg$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/lg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/internal/lg;
    .locals 8

    new-instance v0, Lcom/google/android/gms/internal/lg;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/lg$a;->a:Z

    iget-boolean v2, p0, Lcom/google/android/gms/internal/lg$a;->b:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/lg$a;->c:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/google/android/gms/internal/lg$a;->d:Z

    iget-object v5, p0, Lcom/google/android/gms/internal/lg$a;->e:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/google/android/gms/internal/lg$a;->f:Z

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/lg;-><init>(ZZLjava/lang/String;ZLjava/lang/String;ZLcom/google/android/gms/internal/lg$1;)V

    return-object v0
.end method
