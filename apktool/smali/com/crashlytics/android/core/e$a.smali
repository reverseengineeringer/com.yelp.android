.class public Lcom/crashlytics/android/core/e$a;
.super Ljava/lang/Object;
.source "CrashlyticsCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:F

.field private b:Lcom/crashlytics/android/core/g;

.field private c:Lcom/crashlytics/android/core/s;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/crashlytics/android/core/e$a;->a:F

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/crashlytics/android/core/e$a;->d:Z

    return-void
.end method


# virtual methods
.method public a(Z)Lcom/crashlytics/android/core/e$a;
    .locals 0

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/crashlytics/android/core/e$a;->d:Z

    .line 179
    return-object p0
.end method

.method public a()Lcom/crashlytics/android/core/e;
    .locals 5

    .prologue
    .line 183
    iget v0, p0, Lcom/crashlytics/android/core/e$a;->a:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 184
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/crashlytics/android/core/e$a;->a:F

    .line 186
    :cond_0
    new-instance v0, Lcom/crashlytics/android/core/e;

    iget v1, p0, Lcom/crashlytics/android/core/e$a;->a:F

    iget-object v2, p0, Lcom/crashlytics/android/core/e$a;->b:Lcom/crashlytics/android/core/g;

    iget-object v3, p0, Lcom/crashlytics/android/core/e$a;->c:Lcom/crashlytics/android/core/s;

    iget-boolean v4, p0, Lcom/crashlytics/android/core/e$a;->d:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/crashlytics/android/core/e;-><init>(FLcom/crashlytics/android/core/g;Lcom/crashlytics/android/core/s;Z)V

    return-object v0
.end method
