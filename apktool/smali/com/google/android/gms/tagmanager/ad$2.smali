.class Lcom/google/android/gms/tagmanager/ad$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/ad;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/tagmanager/ad;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/ad;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/ad$2;->a:Lcom/google/android/gms/tagmanager/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ad$2;->a:Lcom/google/android/gms/tagmanager/ad;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ad;->a(Lcom/google/android/gms/tagmanager/ad;)Lcom/google/android/gms/tagmanager/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/j;->a()V

    return-void
.end method
