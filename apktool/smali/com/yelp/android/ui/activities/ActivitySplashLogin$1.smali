.class Lcom/yelp/android/ui/activities/ActivitySplashLogin$1;
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
    .line 188
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin$1;->a:Lcom/yelp/android/ui/activities/ActivitySplashLogin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 191
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->LoginSplashHaveNoAccount:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 192
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin$1;->a:Lcom/yelp/android/ui/activities/ActivitySplashLogin;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin$1;->a:Lcom/yelp/android/ui/activities/ActivitySplashLogin;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->b(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x3f8

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->startActivityForResult(Landroid/content/Intent;I)V

    .line 195
    return-void
.end method
