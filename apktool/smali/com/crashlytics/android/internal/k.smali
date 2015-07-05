.class final Lcom/crashlytics/android/internal/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/crashlytics/android/internal/l;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/crashlytics/android/internal/j;)V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 186
    check-cast p1, Lcom/crashlytics/android/internal/l;

    check-cast p2, Lcom/crashlytics/android/internal/l;

    iget-wide v0, p1, Lcom/crashlytics/android/internal/l;->b:J

    iget-wide v2, p2, Lcom/crashlytics/android/internal/l;->b:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
