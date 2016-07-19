.class public Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView;
.super Lcom/yelp/android/ui/activities/support/WebViewActivity;
.source "ActivityMenuWebView.java"


# instance fields
.field private a:Z

.field private final b:Landroid/view/View$OnClickListener;

.field private final c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;-><init>()V

    .line 132
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView$1;-><init>(Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView;->b:Landroid/view/View$OnClickListener;

    .line 178
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView$2;-><init>(Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView;->c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 7

    .prologue
    .line 54
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->aL()Lcom/yelp/android/serializable/Menu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Menu;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->aL()Lcom/yelp/android/serializable/Menu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Menu;->b()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessMenu:Lcom/yelp/android/analytics/iris/ViewIri;

    sget-object v1, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;->EVENTS:Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v5

    sget-object v6, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;->NONE:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView;->configureIntent(Landroid/content/Intent;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;Ljava/util/EnumSet;Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;)Landroid/content/Intent;

    .line 64
    const-string/jumbo v1, "extra.business"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 65
    const-string/jumbo v1, "extra.biz_dimension"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string/jumbo v1, "extra.search_request_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    return-object v0
.end method


# virtual methods
.method protected getContentViewResourceId()I
    .locals 1

    .prologue
    .line 102
    const v0, 0x7f030045

    return v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/a;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getParametersForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/util/Map;

    move-result-object v0

    .line 108
    sget-object v1, Lcom/yelp/android/appdata/Features;->menu_platform_order_button:Lcom/yelp/android/appdata/Features;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/Features;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    const-string/jumbo v1, "menu_platform_order_button_experiment"

    const-string/jumbo v2, "menu_platform_button_enabled"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :goto_0
    return-object v0

    .line 113
    :cond_0
    const-string/jumbo v1, "menu_platform_order_button_experiment"

    const-string/jumbo v2, "menu_platform_button_disabled"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/high16 v3, -0x80000000

    .line 73
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.business"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    .line 76
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aH()Lcom/yelp/android/serializable/PlatformAction;

    move-result-object v1

    .line 78
    sget-object v0, Lcom/yelp/android/appdata/Features;->menu_platform_order_button:Lcom/yelp/android/appdata/Features;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/Features;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView;->a:Z

    .line 81
    const v0, 0x7f0f01a5

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    .line 83
    invoke-virtual {v1}, Lcom/yelp/android/serializable/PlatformAction;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setText(Ljava/lang/String;)V

    .line 84
    invoke-static {p0}, Lcom/yelp/android/ui/util/t;->a(Landroid/content/Context;)Lcom/yelp/android/ui/util/t;

    move-result-object v2

    invoke-virtual {v1}, Lcom/yelp/android/serializable/PlatformAction;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/yelp/android/ui/util/t;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Lcom/yelp/android/ui/util/u$a;->a(II)Lcom/yelp/android/ui/util/u$a;

    move-result-object v1

    const v2, 0x7f0201f3

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/util/u$a;->b(I)Lcom/yelp/android/ui/util/u$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->a(Lcom/yelp/android/ui/util/u$a;)V

    .line 91
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const v0, 0x7f0f01a4

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView;->c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 98
    :cond_0
    return-void
.end method

.method protected onPageFinished()V
    .locals 2

    .prologue
    .line 122
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->onPageFinished()V

    .line 127
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView;->a:Z

    if-eqz v0, :cond_0

    .line 128
    const v0, 0x7f0f01a4

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 130
    :cond_0
    return-void
.end method
