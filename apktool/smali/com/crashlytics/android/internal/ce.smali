.class public interface abstract Lcom/crashlytics/android/internal/ce;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/crashlytics/android/internal/ce;

.field public static final b:Lcom/crashlytics/android/internal/ce;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/crashlytics/android/internal/cf;

    invoke-direct {v0}, Lcom/crashlytics/android/internal/cf;-><init>()V

    sput-object v0, Lcom/crashlytics/android/internal/ce;->a:Lcom/crashlytics/android/internal/ce;

    .line 44
    new-instance v0, Lcom/crashlytics/android/internal/cg;

    invoke-direct {v0}, Lcom/crashlytics/android/internal/cg;-><init>()V

    sput-object v0, Lcom/crashlytics/android/internal/ce;->b:Lcom/crashlytics/android/internal/ce;

    return-void
.end method
