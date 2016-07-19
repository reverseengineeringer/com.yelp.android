.class public final Lcom/google/android/gms/measurement/internal/ad$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/measurement/internal/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/ad;

.field private final b:Ljava/lang/String;

.field private final c:Z

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/ad;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ad$a;->a:Lcom/google/android/gms/measurement/internal/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzcM(Ljava/lang/String;)Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/ad$a;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/measurement/internal/ad$a;->c:Z

    return-void
.end method

.method private b()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ad$a;->d:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ad$a;->d:Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ad$a;->a:Lcom/google/android/gms/measurement/internal/ad;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/ad;->a(Lcom/google/android/gms/measurement/internal/ad;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ad$a;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/ad$a;->c:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ad$a;->e:Z

    goto :goto_0
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ad$a;->a:Lcom/google/android/gms/measurement/internal/ad;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/ad;->a(Lcom/google/android/gms/measurement/internal/ad;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ad$a;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/ad$a;->e:Z

    return-void
.end method

.method public a()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/ad$a;->b()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ad$a;->e:Z

    return v0
.end method
