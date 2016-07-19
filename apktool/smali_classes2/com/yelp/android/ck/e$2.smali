.class Lcom/yelp/android/ck/e$2;
.super Ljava/lang/Object;
.source "OnLineSettingChange.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 73
    iput-object p1, p0, Lcom/yelp/android/ck/e$2;->a:Lcom/yelp/android/ck/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 76
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/yelp/android/ck/e$2;->a:Lcom/yelp/android/ck/e;

    invoke-static {v0}, Lcom/yelp/android/ck/e;->c(Lcom/yelp/android/ck/e;)V

    .line 82
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ck/e$2;->a:Lcom/yelp/android/ck/e;

    invoke-static {v0}, Lcom/yelp/android/ck/e;->a(Lcom/yelp/android/ck/e;)Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->hideLoadingDialog()V

    .line 80
    iget-object v0, p0, Lcom/yelp/android/ck/e$2;->a:Lcom/yelp/android/ck/e;

    invoke-static {v0}, Lcom/yelp/android/ck/e;->a(Lcom/yelp/android/ck/e;)Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ck/e$2;->a:Lcom/yelp/android/ck/e;

    invoke-static {v1}, Lcom/yelp/android/ck/e;->b(Lcom/yelp/android/ck/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
