.class Lcom/yelp/android/ck/e$1;
.super Ljava/lang/Object;
.source "OnLineSettingChange.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ck/e;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ck/e;


# direct methods
.method constructor <init>(Lcom/yelp/android/ck/e;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/yelp/android/ck/e$1;->a:Lcom/yelp/android/ck/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/ck/e$1;->a:Lcom/yelp/android/ck/e;

    invoke-static {v0}, Lcom/yelp/android/ck/e;->a(Lcom/yelp/android/ck/e;)Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->hideLoadingDialog()V

    .line 68
    iget-object v0, p0, Lcom/yelp/android/ck/e$1;->a:Lcom/yelp/android/ck/e;

    invoke-static {v0}, Lcom/yelp/android/ck/e;->a(Lcom/yelp/android/ck/e;)Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ck/e$1;->a:Lcom/yelp/android/ck/e;

    invoke-static {v1}, Lcom/yelp/android/ck/e;->b(Lcom/yelp/android/ck/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(Ljava/lang/String;)V

    .line 69
    return-void
.end method
