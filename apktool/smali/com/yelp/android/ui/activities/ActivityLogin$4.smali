.class Lcom/yelp/android/ui/activities/ActivityLogin$4;
.super Ljava/lang/Object;
.source "ActivityLogin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/ActivityLogin;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityLogin;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityLogin;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityLogin$4;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 408
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin$4;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "signup_from_review"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 413
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 414
    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityLogin$4;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    const-class v3, Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 415
    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 416
    const-string/jumbo v2, "extra.show_skip_button"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 417
    const-string/jumbo v2, "signup_from_review"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 420
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin$4;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityLogin;->startActivityForResult(Landroid/content/Intent;I)V

    .line 421
    return-void
.end method
