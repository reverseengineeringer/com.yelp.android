.class Lcom/yelp/android/ui/activities/ActivitySplashLogin$4;
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
    .line 222
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin$4;->a:Lcom/yelp/android/ui/activities/ActivitySplashLogin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 225
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin$4;->a:Lcom/yelp/android/ui/activities/ActivitySplashLogin;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->a(Lcom/yelp/android/ui/activities/ActivitySplashLogin;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin$4;->a:Lcom/yelp/android/ui/activities/ActivitySplashLogin;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->a(Lcom/yelp/android/ui/activities/ActivitySplashLogin;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->a(IZ)V

    .line 226
    return-void
.end method
