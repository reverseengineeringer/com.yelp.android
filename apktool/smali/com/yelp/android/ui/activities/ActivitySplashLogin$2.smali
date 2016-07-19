.class Lcom/yelp/android/ui/activities/ActivitySplashLogin$2;
.super Ljava/lang/Object;
.source "ActivitySplashLogin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/ActivitySplashLogin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivitySplashLogin;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivitySplashLogin;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin$2;->a:Lcom/yelp/android/ui/activities/ActivitySplashLogin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 202
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->LoginSplashHaveAccount:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 203
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin$2;->a:Lcom/yelp/android/ui/activities/ActivitySplashLogin;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 204
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 205
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin$2;->a:Lcom/yelp/android/ui/activities/ActivitySplashLogin;

    const/16 v2, 0x418

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->startActivityForResult(Landroid/content/Intent;I)V

    .line 206
    return-void
.end method
