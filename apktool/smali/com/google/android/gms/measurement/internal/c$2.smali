.class Lcom/google/android/gms/measurement/internal/c$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/measurement/internal/c;->a(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:Landroid/os/Bundle;

.field final synthetic e:Z

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/google/android/gms/measurement/internal/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/c;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/c$2;->g:Lcom/google/android/gms/measurement/internal/c;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/c$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/c$2;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/c$2;->c:J

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/c$2;->d:Landroid/os/Bundle;

    iput-boolean p7, p0, Lcom/google/android/gms/measurement/internal/c$2;->e:Z

    iput-object p8, p0, Lcom/google/android/gms/measurement/internal/c$2;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/c$2;->g:Lcom/google/android/gms/measurement/internal/c;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/c$2;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/c$2;->b:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/c$2;->c:J

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/c$2;->d:Landroid/os/Bundle;

    iget-boolean v7, p0, Lcom/google/android/gms/measurement/internal/c$2;->e:Z

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/c$2;->f:Ljava/lang/String;

    invoke-static/range {v1 .. v8}, Lcom/google/android/gms/measurement/internal/c;->a(Lcom/google/android/gms/measurement/internal/c;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZLjava/lang/String;)V

    return-void
.end method
