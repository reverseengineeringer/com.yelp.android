.class final Lcom/crashlytics/android/core/r$i;
.super Lcom/crashlytics/android/core/r$j;
.source "NativeCrashWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "i"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 155
    new-array v0, v1, [Lcom/crashlytics/android/core/r$j;

    invoke-direct {p0, v1, v0}, Lcom/crashlytics/android/core/r$j;-><init>(I[Lcom/crashlytics/android/core/r$j;)V

    .line 156
    return-void
.end method


# virtual methods
.method public b(Lcom/crashlytics/android/core/CodedOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    return-void
.end method
