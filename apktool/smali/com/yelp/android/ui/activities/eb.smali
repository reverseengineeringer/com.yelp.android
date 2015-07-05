.class Lcom/yelp/android/ui/activities/eb;
.super Ljava/lang/Object;
.source "ActivitySplashLogin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivitySplashLogin;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivitySplashLogin;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/yelp/android/ui/activities/eb;->a:Lcom/yelp/android/ui/activities/ActivitySplashLogin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 79
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->LoginSplashHaveAccount:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 80
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 81
    iget-object v1, p0, Lcom/yelp/android/ui/activities/eb;->a:Lcom/yelp/android/ui/activities/ActivitySplashLogin;

    const-class v2, Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 82
    const-string/jumbo v1, "com.yelp.android.ui.ActivityLogin.showSuccessDlgOnCompletion"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 83
    const-string/jumbo v1, "from_splash"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 84
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 85
    iget-object v1, p0, Lcom/yelp/android/ui/activities/eb;->a:Lcom/yelp/android/ui/activities/ActivitySplashLogin;

    const/16 v2, 0x413

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->startActivityForResult(Landroid/content/Intent;I)V

    .line 86
    return-void
.end method
