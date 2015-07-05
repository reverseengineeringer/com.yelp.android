.class final Lcom/crashlytics/android/internal/bm;
.super Lcom/crashlytics/android/internal/bc;
.source "SourceFile"


# instance fields
.field private synthetic a:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/internal/bl;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 41
    iput-object p2, p0, Lcom/crashlytics/android/internal/bm;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/crashlytics/android/internal/bc;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/crashlytics/android/internal/bm;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 45
    return-void
.end method
