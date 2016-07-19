.class public final Lcom/google/android/gms/internal/dn;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fv;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/dn$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/gms/internal/di;

.field public final c:Lcom/google/android/gms/internal/dt;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/google/android/gms/internal/dl;

.field public final f:Lcom/google/android/gms/internal/dw;


# direct methods
.method public constructor <init>(I)V
    .locals 7

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move v5, p1

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/dn;-><init>(Lcom/google/android/gms/internal/di;Lcom/google/android/gms/internal/dt;Ljava/lang/String;Lcom/google/android/gms/internal/dl;ILcom/google/android/gms/internal/dw;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/di;Lcom/google/android/gms/internal/dt;Ljava/lang/String;Lcom/google/android/gms/internal/dl;ILcom/google/android/gms/internal/dw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/dn;->b:Lcom/google/android/gms/internal/di;

    iput-object p2, p0, Lcom/google/android/gms/internal/dn;->c:Lcom/google/android/gms/internal/dt;

    iput-object p3, p0, Lcom/google/android/gms/internal/dn;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/dn;->e:Lcom/google/android/gms/internal/dl;

    iput p5, p0, Lcom/google/android/gms/internal/dn;->a:I

    iput-object p6, p0, Lcom/google/android/gms/internal/dn;->f:Lcom/google/android/gms/internal/dw;

    return-void
.end method
