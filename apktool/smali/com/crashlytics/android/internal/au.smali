.class final Lcom/crashlytics/android/internal/au;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/crashlytics/android/internal/at;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/crashlytics/android/internal/at;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/crashlytics/android/internal/at;-><init>(B)V

    sput-object v0, Lcom/crashlytics/android/internal/au;->a:Lcom/crashlytics/android/internal/at;

    return-void
.end method

.method static synthetic a()Lcom/crashlytics/android/internal/at;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/crashlytics/android/internal/au;->a:Lcom/crashlytics/android/internal/at;

    return-object v0
.end method
