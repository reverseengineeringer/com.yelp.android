.class Lcom/crashlytics/android/core/e$7$3;
.super Ljava/lang/Object;
.source "CrashlyticsCore.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/e$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/crashlytics/android/core/e$7;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/e$7;)V
    .locals 0

    .prologue
    .line 992
    iput-object p1, p0, Lcom/crashlytics/android/core/e$7$3;->a:Lcom/crashlytics/android/core/e$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 995
    iget-object v0, p0, Lcom/crashlytics/android/core/e$7$3;->a:Lcom/crashlytics/android/core/e$7;

    iget-object v0, v0, Lcom/crashlytics/android/core/e$7;->e:Lcom/crashlytics/android/core/e;

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/e;->a(Z)V

    .line 996
    iget-object v0, p0, Lcom/crashlytics/android/core/e$7$3;->a:Lcom/crashlytics/android/core/e$7;

    iget-object v0, v0, Lcom/crashlytics/android/core/e$7;->b:Lcom/crashlytics/android/core/e$b;

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/e$b;->a(Z)V

    .line 997
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 998
    return-void
.end method
