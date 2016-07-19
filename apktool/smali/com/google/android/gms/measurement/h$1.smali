.class Lcom/google/android/gms/measurement/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/measurement/h;->a(Lcom/google/android/gms/measurement/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/d;

.field final synthetic b:Lcom/google/android/gms/measurement/h;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/h;Lcom/google/android/gms/measurement/d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/h$1;->b:Lcom/google/android/gms/measurement/h;

    iput-object p2, p0, Lcom/google/android/gms/measurement/h$1;->a:Lcom/google/android/gms/measurement/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/h$1;->a:Lcom/google/android/gms/measurement/d;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/d;->h()Lcom/google/android/gms/measurement/g;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/h$1;->a:Lcom/google/android/gms/measurement/d;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/g;->a(Lcom/google/android/gms/measurement/d;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/h$1;->b:Lcom/google/android/gms/measurement/h;

    invoke-static {v0}, Lcom/google/android/gms/measurement/h;->a(Lcom/google/android/gms/measurement/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/i;

    iget-object v2, p0, Lcom/google/android/gms/measurement/h$1;->a:Lcom/google/android/gms/measurement/d;

    invoke-interface {v0, v2}, Lcom/google/android/gms/measurement/i;->a(Lcom/google/android/gms/measurement/d;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/h$1;->b:Lcom/google/android/gms/measurement/h;

    iget-object v1, p0, Lcom/google/android/gms/measurement/h$1;->a:Lcom/google/android/gms/measurement/d;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/h;->a(Lcom/google/android/gms/measurement/h;Lcom/google/android/gms/measurement/d;)V

    return-void
.end method
