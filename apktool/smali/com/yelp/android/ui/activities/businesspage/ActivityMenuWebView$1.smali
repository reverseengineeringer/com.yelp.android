.class Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView$1;
.super Ljava/lang/Object;
.source "ActivityMenuWebView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView$1;->a:Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14

    .prologue
    .line 136
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView$1;->a:Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.business"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/yelp/android/serializable/YelpBusiness;

    .line 137
    invoke-virtual {v12}, Lcom/yelp/android/serializable/YelpBusiness;->aH()Lcom/yelp/android/serializable/PlatformAction;

    move-result-object v8

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 140
    const-string/jumbo v1, "id"

    invoke-virtual {v12}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView$1;->a:Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "extra.biz_dimension"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 142
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    const-string/jumbo v1, "biz_dimension"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView$1;->a:Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "extra.search_request_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 146
    invoke-static {v11}, Lcom/yelp/android/util/StringUtils;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 147
    const-string/jumbo v1, "search_request_id"

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_1
    const-string/jumbo v1, "supported_vertical_types"

    invoke-virtual {v8}, Lcom/yelp/android/serializable/PlatformAction;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessMenuPlatformOpen:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 154
    iget-object v13, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView$1;->a:Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView$1;->a:Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v8}, Lcom/yelp/android/serializable/PlatformAction;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView$1;->a:Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView;

    const v3, 0x7f070379

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/analytics/iris/ViewIri;->OpenURL:Lcom/yelp/android/analytics/iris/ViewIri;

    sget-object v4, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;->EVENTS:Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    invoke-static {v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    sget-object v5, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;->FINISH_ON_UP:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    const v6, 0x7f070693

    invoke-virtual {v8}, Lcom/yelp/android/serializable/PlatformAction;->b()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "source_menu_page"

    invoke-virtual {v12}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v12

    invoke-static/range {v0 .. v12}, Lcom/yelp/android/ui/activities/support/PlatformWebViewActivity;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;Ljava/util/EnumSet;Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView;->startActivity(Landroid/content/Intent;)V

    .line 169
    return-void
.end method
