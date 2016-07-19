.class Lcom/yelp/android/ui/activities/ActivitySplashLogin$5;
.super Landroid/support/v4/view/ViewPager$h;
.source "ActivitySplashLogin.java"


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
    .line 230
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin$5;->a:Lcom/yelp/android/ui/activities/ActivitySplashLogin;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$h;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 6

    .prologue
    .line 233
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin$5;->a:Lcom/yelp/android/ui/activities/ActivitySplashLogin;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->b(Lcom/yelp/android/ui/activities/ActivitySplashLogin;)[Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin$5;->a:Lcom/yelp/android/ui/activities/ActivitySplashLogin;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin$5;->a:Lcom/yelp/android/ui/activities/ActivitySplashLogin;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->b(Lcom/yelp/android/ui/activities/ActivitySplashLogin;)[Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->getParametersForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 234
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin$5;->a:Lcom/yelp/android/ui/activities/ActivitySplashLogin;

    const v1, 0x7f0f03be

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 235
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin$5;->a:Lcom/yelp/android/ui/activities/ActivitySplashLogin;

    const v2, 0x7f0f03bd

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 236
    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin$5;->a:Lcom/yelp/android/ui/activities/ActivitySplashLogin;

    const v3, 0x7f0f00e5

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 237
    iget-object v3, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin$5;->a:Lcom/yelp/android/ui/activities/ActivitySplashLogin;

    const v4, 0x7f0f03c1

    invoke-virtual {v3, v4}, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 239
    packed-switch p1, :pswitch_data_0

    .line 267
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin$5;->a:Lcom/yelp/android/ui/activities/ActivitySplashLogin;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->c(Lcom/yelp/android/ui/activities/ActivitySplashLogin;)[Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin$5;->a:Lcom/yelp/android/ui/activities/ActivitySplashLogin;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->d(Lcom/yelp/android/ui/activities/ActivitySplashLogin;)Lcom/yelp/android/ui/activities/ActivitySplashLogin$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/ActivitySplashLogin$a;->d()I

    move-result v1

    aget-object v0, v0, v1

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020233

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 269
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin$5;->a:Lcom/yelp/android/ui/activities/ActivitySplashLogin;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->c(Lcom/yelp/android/ui/activities/ActivitySplashLogin;)[Landroid/view/View;

    move-result-object v0

    aget-object v0, v0, p1

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020235

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 271
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin$5;->a:Lcom/yelp/android/ui/activities/ActivitySplashLogin;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->d(Lcom/yelp/android/ui/activities/ActivitySplashLogin;)Lcom/yelp/android/ui/activities/ActivitySplashLogin$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/ActivitySplashLogin$a;->e(I)V

    .line 272
    return-void

    .line 241
    :pswitch_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 242
    sget v4, Lcom/yelp/android/ui/util/av;->c:I

    int-to-long v4, v4

    invoke-static {v1, v4, v5}, Lcom/yelp/android/ui/util/av;->a(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 244
    sget v1, Lcom/yelp/android/ui/util/av;->c:I

    int-to-long v4, v1

    invoke-static {v0, v4, v5}, Lcom/yelp/android/ui/util/av;->a(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 246
    sget v0, Lcom/yelp/android/ui/util/av;->a:I

    int-to-long v0, v0

    invoke-static {v2, v0, v1}, Lcom/yelp/android/ui/util/av;->c(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 248
    sget v0, Lcom/yelp/android/ui/util/av;->a:I

    int-to-long v0, v0

    invoke-static {v3, v0, v1}, Lcom/yelp/android/ui/util/av;->c(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    goto :goto_0

    .line 253
    :pswitch_1
    sget v4, Lcom/yelp/android/ui/util/av;->a:I

    int-to-long v4, v4

    invoke-static {v0, v4, v5}, Lcom/yelp/android/ui/util/av;->c(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 254
    sget v0, Lcom/yelp/android/ui/util/av;->a:I

    int-to-long v4, v0

    invoke-static {v1, v4, v5}, Lcom/yelp/android/ui/util/av;->c(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 255
    sget v0, Lcom/yelp/android/ui/util/av;->c:I

    int-to-long v0, v0

    invoke-static {v3, v0, v1}, Lcom/yelp/android/ui/util/av;->a(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 257
    sget v0, Lcom/yelp/android/ui/util/av;->c:I

    int-to-long v0, v0

    invoke-static {v2, v0, v1}, Lcom/yelp/android/ui/util/av;->a(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    goto :goto_0

    .line 239
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
